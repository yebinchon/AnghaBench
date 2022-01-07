; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_ecdhe.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_ecdhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CKE_ECDHE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @tls_construct_cke_ecdhe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_construct_cke_ecdhe(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %20 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_ECDHE, align 4
  %21 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %22 = call i32 @SSLfatal(%struct.TYPE_7__* %18, i32 %19, i32 %20, i32 %21)
  store i32 0, i32* %3, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load i32*, i32** %9, align 8
  %25 = call i32* @ssl_generate_pkey(i32* %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %31 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_ECDHE, align 4
  %32 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %33 = call i32 @SSLfatal(%struct.TYPE_7__* %29, i32 %30, i32 %31, i32 %32)
  br label %65

34:                                               ; preds = %23
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @ssl_derive(%struct.TYPE_7__* %35, i32* %36, i32* %37, i32 0)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %65

41:                                               ; preds = %34
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @EVP_PKEY_get1_tls_encodedpoint(i32* %42, i8** %6)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %49 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_ECDHE, align 4
  %50 = load i32, i32* @ERR_R_EC_LIB, align 4
  %51 = call i32 @SSLfatal(%struct.TYPE_7__* %47, i32 %48, i32 %49, i32 %50)
  br label %65

52:                                               ; preds = %41
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @WPACKET_sub_memcpy_u8(i32* %53, i8* %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %61 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_ECDHE, align 4
  %62 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %63 = call i32 @SSLfatal(%struct.TYPE_7__* %59, i32 %60, i32 %61, i32 %62)
  br label %65

64:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %58, %46, %40, %28
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @OPENSSL_free(i8* %66)
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @EVP_PKEY_free(i32* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32* @ssl_generate_pkey(i32*) #1

declare dso_local i64 @ssl_derive(%struct.TYPE_7__*, i32*, i32*, i32) #1

declare dso_local i64 @EVP_PKEY_get1_tls_encodedpoint(i32*, i8**) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
