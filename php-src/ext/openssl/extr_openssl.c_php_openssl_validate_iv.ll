; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_validate_iv.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_validate_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_openssl_cipher_mode = type { i32, i64 }

@SUCCESS = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Setting of IV length for AEAD mode failed\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [95 x i8] c"IV passed is only %zd bytes long, cipher expects an IV of precisely %zd bytes, padding with \\0\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"IV passed is %zd bytes long which is longer than the %zd expected by selected cipher, truncating\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i64, i32*, i32*, %struct.php_openssl_cipher_mode*)* @php_openssl_validate_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_validate_iv(i8** %0, i64* %1, i64 %2, i32* %3, i32* %4, %struct.php_openssl_cipher_mode* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.php_openssl_cipher_mode*, align 8
  %14 = alloca i8*, align 8
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.php_openssl_cipher_mode* %5, %struct.php_openssl_cipher_mode** %13, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @SUCCESS, align 4
  store i32 %20, i32* %7, align 4
  br label %95

21:                                               ; preds = %6
  %22 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %13, align 8
  %23 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load i32*, i32** %12, align 8
  %28 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %13, align 8
  %29 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %27, i32 %30, i64 %32, i32* null)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* @E_WARNING, align 4
  %37 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @FAILURE, align 4
  store i32 %38, i32* %7, align 4
  br label %95

39:                                               ; preds = %26
  %40 = load i32, i32* @SUCCESS, align 4
  store i32 %40, i32* %7, align 4
  br label %95

41:                                               ; preds = %21
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  %44 = call i8* @ecalloc(i32 1, i64 %43)
  store i8* %44, i8** %14, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i64, i64* %10, align 8
  %50 = load i64*, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i8**, i8*** %8, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i32*, i32** %11, align 8
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @SUCCESS, align 4
  store i32 %54, i32* %7, align 4
  br label %95

55:                                               ; preds = %41
  %56 = load i64*, i64** %9, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load i32, i32* @E_WARNING, align 4
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %61, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i64 %63, i64 %64)
  %66 = load i8*, i8** %14, align 8
  %67 = load i8**, i8*** %8, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @memcpy(i8* %66, i8* %68, i64 %70)
  %72 = load i64, i64* %10, align 8
  %73 = load i64*, i64** %9, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i8**, i8*** %8, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i32*, i32** %11, align 8
  store i32 1, i32* %76, align 4
  %77 = load i32, i32* @SUCCESS, align 4
  store i32 %77, i32* %7, align 4
  br label %95

78:                                               ; preds = %55
  %79 = load i32, i32* @E_WARNING, align 4
  %80 = load i64*, i64** %9, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %79, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i64 %81, i64 %82)
  %84 = load i8*, i8** %14, align 8
  %85 = load i8**, i8*** %8, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @memcpy(i8* %84, i8* %86, i64 %87)
  %89 = load i64, i64* %10, align 8
  %90 = load i64*, i64** %9, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = load i8**, i8*** %8, align 8
  store i8* %91, i8** %92, align 8
  %93 = load i32*, i32** %11, align 8
  store i32 1, i32* %93, align 4
  %94 = load i32, i32* @SUCCESS, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %78, %60, %48, %39, %35, %19
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32*, i32, i64, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i8* @ecalloc(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
