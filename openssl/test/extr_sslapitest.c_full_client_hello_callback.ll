; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_full_client_hello_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_full_client_hello_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.full_client_hello_callback.expected_ciphers = private unnamed_addr constant [6 x i8] c"\00\9D\C0,\00\FF", align 1
@__const.full_client_hello_callback.expected_extensions = private unnamed_addr constant [6 x i32] [i32 11, i32 10, i32 35, i32 22, i32 23, i32 13], align 16
@SSL_CLIENT_HELLO_RETRY = common dso_local global i32 0, align 4
@SSL_CLIENT_HELLO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ClientHello callback expected extensions mismatch\0A\00", align 1
@SSL_CLIENT_HELLO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @full_client_hello_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @full_client_hello_callback(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [6 x i8], align 1
  %12 = alloca [6 x i32], align 16
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %8, align 8
  %16 = bitcast [6 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.full_client_hello_callback.expected_ciphers, i32 0, i32 0), i64 6, i1 false)
  %17 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([6 x i32]* @__const.full_client_hello_callback.expected_extensions to i8*), i64 24, i1 false)
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @SSL_CLIENT_HELLO_RETRY, align 4
  store i32 %23, i32* %4, align 4
  br label %71

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @SSL_client_hello_get0_ciphers(i32* %25, i8** %9)
  store i64 %26, i64* %13, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %13, align 8
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %30 = call i32 @TEST_mem_eq(i8* %27, i64 %28, i8* %29, i32 6)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @SSL_client_hello_get0_compression_methods(i32* %33, i8** %9)
  %35 = call i32 @TEST_size_t_eq(i32 %34, i32 1)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @TEST_int_eq(i8 zeroext %39, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %32, %24
  %43 = load i32, i32* @SSL_CLIENT_HELLO_ERROR, align 4
  store i32 %43, i32* %4, align 4
  br label %71

44:                                               ; preds = %37
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @SSL_client_hello_get1_extensions_present(i32* %45, i32** %10, i64* %13)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @SSL_CLIENT_HELLO_ERROR, align 4
  store i32 %49, i32* %4, align 4
  br label %71

50:                                               ; preds = %44
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %53 = call i64 @OSSL_NELEM(i32* %52)
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %58 = load i64, i64* %13, align 8
  %59 = mul i64 %58, 4
  %60 = call i64 @memcmp(i32* %56, i32* %57, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55, %50
  %63 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @OPENSSL_free(i32* %64)
  %66 = load i32, i32* @SSL_CLIENT_HELLO_ERROR, align 4
  store i32 %66, i32* %4, align 4
  br label %71

67:                                               ; preds = %55
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @OPENSSL_free(i32* %68)
  %70 = load i32, i32* @SSL_CLIENT_HELLO_SUCCESS, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %62, %48, %42, %22
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @SSL_client_hello_get0_ciphers(i32*, i8**) #2

declare dso_local i32 @TEST_mem_eq(i8*, i64, i8*, i32) #2

declare dso_local i32 @TEST_size_t_eq(i32, i32) #2

declare dso_local i32 @SSL_client_hello_get0_compression_methods(i32*, i8**) #2

declare dso_local i32 @TEST_int_eq(i8 zeroext, i32) #2

declare dso_local i32 @SSL_client_hello_get1_extensions_present(i32*, i32**, i64*) #2

declare dso_local i64 @OSSL_NELEM(i32*) #2

declare dso_local i64 @memcmp(i32*, i32*, i64) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @OPENSSL_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
