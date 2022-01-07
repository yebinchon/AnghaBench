; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_dhe.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_dhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CKE_DHE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @tls_construct_cke_dhe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_construct_cke_dhe(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
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
  %20 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_DHE, align 4
  %21 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %22 = call i32 @SSLfatal(%struct.TYPE_7__* %18, i32 %19, i32 %20, i32 %21)
  br label %72

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
  %31 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_DHE, align 4
  %32 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %33 = call i32 @SSLfatal(%struct.TYPE_7__* %29, i32 %30, i32 %31, i32 %32)
  br label %72

34:                                               ; preds = %23
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @EVP_PKEY_get0_DH(i32* %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %42 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_DHE, align 4
  %43 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %44 = call i32 @SSLfatal(%struct.TYPE_7__* %40, i32 %41, i32 %42, i32 %43)
  br label %72

45:                                               ; preds = %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @ssl_derive(%struct.TYPE_7__* %46, i32* %47, i32* %48, i32 0)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %72

52:                                               ; preds = %45
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @DH_get0_key(i32* %53, i32** %7, i32* null)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @BN_num_bytes(i32* %56)
  %58 = call i32 @WPACKET_sub_allocate_bytes_u16(i32* %55, i32 %57, i8** %10)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %63 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_DHE, align 4
  %64 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %65 = call i32 @SSLfatal(%struct.TYPE_7__* %61, i32 %62, i32 %63, i32 %64)
  br label %72

66:                                               ; preds = %52
  %67 = load i32*, i32** %7, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @BN_bn2bin(i32* %67, i8* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @EVP_PKEY_free(i32* %70)
  store i32 1, i32* %3, align 4
  br label %75

72:                                               ; preds = %60, %51, %39, %28, %17
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @EVP_PKEY_free(i32* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32* @ssl_generate_pkey(i32*) #1

declare dso_local i32* @EVP_PKEY_get0_DH(i32*) #1

declare dso_local i64 @ssl_derive(%struct.TYPE_7__*, i32*, i32*, i32) #1

declare dso_local i32 @DH_get0_key(i32*, i32**, i32*) #1

declare dso_local i32 @WPACKET_sub_allocate_bytes_u16(i32*, i32, i8**) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
