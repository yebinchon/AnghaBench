; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_client_hello_nov12_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_client_hello_nov12_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_2_VERSION = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i32 0, align 4
@SSL_AD_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@SSL_CLIENT_HELLO_ERROR = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS1_1_VERSION = common dso_local global i32 0, align 4
@SSL_AD_UNRECOGNIZED_NAME = common dso_local global i32 0, align 4
@SSL_CLIENT_HELLO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @client_hello_nov12_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_hello_nov12_cb(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @SSL_client_hello_get0_legacy_version(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @TLS1_2_VERSION, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @SSL3_VERSION, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @SSL_AD_PROTOCOL_VERSION, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @SSL_CLIENT_HELLO_ERROR, align 4
  store i32 %23, i32* %4, align 4
  br label %60

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @SSL_client_hello_get0_session_id(i32* %25, i8** %10)
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @SSL_client_hello_get0_random(i32* %30, i8** %10)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @SSL_client_hello_get0_ciphers(i32* %34, i8** %10)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @SSL_client_hello_get0_compression_methods(i32* %38, i8** %10)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %33, %29, %24
  %42 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @SSL_CLIENT_HELLO_ERROR, align 4
  store i32 %44, i32* %4, align 4
  br label %60

45:                                               ; preds = %37
  %46 = load i32*, i32** %5, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @client_hello_select_server_ctx(i32* %46, i8* %47, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @TLS1_1_VERSION, align 4
  %51 = call i32 @SSL_set_max_proto_version(i32* %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @SSL_AD_UNRECOGNIZED_NAME, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @SSL_CLIENT_HELLO_ERROR, align 4
  store i32 %57, i32* %4, align 4
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @SSL_CLIENT_HELLO_SUCCESS, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %54, %41, %20
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @SSL_client_hello_get0_legacy_version(i32*) #1

declare dso_local i32 @SSL_client_hello_get0_session_id(i32*, i8**) #1

declare dso_local i64 @SSL_client_hello_get0_random(i32*, i8**) #1

declare dso_local i64 @SSL_client_hello_get0_ciphers(i32*, i8**) #1

declare dso_local i64 @SSL_client_hello_get0_compression_methods(i32*, i8**) #1

declare dso_local i32 @client_hello_select_server_ctx(i32*, i8*, i32) #1

declare dso_local i32 @SSL_set_max_proto_version(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
