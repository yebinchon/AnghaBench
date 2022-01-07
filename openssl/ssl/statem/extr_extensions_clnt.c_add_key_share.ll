; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_add_key_share.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_add_key_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_ADD_KEY_SHARE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @add_key_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_key_share(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SSL_HRR_PENDING, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ossl_assert(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %29 = load i32, i32* @SSL_F_ADD_KEY_SHARE, align 4
  %30 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %31 = call i32 @SSLfatal(%struct.TYPE_9__* %27, i32 %28, i32 %29, i32 %30)
  store i32 0, i32* %4, align 4
  br label %99

32:                                               ; preds = %17
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %9, align 8
  br label %46

38:                                               ; preds = %3
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32* @ssl_generate_pkey_group(%struct.TYPE_9__* %39, i32 %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %99

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @EVP_PKEY_get1_tls_encodedpoint(i32* %47, i8** %8)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %54 = load i32, i32* @SSL_F_ADD_KEY_SHARE, align 4
  %55 = load i32, i32* @ERR_R_EC_LIB, align 4
  %56 = call i32 @SSLfatal(%struct.TYPE_9__* %52, i32 %53, i32 %54, i32 %55)
  br label %86

57:                                               ; preds = %46
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @WPACKET_put_bytes_u16(i32* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @WPACKET_sub_memcpy_u16(i32* %63, i8* %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %71 = load i32, i32* @SSL_F_ADD_KEY_SHARE, align 4
  %72 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %73 = call i32 @SSLfatal(%struct.TYPE_9__* %69, i32 %70, i32 %71, i32 %72)
  br label %86

74:                                               ; preds = %62
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32* %75, i32** %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @OPENSSL_free(i8* %84)
  store i32 1, i32* %4, align 4
  br label %99

86:                                               ; preds = %68, %51
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @EVP_PKEY_free(i32* %94)
  br label %96

96:                                               ; preds = %93, %86
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @OPENSSL_free(i8* %97)
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %74, %44, %26
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32* @ssl_generate_pkey_group(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @EVP_PKEY_get1_tls_encodedpoint(i32*, i8**) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_sub_memcpy_u16(i32*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
