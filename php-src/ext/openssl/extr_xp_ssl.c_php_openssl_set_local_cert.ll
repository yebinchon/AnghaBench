; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_set_local_cert.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_set_local_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"local_cert\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [132 x i8] c"Unable to set local cert chain file `%s'; Check that your cafile/capath settings include details of your certificate and its issuer\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"local_pk\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to set private key file `%s'\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Private key does not match certificate!\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @php_openssl_set_local_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_set_local_cert(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @GET_VER_OPT_STRING(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %86

18:                                               ; preds = %2
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @VCWD_REALPATH(i8* %23, i8* %22)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %18
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @SSL_CTX_use_certificate_chain_file(i32* %27, i8* %22)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @E_WARNING, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %31, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @FAILURE, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %82

35:                                               ; preds = %26
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @GET_VER_OPT_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load i32, i32* @MAXPATHLEN, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %12, align 8
  %44 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %13, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @VCWD_REALPATH(i8* %45, i8* %44)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %51 = call i32 @SSL_CTX_use_PrivateKey_file(i32* %49, i8* %44, i32 %50)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @E_WARNING, align 4
  %55 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %56 = load i32, i32* @FAILURE, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %59

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %40
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %11, align 4
  switch i32 %61, label %82 [
    i32 0, label %62
  ]

62:                                               ; preds = %59
  br label %73

63:                                               ; preds = %35
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %66 = call i32 @SSL_CTX_use_PrivateKey_file(i32* %64, i8* %22, i32 %65)
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @E_WARNING, align 4
  %70 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %71 = load i32, i32* @FAILURE, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %82

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @SSL_CTX_check_private_key(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @E_WARNING, align 4
  %79 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %73
  br label %81

81:                                               ; preds = %80, %18
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %68, %59, %30
  %83 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %11, align 4
  switch i32 %84, label %90 [
    i32 0, label %85
    i32 1, label %88
  ]

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %85, %2
  %87 = load i32, i32* @SUCCESS, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i32, i32* %3, align 4
  ret i32 %89

90:                                               ; preds = %82
  unreachable
}

declare dso_local i32 @GET_VER_OPT_STRING(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @VCWD_REALPATH(i8*, i8*) #1

declare dso_local i32 @SSL_CTX_use_certificate_chain_file(i32*, i8*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @SSL_CTX_check_private_key(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
