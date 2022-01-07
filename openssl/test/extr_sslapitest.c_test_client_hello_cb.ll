; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_client_hello_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_client_hello_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@full_client_hello_callback = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"AES256-GCM-SHA384:ECDHE-ECDSA-AES256-GCM-SHA384\00", align 1
@SSL_ERROR_WANT_CLIENT_HELLO_CB = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_client_hello_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_client_hello_cb() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @TLS_server_method()
  %8 = call i32 (...) @TLS_client_method()
  %9 = load i32, i32* @TLS1_VERSION, align 4
  %10 = load i32, i32* @cert, align 4
  %11 = load i32, i32* @privkey, align 4
  %12 = call i32 @create_ssl_ctx_pair(i32 %7, i32 %8, i32 %9, i32 0, i32** %2, i32** %1, i32 %10, i32 %11)
  %13 = call i32 @TEST_true(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  br label %55

16:                                               ; preds = %0
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @full_client_hello_callback, align 4
  %19 = call i32 @SSL_CTX_set_client_hello_cb(i32* %17, i32 %18, i32* %5)
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @TLS1_2_VERSION, align 4
  %22 = call i32 @SSL_CTX_set_max_proto_version(i32* %20, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @SSL_CTX_set_cipher_list(i32* %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @TEST_true(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %16
  %28 = load i32*, i32** %2, align 8
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @create_ssl_objects(i32* %28, i32* %29, i32** %4, i32** %3, i32* null, i32* null)
  %31 = call i32 @TEST_true(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @SSL_ERROR_WANT_CLIENT_HELLO_CB, align 4
  %37 = call i32 @create_ssl_connection(i32* %34, i32* %35, i32 %36)
  %38 = call i32 @TEST_false(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @SSL_get_error(i32* %41, i32 -1)
  %43 = load i32, i32* @SSL_ERROR_WANT_CLIENT_HELLO_CB, align 4
  %44 = call i32 @TEST_int_eq(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @SSL_ERROR_NONE, align 4
  %50 = call i32 @create_ssl_connection(i32* %47, i32* %48, i32 %49)
  %51 = call i32 @TEST_true(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46, %40, %33, %27, %16
  br label %55

54:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %53, %15
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @SSL_free(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @SSL_free(i32* %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @SSL_CTX_free(i32* %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @SSL_CTX_free(i32* %62)
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_client_hello_cb(i32*, i32, i32*) #1

declare dso_local i32 @SSL_CTX_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_get_error(i32*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
