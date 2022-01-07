; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_verify_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_verify_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_DEFAULT_STREAM_VERIFY_DEPTH = common dso_local global i64 0, align 8
@X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"allow_self_signed\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"verify_depth\00", align 1
@X509_V_ERR_CERT_CHAIN_TOO_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @verify_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_callback(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %12 = load i64, i64* @OPENSSL_DEFAULT_STREAM_VERIFY_DEPTH, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @X509_STORE_CTX_get_error(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @X509_STORE_CTX_get_error_depth(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (...) @SSL_get_ex_data_X509_STORE_CTX_idx()
  %20 = call i32* @X509_STORE_CTX_get_ex_data(i32* %18, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 (...) @php_openssl_get_ssl_stream_data_index()
  %23 = call i64 @SSL_get_ex_data(i32* %21, i32 %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = call i64 @GET_VER_OPT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32*, i32** %10, align 8
  %33 = call i64 @zend_is_true(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %31, %28, %2
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @GET_VER_OPT_LONG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %11, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @X509_V_ERR_CERT_CHAIN_TOO_LONG, align 4
  %46 = call i32 @X509_STORE_CTX_set_error(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @X509_STORE_CTX_get_error(i32*) #1

declare dso_local i32 @X509_STORE_CTX_get_error_depth(i32*) #1

declare dso_local i32* @X509_STORE_CTX_get_ex_data(i32*, i32) #1

declare dso_local i32 @SSL_get_ex_data_X509_STORE_CTX_idx(...) #1

declare dso_local i64 @SSL_get_ex_data(i32*, i32) #1

declare dso_local i32 @php_openssl_get_ssl_stream_data_index(...) #1

declare dso_local i64 @GET_VER_OPT(i8*) #1

declare dso_local i64 @zend_is_true(i32*) #1

declare dso_local i32 @GET_VER_OPT_LONG(i8*, i64) #1

declare dso_local i32 @X509_STORE_CTX_set_error(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
