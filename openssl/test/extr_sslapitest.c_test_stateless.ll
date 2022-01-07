; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_stateless.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_stateless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@SSL_OP_ENABLE_MIDDLEBOX_COMPAT = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@generate_stateless_cookie_callback = common dso_local global i32 0, align 4
@verify_stateless_cookie_callback = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_stateless to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_stateless() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @TLS_server_method()
  %7 = call i32 (...) @TLS_client_method()
  %8 = load i32, i32* @TLS1_VERSION, align 4
  %9 = load i32, i32* @cert, align 4
  %10 = load i32, i32* @privkey, align 4
  %11 = call i32 @create_ssl_ctx_pair(i32 %6, i32 %7, i32 %8, i32 0, i32** %1, i32** %2, i32 %9, i32 %10)
  %12 = call i32 @TEST_true(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  br label %108

15:                                               ; preds = %0
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %18 = call i32 @SSL_CTX_clear_options(i32* %16, i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @create_ssl_objects(i32* %19, i32* %20, i32** %3, i32** %4, i32* null, i32* null)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %15
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %28 = call i32 @create_ssl_connection(i32* %25, i32* %26, i32 %27)
  %29 = call i32 @TEST_false(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @SSL_stateless(i32* %32)
  %34 = call i32 @TEST_int_eq(i32 %33, i32 -1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %24, %15
  br label %108

37:                                               ; preds = %31
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @SSL_free(i32* %38)
  store i32* null, i32** %4, align 8
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @generate_stateless_cookie_callback, align 4
  %42 = call i32 @SSL_CTX_set_stateless_cookie_generate_cb(i32* %40, i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = load i32, i32* @verify_stateless_cookie_callback, align 4
  %45 = call i32 @SSL_CTX_set_stateless_cookie_verify_cb(i32* %43, i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @create_ssl_objects(i32* %46, i32* %47, i32** %3, i32** %4, i32* null, i32* null)
  %49 = call i32 @TEST_true(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %37
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %55 = call i32 @create_ssl_connection(i32* %52, i32* %53, i32 %54)
  %56 = call i32 @TEST_false(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @SSL_stateless(i32* %59)
  %61 = call i32 @TEST_int_eq(i32 %60, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %51, %37
  br label %108

64:                                               ; preds = %58
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @SSL_free(i32* %65)
  store i32* null, i32** %4, align 8
  %67 = load i32*, i32** %1, align 8
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @create_ssl_objects(i32* %67, i32* %68, i32** %3, i32** %4, i32* null, i32* null)
  %70 = call i32 @TEST_true(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %64
  %73 = load i32*, i32** %3, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %76 = call i32 @create_ssl_connection(i32* %73, i32* %74, i32 %75)
  %77 = call i32 @TEST_false(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %72
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @SSL_stateless(i32* %80)
  %82 = call i32 @TEST_int_eq(i32 %81, i32 0)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = load i32*, i32** %3, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %88 = call i32 @create_ssl_connection(i32* %85, i32* %86, i32 %87)
  %89 = call i32 @TEST_false(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @SSL_stateless(i32* %92)
  %94 = call i32 @TEST_int_eq(i32 %93, i32 1)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32*, i32** %3, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* @SSL_ERROR_NONE, align 4
  %100 = call i32 @create_ssl_connection(i32* %97, i32* %98, i32 %99)
  %101 = call i32 @TEST_true(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %96, %91, %84, %79, %72, %64
  br label %108

104:                                              ; preds = %96
  %105 = load i32*, i32** %3, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @shutdown_ssl_connection(i32* %105, i32* %106)
  store i32* null, i32** %4, align 8
  store i32* null, i32** %3, align 8
  store i32 1, i32* %5, align 4
  br label %108

108:                                              ; preds = %104, %103, %63, %36, %14
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @SSL_free(i32* %109)
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @SSL_free(i32* %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @SSL_CTX_free(i32* %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @SSL_CTX_free(i32* %115)
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_clear_options(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_stateless(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_set_stateless_cookie_generate_cb(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_stateless_cookie_verify_cb(i32*, i32) #1

declare dso_local i32 @shutdown_ssl_connection(i32*, i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
