; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ssl_clear.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ssl_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_ssl_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ssl_clear(i32 %0) #0 {
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
  %11 = load i32, i32* @cert, align 4
  %12 = load i32, i32* @privkey, align 4
  %13 = call i32 @create_ssl_ctx_pair(i32 %8, i32 %9, i32 %10, i32 0, i32** %4, i32** %3, i32 %11, i32 %12)
  %14 = call i32 @TEST_true(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @TLS1_2_VERSION, align 4
  %22 = call i32 @SSL_CTX_set_max_proto_version(i32* %20, i32 %21)
  %23 = call i32 @TEST_true(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %19, %16
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @create_ssl_objects(i32* %26, i32* %27, i32** %6, i32** %5, i32* null, i32* null)
  %29 = call i32 @TEST_true(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @SSL_ERROR_NONE, align 4
  %35 = call i32 @create_ssl_connection(i32* %32, i32* %33, i32 %34)
  %36 = call i32 @TEST_true(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31, %25, %19, %1
  br label %75

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @SSL_shutdown(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @SSL_shutdown(i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @SSL_free(i32* %44)
  store i32* null, i32** %6, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @SSL_clear(i32* %46)
  %48 = call i32 @TEST_true(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %75

51:                                               ; preds = %39
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @create_ssl_objects(i32* %52, i32* %53, i32** %6, i32** %5, i32* null, i32* null)
  %55 = call i32 @TEST_true(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @SSL_ERROR_NONE, align 4
  %61 = call i32 @create_ssl_connection(i32* %58, i32* %59, i32 %60)
  %62 = call i32 @TEST_true(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @SSL_session_reused(i32* %65)
  %67 = call i32 @TEST_true(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64, %57, %51
  br label %75

70:                                               ; preds = %64
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @SSL_shutdown(i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @SSL_shutdown(i32* %73)
  store i32 1, i32* %7, align 4
  br label %75

75:                                               ; preds = %70, %69, %50, %38
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @SSL_free(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @SSL_free(i32* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @SSL_CTX_free(i32* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @SSL_CTX_free(i32* %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_clear(i32*) #1

declare dso_local i32 @SSL_session_reused(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
