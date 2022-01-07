; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_psk_tickets.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_psk_tickets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_CLIENT = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_NO_INTERNAL_STORE = common dso_local global i32 0, align 4
@use_session_cb = common dso_local global i32 0, align 4
@find_session_cb = common dso_local global i32 0, align 4
@new_session_cb = common dso_local global i32 0, align 4
@use_session_cb_cnt = common dso_local global i64 0, align 8
@find_session_cb_cnt = common dso_local global i64 0, align 8
@pskid = common dso_local global i32 0, align 4
@srvid = common dso_local global i32 0, align 4
@new_called = common dso_local global i64 0, align 8
@serverpsk = common dso_local global i32* null, align 8
@clientpsk = common dso_local global i32* null, align 8
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_psk_tickets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_psk_tickets() #0 {
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
  store i32 1, i32* %6, align 4
  %7 = call i32 (...) @TLS_server_method()
  %8 = call i32 (...) @TLS_client_method()
  %9 = load i32, i32* @TLS1_VERSION, align 4
  %10 = call i32 @create_ssl_ctx_pair(i32 %7, i32 %8, i32 %9, i32 0, i32** %1, i32** %2, i32* null, i32* null)
  %11 = call i32 @TEST_true(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load i32*, i32** %1, align 8
  %15 = bitcast i32* %6 to i8*
  %16 = call i32 @SSL_CTX_set_session_id_context(i32* %14, i8* %15, i32 4)
  %17 = call i32 @TEST_true(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %0
  br label %72

20:                                               ; preds = %13
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @SSL_SESS_CACHE_CLIENT, align 4
  %23 = load i32, i32* @SSL_SESS_CACHE_NO_INTERNAL_STORE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @SSL_CTX_set_session_cache_mode(i32* %21, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @use_session_cb, align 4
  %28 = call i32 @SSL_CTX_set_psk_use_session_callback(i32* %26, i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @find_session_cb, align 4
  %31 = call i32 @SSL_CTX_set_psk_find_session_callback(i32* %29, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @new_session_cb, align 4
  %34 = call i32 @SSL_CTX_sess_set_new_cb(i32* %32, i32 %33)
  store i64 0, i64* @use_session_cb_cnt, align 8
  store i64 0, i64* @find_session_cb_cnt, align 8
  %35 = load i32, i32* @pskid, align 4
  store i32 %35, i32* @srvid, align 4
  store i64 0, i64* @new_called, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @create_ssl_objects(i32* %36, i32* %37, i32** %3, i32** %4, i32* null, i32* null)
  %39 = call i32 @TEST_true(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %20
  br label %72

42:                                               ; preds = %20
  %43 = load i32*, i32** %4, align 8
  %44 = call i32* @create_a_psk(i32* %43)
  store i32* %44, i32** @serverpsk, align 8
  store i32* %44, i32** @clientpsk, align 8
  %45 = load i32*, i32** @clientpsk, align 8
  %46 = call i32 @TEST_ptr(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %72

49:                                               ; preds = %42
  %50 = load i32*, i32** @clientpsk, align 8
  %51 = call i32 @SSL_SESSION_up_ref(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @SSL_ERROR_NONE, align 4
  %55 = call i32 @create_ssl_connection(i32* %52, i32* %53, i32 %54)
  %56 = call i32 @TEST_true(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load i64, i64* @find_session_cb_cnt, align 8
  %60 = call i32 @TEST_int_eq(i32 1, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i64, i64* @use_session_cb_cnt, align 8
  %64 = call i32 @TEST_int_eq(i32 1, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i64, i64* @new_called, align 8
  %68 = call i32 @TEST_int_eq(i32 1, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66, %62, %58, %49
  br label %72

71:                                               ; preds = %66
  store i32 1, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %70, %48, %41, %19
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @SSL_free(i32* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @SSL_free(i32* %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @SSL_CTX_free(i32* %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @SSL_CTX_free(i32* %79)
  %81 = load i32*, i32** @clientpsk, align 8
  %82 = call i32 @SSL_SESSION_free(i32* %81)
  %83 = load i32*, i32** @serverpsk, align 8
  %84 = call i32 @SSL_SESSION_free(i32* %83)
  store i32* null, i32** @serverpsk, align 8
  store i32* null, i32** @clientpsk, align 8
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_session_id_context(i32*, i8*, i32) #1

declare dso_local i32 @SSL_CTX_set_session_cache_mode(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_psk_use_session_callback(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_psk_find_session_callback(i32*, i32) #1

declare dso_local i32 @SSL_CTX_sess_set_new_cb(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32* @create_a_psk(i32*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @SSL_SESSION_up_ref(i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i64) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
