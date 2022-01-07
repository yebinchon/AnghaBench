; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_set_server_specific_opts.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_set_server_specific_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@php_openssl_tmp_rsa_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rsa_key_size\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"rsa_key_size context option has been removed\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"single_dh_use\00", align 1
@SSL_OP_SINGLE_DH_USE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"honor_cipher_order\00", align 1
@SSL_OP_CIPHER_SERVER_PREFERENCE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @php_openssl_set_server_specific_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_set_server_specific_opts(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @SSL_CTX_get_options(i32* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @php_openssl_tmp_rsa_cb, align 4
  %11 = call i32 @SSL_CTX_set_tmp_rsa_callback(i32* %9, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @PHP_STREAM_CONTEXT(i32* %12)
  %14 = call i32* @php_stream_context_get_option(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @E_WARNING, align 4
  %18 = call i32 @php_error_docref(i32* null, i32 %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @php_openssl_set_server_dh_param(i32* %20, i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @PHP_STREAM_CONTEXT(i32* %23)
  %25 = call i32* @php_stream_context_get_option(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @zend_is_true(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %19
  %33 = load i64, i64* @SSL_OP_SINGLE_DH_USE, align 8
  %34 = load i64, i64* %6, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @PHP_STREAM_CONTEXT(i32* %37)
  %39 = call i32* @php_stream_context_get_option(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @zend_is_true(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %36
  %47 = load i64, i64* @SSL_OP_CIPHER_SERVER_PREFERENCE, align 8
  %48 = load i64, i64* %6, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32*, i32** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @SSL_CTX_set_options(i32* %51, i64 %52)
  %54 = load i32, i32* @SUCCESS, align 4
  ret i32 %54
}

declare dso_local i64 @SSL_CTX_get_options(i32*) #1

declare dso_local i32 @SSL_CTX_set_tmp_rsa_callback(i32*, i32) #1

declare dso_local i32* @php_stream_context_get_option(i32, i8*, i8*) #1

declare dso_local i32 @PHP_STREAM_CONTEXT(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @php_openssl_set_server_dh_param(i32*, i32*) #1

declare dso_local i64 @zend_is_true(i32*) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
