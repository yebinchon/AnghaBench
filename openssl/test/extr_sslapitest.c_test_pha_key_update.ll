; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_pha_key_update.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_pha_key_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_NOT_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_pha_key_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pha_key_update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @TLS_server_method()
  %8 = call i32 (...) @TLS_client_method()
  %9 = load i32, i32* @TLS1_VERSION, align 4
  %10 = load i32, i32* @cert, align 4
  %11 = load i32, i32* @privkey, align 4
  %12 = call i32 @create_ssl_ctx_pair(i32 %7, i32 %8, i32 %9, i32 0, i32** %3, i32** %2, i32 %10, i32 %11)
  %13 = call i32 @TEST_true(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %103

16:                                               ; preds = %0
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @TLS1_3_VERSION, align 4
  %19 = call i32 @SSL_CTX_set_min_proto_version(i32* %17, i32 %18)
  %20 = call i32 @TEST_true(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @TLS1_3_VERSION, align 4
  %25 = call i32 @SSL_CTX_set_max_proto_version(i32* %23, i32 %24)
  %26 = call i32 @TEST_true(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @TLS1_3_VERSION, align 4
  %31 = call i32 @SSL_CTX_set_min_proto_version(i32* %29, i32 %30)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @TLS1_3_VERSION, align 4
  %37 = call i32 @SSL_CTX_set_max_proto_version(i32* %35, i32 %36)
  %38 = call i32 @TEST_true(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34, %28, %22, %16
  br label %93

41:                                               ; preds = %34
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @SSL_CTX_set_post_handshake_auth(i32* %42, i32 1)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @create_ssl_objects(i32* %44, i32* %45, i32** %5, i32** %4, i32* null, i32* null)
  %47 = call i32 @TEST_true(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %93

50:                                               ; preds = %41
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @SSL_ERROR_NONE, align 4
  %54 = call i32 @create_ssl_connection(i32* %51, i32* %52, i32 %53)
  %55 = call i32 @TEST_true(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %93

58:                                               ; preds = %50
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %61 = call i32 @SSL_set_verify(i32* %59, i32 %60, i32* null)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @SSL_verify_client_post_handshake(i32* %62)
  %64 = call i32 @TEST_true(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %93

67:                                               ; preds = %58
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @SSL_KEY_UPDATE_NOT_REQUESTED, align 4
  %70 = call i32 @SSL_key_update(i32* %68, i32 %69)
  %71 = call i32 @TEST_true(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %93

74:                                               ; preds = %67
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @SSL_do_handshake(i32* %75)
  %77 = call i32 @TEST_int_eq(i32 %76, i32 1)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %93

80:                                               ; preds = %74
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @SSL_ERROR_NONE, align 4
  %84 = call i32 @create_ssl_connection(i32* %81, i32* %82, i32 %83)
  %85 = call i32 @TEST_true(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %93

88:                                               ; preds = %80
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @SSL_shutdown(i32* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @SSL_shutdown(i32* %91)
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %88, %87, %79, %73, %66, %57, %49, %40
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @SSL_free(i32* %94)
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @SSL_free(i32* %96)
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @SSL_CTX_free(i32* %98)
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @SSL_CTX_free(i32* %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %1, align 4
  br label %103

103:                                              ; preds = %93, %15
  %104 = load i32, i32* %1, align 4
  ret i32 %104
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_min_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_post_handshake_auth(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @SSL_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @SSL_verify_client_post_handshake(i32*) #1

declare dso_local i32 @SSL_key_update(i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_do_handshake(i32*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
