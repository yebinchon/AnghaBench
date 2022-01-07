; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_setup_ticket_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_setup_ticket_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@SSL_OP_NO_TICKET = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_CLIENT = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_NO_INTERNAL_STORE = common dso_local global i32 0, align 4
@new_cachesession_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32**, i32**)* @setup_ticket_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_ticket_test(i32 %0, i32 %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32 1, i32* %10, align 4
  %11 = call i32 (...) @TLS_server_method()
  %12 = call i32 (...) @TLS_client_method()
  %13 = load i32, i32* @TLS1_VERSION, align 4
  %14 = load i32**, i32*** %8, align 8
  %15 = load i32**, i32*** %9, align 8
  %16 = load i32, i32* @cert, align 4
  %17 = load i32, i32* @privkey, align 4
  %18 = call i32 @create_ssl_ctx_pair(i32 %11, i32 %12, i32 %13, i32 0, i32** %14, i32** %15, i32 %16, i32 %17)
  %19 = call i32 @TEST_true(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %4
  %22 = load i32**, i32*** %8, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @SSL_CTX_set_num_tickets(i32* %23, i32 %24)
  %26 = call i32 @TEST_true(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast i32* %10 to i8*
  %32 = call i32 @SSL_CTX_set_session_id_context(i32* %30, i8* %31, i32 4)
  %33 = call i32 @TEST_true(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28, %21, %4
  store i32 0, i32* %5, align 4
  br label %55

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32**, i32*** %8, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @SSL_OP_NO_TICKET, align 4
  %43 = call i32 @SSL_CTX_set_options(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32**, i32*** %9, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @SSL_SESS_CACHE_CLIENT, align 4
  %48 = load i32, i32* @SSL_SESS_CACHE_NO_INTERNAL_STORE, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @SSL_CTX_set_session_cache_mode(i32* %46, i32 %49)
  %51 = load i32**, i32*** %9, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @new_cachesession_cb, align 4
  %54 = call i32 @SSL_CTX_sess_set_new_cb(i32* %52, i32 %53)
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %44, %35
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_num_tickets(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_session_id_context(i32*, i8*, i32) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_session_cache_mode(i32*, i32) #1

declare dso_local i32 @SSL_CTX_sess_set_new_cb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
