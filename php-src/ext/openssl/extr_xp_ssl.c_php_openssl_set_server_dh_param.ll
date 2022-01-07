; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_set_server_dh_param.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_set_server_dh_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dh_param\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@PKCS7_BINARY = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid dh_param\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed reading DH params\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed assigning DH params\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @php_openssl_set_server_dh_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_set_server_dh_param(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @PHP_STREAM_CONTEXT(i32* %9)
  %11 = call i32* @php_stream_context_get_option(i32 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @SUCCESS, align 4
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %2
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @try_convert_to_string(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @FAILURE, align 4
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %16
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @Z_STRVAL_P(i32* %23)
  %25 = load i32, i32* @PKCS7_BINARY, align 4
  %26 = call i32 @PHP_OPENSSL_BIO_MODE_R(i32 %25)
  %27 = call i32* @BIO_new_file(i32 %24, i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @E_WARNING, align 4
  %32 = call i32 @php_error_docref(i32* null, i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @FAILURE, align 4
  store i32 %33, i32* %3, align 4
  br label %60

34:                                               ; preds = %22
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @PEM_read_bio_DHparams(i32* %35, i32* null, i32* null, i32* null)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @BIO_free(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @E_WARNING, align 4
  %43 = call i32 @php_error_docref(i32* null, i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @FAILURE, align 4
  store i32 %44, i32* %3, align 4
  br label %60

45:                                               ; preds = %34
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @SSL_CTX_set_tmp_dh(i32* %46, i32* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @E_WARNING, align 4
  %52 = call i32 @php_error_docref(i32* null, i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @DH_free(i32* %53)
  %55 = load i32, i32* @FAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %45
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @DH_free(i32* %57)
  %59 = load i32, i32* @SUCCESS, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %50, %41, %30, %20, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32* @php_stream_context_get_option(i32, i8*, i8*) #1

declare dso_local i32 @PHP_STREAM_CONTEXT(i32*) #1

declare dso_local i32 @try_convert_to_string(i32*) #1

declare dso_local i32* @BIO_new_file(i32, i32) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @PHP_OPENSSL_BIO_MODE_R(i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32* @PEM_read_bio_DHparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i64 @SSL_CTX_set_tmp_dh(i32*, i32*) #1

declare dso_local i32 @DH_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
