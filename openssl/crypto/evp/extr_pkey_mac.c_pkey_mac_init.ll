; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@EVP_F_PKEY_MAC_INIT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_PKEY_CMAC = common dso_local global i32 0, align 4
@MAC_TYPE_MAC = common dso_local global i32 0, align 4
@MAC_TYPE_RAW = common dso_local global i32 0, align 4
@V_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @pkey_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_mac_init(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @OBJ_nid2sn(i32 %12)
  %14 = call i32* @EVP_MAC_fetch(i32* null, i32 %13, i32* null)
  store i32* %14, i32** %6, align 8
  %15 = call %struct.TYPE_15__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %4, align 8
  %16 = icmp eq %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @EVP_F_PKEY_MAC_INIT, align 4
  %19 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %20 = call i32 @EVPerr(i32 %18, i32 %19)
  store i32 0, i32* %2, align 4
  br label %58

21:                                               ; preds = %1
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @EVP_MAC_CTX_new(i32* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = call i32 @OPENSSL_free(%struct.TYPE_15__* %31)
  store i32 0, i32* %2, align 4
  br label %58

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @EVP_PKEY_CMAC, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @MAC_TYPE_MAC, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %50

41:                                               ; preds = %33
  %42 = load i32, i32* @MAC_TYPE_RAW, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  br label %50

50:                                               ; preds = %41, %37
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = call i32 @pkey_mac_cleanup(%struct.TYPE_16__* %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = call i32 @EVP_PKEY_CTX_set_data(%struct.TYPE_16__* %53, %struct.TYPE_15__* %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %50, %30, %17
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32* @EVP_MAC_fetch(i32*, i32, i32*) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local %struct.TYPE_15__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32* @EVP_MAC_CTX_new(i32*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_15__*) #1

declare dso_local i32 @pkey_mac_cleanup(%struct.TYPE_16__*) #1

declare dso_local i32 @EVP_PKEY_CTX_set_data(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
