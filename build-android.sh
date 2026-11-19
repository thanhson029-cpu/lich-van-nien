#!/usr/bin/env bash
# Tự tạo project Android (WebView) quanh index.html rồi build APK.
# GitHub Actions chạy file này; trên máy có Android SDK cũng chạy được: bash build-android.sh
set -euo pipefail
P=android-app
rm -rf "$P"
mkdir -p "$P/app/src/main/assets" "$P/app/src/main/java/vn/lichvannien" \
  "$P/app/src/main/res/mipmap-anydpi-v26" "$P/app/src/main/res/drawable" "$P/app/src/main/res/values"
cp index.html "$P/app/src/main/assets/index.html"
echo "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" | base64 -d > "$P/app/release.keystore"
cd "$P"

cat > settings.gradle <<'EOF'
pluginManagement { repositories { google(); mavenCentral(); gradlePluginPortal() } }
dependencyResolutionManagement {
  repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
  repositories { google(); mavenCentral() }
}
rootProject.name = "LichVanNien"
include ':app'
EOF

cat > build.gradle <<'EOF'
plugins { id 'com.android.application' version '8.5.2' apply false }
EOF

cat > gradle.properties <<'EOF'
org.gradle.jvmargs=-Xmx2g
android.useAndroidX=false
EOF

cat > app/build.gradle <<'EOF'
plugins { id 'com.android.application' }
def run = (System.getenv("GITHUB_RUN_NUMBER") ?: "1").toInteger()
android {
  namespace 'vn.lichvannien'
  compileSdk 34
  defaultConfig {
    applicationId "vn.lichvannien.app"
    minSdk 26
    targetSdk 34
    versionCode run
    versionName "1." + run
  }
  signingConfigs {
    rel {
      storeFile file("release.keystore")
      storePassword "lichvannien"
      keyAlias "lvn"
      keyPassword "lichvannien"
    }
  }
  buildTypes {
    release { minifyEnabled false; signingConfig signingConfigs.rel }
  }
  lint { checkReleaseBuilds false; abortOnError false }
}
EOF

cat > app/src/main/AndroidManifest.xml <<'EOF'
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
  <uses-permission android:name="android.permission.INTERNET" />
  <application
      android:label="Lịch Vạn Niên"
      android:icon="@mipmap/ic_launcher"
      android:roundIcon="@mipmap/ic_launcher"
      android:theme="@style/AppTheme"
      android:allowBackup="true">
    <activity
        android:name=".MainActivity"
        android:exported="true"
        android:configChanges="orientation|screenSize|screenLayout|keyboardHidden|uiMode"
        android:windowSoftInputMode="adjustResize">
      <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
      </intent-filter>
    </activity>
  </application>
</manifest>
EOF

cat > app/src/main/res/values/styles.xml <<'EOF'
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <color name="bg">#F7F1E8</color>
  <color name="ic_bg">#B3261E</color>
  <style name="AppTheme" parent="android:Theme.Material.Light.NoActionBar">
    <item name="android:statusBarColor">#B3261E</item>
    <item name="android:windowBackground">@color/bg</item>
  </style>
</resources>
EOF

cat > app/src/main/res/mipmap-anydpi-v26/ic_launcher.xml <<'EOF'
<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
  <background android:drawable="@color/ic_bg" />
  <foreground android:drawable="@drawable/ic_fg" />
</adaptive-icon>
EOF

cat > app/src/main/res/drawable/ic_fg.xml <<'EOF'
<?xml version="1.0" encoding="utf-8"?>
<vector xmlns:android="http://schemas.android.com/apk/res/android"
    android:width="108dp" android:height="108dp"
    android:viewportWidth="108" android:viewportHeight="108">
  <path android:fillColor="#FFFFFF"
      android:pathData="M38,38h32a4,4 0,0 1,4 4v28a4,4 0,0 1,-4 4h-32a4,4 0,0 1,-4 -4v-28a4,4 0,0 1,4 -4z" />
  <path android:fillColor="#F6E7C4"
      android:pathData="M38,38h32a4,4 0,0 1,4 4v6h-40v-6a4,4 0,0 1,4 -4z" />
  <path android:fillColor="#FFFFFF" android:pathData="M43,33h3v9h-3z M62,33h3v9h-3z" />
  <path android:fillColor="#B3261E"
      android:pathData="M40,54h6v5h-6z M51,54h6v5h-6z M62,54h6v5h-6z M40,63h6v5h-6z M51,63h6v5h-6z" />
  <path android:fillColor="#C9962B" android:pathData="M62,63h6v5h-6z" />
</vector>
EOF

cat > app/src/main/java/vn/lichvannien/MainActivity.java <<'EOF'
package vn.lichvannien;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class MainActivity extends Activity {
  private static final int PICK_FILE = 1;
  private WebView web;
  private ValueCallback<Uri[]> fileCallback;

  @Override
  protected void onCreate(Bundle state) {
    super.onCreate(state);
    getWindow().setStatusBarColor(Color.parseColor("#B3261E"));
    web = new WebView(this);
    setContentView(web);

    WebSettings s = web.getSettings();
    s.setJavaScriptEnabled(true);
    s.setDomStorageEnabled(true);   // để lưu sự kiện (localStorage)
    s.setTextZoom(100);
    web.addJavascriptInterface(new Bridge(), "AndroidApp");

    web.setWebViewClient(new WebViewClient() {
      @Override
      public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest req) {
        Uri u = req.getUrl();
        if ("file".equals(u.getScheme())) return false;
        try { startActivity(new Intent(Intent.ACTION_VIEW, u)); } catch (Exception e) { }
        return true;
      }
    });

    web.setWebChromeClient(new WebChromeClient() {
      @Override
      public boolean onShowFileChooser(WebView view, ValueCallback<Uri[]> cb, WebChromeClient.FileChooserParams params) {
        if (fileCallback != null) fileCallback.onReceiveValue(null);
        fileCallback = cb;
        Intent i = new Intent(Intent.ACTION_GET_CONTENT);
        i.addCategory(Intent.CATEGORY_OPENABLE);
        i.setType("*/*");
        try {
          startActivityForResult(Intent.createChooser(i, "Chọn file sao lưu"), PICK_FILE);
        } catch (Exception e) {
          fileCallback = null;
          return false;
        }
        return true;
      }
    });

    if (state != null) web.restoreState(state);
    else web.loadUrl("file:///android_asset/index.html");
  }

  @Override
  protected void onActivityResult(int req, int res, Intent data) {
    if (req == PICK_FILE && fileCallback != null) {
      Uri[] result = null;
      if (res == RESULT_OK && data != null && data.getData() != null) result = new Uri[]{ data.getData() };
      fileCallback.onReceiveValue(result);
      fileCallback = null;
    } else {
      super.onActivityResult(req, res, data);
    }
  }

  @Override
  protected void onSaveInstanceState(Bundle out) {
    super.onSaveInstanceState(out);
    web.saveState(out);
  }

  @Override
  public void onBackPressed() {
    // Nút Back: đóng bảng đang mở trước, nếu không có thì thoát app
    web.evaluateJavascript(
      "(function(){var b=document.getElementById('sheetBg');if(b&&b.classList.contains('on')){b.classList.remove('on');return 1}return 0})()",
      new ValueCallback<String>() {
        @Override public void onReceiveValue(String v) { if (!"1".equals(v)) finish(); }
      });
  }

  class Bridge {
    @JavascriptInterface
    public void copy(String text) {
      ClipboardManager cm = (ClipboardManager) getSystemService(CLIPBOARD_SERVICE);
      cm.setPrimaryClip(ClipData.newPlainText("Lich Van Nien", text));
    }
  }
}
EOF

gradle assembleRelease --no-daemon
cp app/build/outputs/apk/release/app-release.apk ../LichVanNien.apk
echo "Xong: LichVanNien.apk"
