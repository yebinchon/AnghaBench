; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_cipher_update.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_cipher_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_openssl_cipher_mode = type { i64, i64 }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Setting of data length failed\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Setting of additional application data failed\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.php_openssl_cipher_mode*, i32**, i32*, i8*, i64, i8*, i64, i32)* @php_openssl_cipher_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_cipher_update(i32* %0, i32* %1, %struct.php_openssl_cipher_mode* %2, i32** %3, i32* %4, i8* %5, i64 %6, i8* %7, i64 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.php_openssl_cipher_mode*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store %struct.php_openssl_cipher_mode* %2, %struct.php_openssl_cipher_mode** %14, align 8
  store i32** %3, i32*** %15, align 8
  store i32* %4, i32** %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %23 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %14, align 8
  %24 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %10
  %28 = load i32*, i32** %13, align 8
  %29 = load i64, i64* %18, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @EVP_CipherUpdate(i32* %28, i8* null, i32* %22, i8* null, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = call i32 (...) @php_openssl_store_errors()
  %35 = load i32, i32* @E_WARNING, align 4
  %36 = call i32 @php_error_docref(i32* null, i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @FAILURE, align 4
  store i32 %37, i32* %11, align 4
  br label %84

38:                                               ; preds = %27, %10
  %39 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %14, align 8
  %40 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i32*, i32** %13, align 8
  %45 = load i8*, i8** %19, align 8
  %46 = load i64, i64* %20, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @EVP_CipherUpdate(i32* %44, i8* null, i32* %22, i8* %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = call i32 (...) @php_openssl_store_errors()
  %52 = load i32, i32* @E_WARNING, align 4
  %53 = call i32 @php_error_docref(i32* null, i32 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @FAILURE, align 4
  store i32 %54, i32* %11, align 4
  br label %84

55:                                               ; preds = %43, %38
  %56 = load i64, i64* %18, align 8
  %57 = trunc i64 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = load i32*, i32** %12, align 8
  %60 = call i64 @EVP_CIPHER_block_size(i32* %59)
  %61 = add nsw i64 %58, %60
  %62 = call i32* @zend_string_alloc(i64 %61, i32 0)
  %63 = load i32**, i32*** %15, align 8
  store i32* %62, i32** %63, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32**, i32*** %15, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @ZSTR_VAL(i32* %66)
  %68 = inttoptr i64 %67 to i8*
  %69 = load i8*, i8** %17, align 8
  %70 = load i64, i64* %18, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @EVP_CipherUpdate(i32* %64, i8* %68, i32* %22, i8* %69, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %55
  %75 = call i32 (...) @php_openssl_store_errors()
  %76 = load i32**, i32*** %15, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @zend_string_release_ex(i32* %77, i32 0)
  %79 = load i32, i32* @FAILURE, align 4
  store i32 %79, i32* %11, align 4
  br label %84

80:                                               ; preds = %55
  %81 = load i32, i32* %22, align 4
  %82 = load i32*, i32** %16, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @SUCCESS, align 4
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %80, %74, %50, %33
  %85 = load i32, i32* %11, align 4
  ret i32 %85
}

declare dso_local i32 @EVP_CipherUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @php_openssl_store_errors(...) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32* @zend_string_alloc(i64, i32) #1

declare dso_local i64 @EVP_CIPHER_block_size(i32*) #1

declare dso_local i64 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
