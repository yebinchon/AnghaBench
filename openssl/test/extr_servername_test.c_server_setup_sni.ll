; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_servername_test.c_server_setup_sni.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_servername_test.c_server_setup_sni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@host = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@TLSEXT_NAMETYPE_host_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @server_setup_sni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_setup_sni() #0 {
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
  %11 = call i32 @create_ssl_ctx_pair(i32 %6, i32 %7, i32 %8, i32 0, i32** %2, i32** %1, i32 %9, i32 %10)
  %12 = call i32 @TEST_true(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load i32*, i32** %2, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @create_ssl_objects(i32* %15, i32* %16, i32** %4, i32** %3, i32* null, i32* null)
  %18 = call i32 @TEST_true(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %0
  br label %40

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @host, align 4
  %24 = call i32 @SSL_set_tlsext_host_name(i32* %22, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @SSL_ERROR_NONE, align 4
  %28 = call i32 @create_ssl_connection(i32* %25, i32* %26, i32 %27)
  %29 = call i32 @TEST_true(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %40

32:                                               ; preds = %21
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @TLSEXT_NAMETYPE_host_name, align 4
  %35 = call i32 @SSL_get_servername(i32* %33, i32 %34)
  %36 = call i32 @TEST_ptr_null(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %38, %31, %20
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @SSL_free(i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @SSL_free(i32* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @SSL_CTX_free(i32* %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @SSL_CTX_free(i32* %47)
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @SSL_set_tlsext_host_name(i32*, i32) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_ptr_null(i32) #1

declare dso_local i32 @SSL_get_servername(i32*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
