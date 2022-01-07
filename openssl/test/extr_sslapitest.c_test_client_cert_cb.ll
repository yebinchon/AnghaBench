; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_client_cert_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_client_cert_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@client_cert_cb = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_VERIFY_FAIL_IF_NO_PEER_CERT = common dso_local global i32 0, align 4
@verify_cb = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_client_cert_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_client_cert_cb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @TLS_server_method()
  %9 = call i32 (...) @TLS_client_method()
  %10 = load i32, i32* @TLS1_VERSION, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @TLS1_2_VERSION, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @TLS1_3_VERSION, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = load i32, i32* @cert, align 4
  %20 = load i32, i32* @privkey, align 4
  %21 = call i32 @create_ssl_ctx_pair(i32 %8, i32 %9, i32 %10, i32 %18, i32** %4, i32** %3, i32 %19, i32 %20)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %49

25:                                               ; preds = %17
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @client_cert_cb, align 4
  %28 = call i32 @SSL_CTX_set_client_cert_cb(i32* %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %31 = load i32, i32* @SSL_VERIFY_FAIL_IF_NO_PEER_CERT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @verify_cb, align 4
  %34 = call i32 @SSL_CTX_set_verify(i32* %29, i32 %32, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @create_ssl_objects(i32* %35, i32* %36, i32** %6, i32** %5, i32* null, i32* null)
  %38 = call i32 @TEST_true(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %25
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @SSL_ERROR_NONE, align 4
  %44 = call i32 @create_ssl_connection(i32* %41, i32* %42, i32 %43)
  %45 = call i32 @TEST_true(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40, %25
  br label %49

48:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %47, %24
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @SSL_free(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @SSL_free(i32* %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @SSL_CTX_free(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @SSL_CTX_free(i32* %56)
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_client_cert_cb(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_verify(i32*, i32, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
