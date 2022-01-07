; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_dtlstest.c_test_dtls_duplicate_records.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_dtlstest.c_test_dtls_duplicate_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@timer_cb = common dso_local global i32 0, align 4
@MEMPACKET_CTRL_SET_DUPLICATE_REC = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_dtls_duplicate_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_dtls_duplicate_records() #0 {
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
  %7 = call i32 (...) @DTLS_server_method()
  %8 = call i32 (...) @DTLS_client_method()
  %9 = load i32, i32* @DTLS1_VERSION, align 4
  %10 = load i32, i32* @cert, align 4
  %11 = load i32, i32* @privkey, align 4
  %12 = call i32 @create_ssl_ctx_pair(i32 %7, i32 %8, i32 %9, i32 0, i32** %2, i32** %3, i32 %10, i32 %11)
  %13 = call i32 @TEST_true(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %56

16:                                               ; preds = %0
  %17 = load i32*, i32** %2, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @create_ssl_objects(i32* %17, i32* %18, i32** %4, i32** %5, i32* null, i32* null)
  %20 = call i32 @TEST_true(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %46

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @timer_cb, align 4
  %26 = call i32 @DTLS_set_timer_cb(i32* %24, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @timer_cb, align 4
  %29 = call i32 @DTLS_set_timer_cb(i32* %27, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @SSL_get_wbio(i32* %30)
  %32 = load i32, i32* @MEMPACKET_CTRL_SET_DUPLICATE_REC, align 4
  %33 = call i32 @BIO_ctrl(i32 %31, i32 %32, i32 1, i32* null)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @SSL_get_wbio(i32* %34)
  %36 = load i32, i32* @MEMPACKET_CTRL_SET_DUPLICATE_REC, align 4
  %37 = call i32 @BIO_ctrl(i32 %35, i32 %36, i32 1, i32* null)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @SSL_ERROR_NONE, align 4
  %41 = call i32 @create_ssl_connection(i32* %38, i32* %39, i32 %40)
  %42 = call i32 @TEST_true(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %23
  br label %46

45:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %44, %22
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @SSL_free(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @SSL_free(i32* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @SSL_CTX_free(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @SSL_CTX_free(i32* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %46, %15
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @DTLS_server_method(...) #1

declare dso_local i32 @DTLS_client_method(...) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @DTLS_set_timer_cb(i32*, i32) #1

declare dso_local i32 @BIO_ctrl(i32, i32, i32, i32*) #1

declare dso_local i32 @SSL_get_wbio(i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
