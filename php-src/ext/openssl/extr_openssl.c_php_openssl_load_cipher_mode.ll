; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_load_cipher_mode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_load_cipher_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_openssl_cipher_mode = type { i32, i32, i32, i32, i32 }

@EVP_CTRL_GCM_GET_TAG = common dso_local global i32 0, align 4
@EVP_CTRL_GCM_SET_TAG = common dso_local global i32 0, align 4
@EVP_CTRL_GCM_SET_IVLEN = common dso_local global i32 0, align 4
@EVP_CTRL_CCM_GET_TAG = common dso_local global i32 0, align 4
@EVP_CTRL_CCM_SET_TAG = common dso_local global i32 0, align 4
@EVP_CTRL_CCM_SET_IVLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.php_openssl_cipher_mode*, i32*)* @php_openssl_load_cipher_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_openssl_load_cipher_mode(%struct.php_openssl_cipher_mode* %0, i32* %1) #0 {
  %3 = alloca %struct.php_openssl_cipher_mode*, align 8
  %4 = alloca i32*, align 8
  store %struct.php_openssl_cipher_mode* %0, %struct.php_openssl_cipher_mode** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @EVP_CIPHER_mode(i32* %5)
  switch i32 %6, label %35 [
    i32 128, label %7
    i32 129, label %21
  ]

7:                                                ; preds = %2
  %8 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %3, align 8
  %9 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %3, align 8
  %11 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @EVP_CTRL_GCM_GET_TAG, align 4
  %13 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %3, align 8
  %14 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @EVP_CTRL_GCM_SET_TAG, align 4
  %16 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %3, align 8
  %17 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @EVP_CTRL_GCM_SET_IVLEN, align 4
  %19 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %3, align 8
  %20 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %3, align 8
  %23 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %3, align 8
  %25 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @EVP_CTRL_CCM_GET_TAG, align 4
  %27 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %3, align 8
  %28 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @EVP_CTRL_CCM_SET_TAG, align 4
  %30 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %3, align 8
  %31 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @EVP_CTRL_CCM_SET_IVLEN, align 4
  %33 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %3, align 8
  %34 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %3, align 8
  %37 = call i32 @memset(%struct.php_openssl_cipher_mode* %36, i32 0, i32 20)
  br label %38

38:                                               ; preds = %35, %21, %7
  ret void
}

declare dso_local i32 @EVP_CIPHER_mode(i32*) #1

declare dso_local i32 @memset(%struct.php_openssl_cipher_mode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
