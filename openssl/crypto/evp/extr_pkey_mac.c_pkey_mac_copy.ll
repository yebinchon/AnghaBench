; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_copy.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32* }

@EVP_F_PKEY_MAC_COPY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_18__*)* @pkey_mac_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_mac_copy(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %9 = call %struct.TYPE_17__* @EVP_PKEY_CTX_get_data(%struct.TYPE_18__* %8)
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %6, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

17:                                               ; preds = %2
  %18 = call %struct.TYPE_17__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %7, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = icmp eq %struct.TYPE_17__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @EVP_F_PKEY_MAC_COPY, align 4
  %23 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %24 = call i32 @EVPerr(i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %89

25:                                               ; preds = %17
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = call i32 @EVP_PKEY_CTX_set_data(%struct.TYPE_18__* %26, %struct.TYPE_17__* %27)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = call %struct.TYPE_15__* @EVP_MAC_CTX_dup(%struct.TYPE_15__* %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 2
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = icmp eq %struct.TYPE_15__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  br label %86

42:                                               ; preds = %25
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = call i32 @EVP_MAC_CTX_mac(%struct.TYPE_15__* %45)
  %47 = call i32 @EVP_MAC_up_ref(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %86

50:                                               ; preds = %42
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %84 [
    i32 128, label %59
    i32 129, label %83
  ]

59:                                               ; preds = %50
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = call i32* @ASN1_STRING_get0_data(i32* %69)
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %59
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = call i32 @ASN1_STRING_copy(i32* %75, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  br label %86

82:                                               ; preds = %72, %59
  br label %85

83:                                               ; preds = %50
  br label %85

84:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %89

85:                                               ; preds = %83, %82
  store i32 1, i32* %3, align 4
  br label %89

86:                                               ; preds = %81, %49, %41
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %88 = call i32 @pkey_mac_cleanup(%struct.TYPE_18__* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %86, %85, %84, %21, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_17__* @EVP_PKEY_CTX_get_data(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_data(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_15__* @EVP_MAC_CTX_dup(%struct.TYPE_15__*) #1

declare dso_local i32 @EVP_MAC_up_ref(i32) #1

declare dso_local i32 @EVP_MAC_CTX_mac(%struct.TYPE_15__*) #1

declare dso_local i32* @ASN1_STRING_get0_data(i32*) #1

declare dso_local i32 @ASN1_STRING_copy(i32*, i32*) #1

declare dso_local i32 @pkey_mac_cleanup(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
