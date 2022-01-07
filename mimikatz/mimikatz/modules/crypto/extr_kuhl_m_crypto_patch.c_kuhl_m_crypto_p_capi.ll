; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_patch.c_kuhl_m_crypto_p_capi.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_patch.c_kuhl_m_crypto_p_capi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32*, i32* }
%struct.TYPE_27__ = type { %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_21__, i32*, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32*, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }

@KULL_M_MEMORY_GLOBAL_OWN_HANDLE = common dso_local global i32 0, align 4
@__const.kuhl_m_crypto_p_capi.aPattern4001Memory = private unnamed_addr constant %struct.TYPE_18__ { i32 0, i32* @KULL_M_MEMORY_GLOBAL_OWN_HANDLE, i32* null }, align 8
@__const.kuhl_m_crypto_p_capi.aPattern4000Memory = private unnamed_addr constant %struct.TYPE_18__ { i32 0, i32* @KULL_M_MEMORY_GLOBAL_OWN_HANDLE, i32* null }, align 8
@__const.kuhl_m_crypto_p_capi.aPatch4001Memory = private unnamed_addr constant %struct.TYPE_18__ { i32 0, i32* @KULL_M_MEMORY_GLOBAL_OWN_HANDLE, i32* null }, align 8
@__const.kuhl_m_crypto_p_capi.aPatch4000Memory = private unnamed_addr constant %struct.TYPE_18__ { i32 0, i32* @KULL_M_MEMORY_GLOBAL_OWN_HANDLE, i32* null }, align 8
@K_CPExportKey = common dso_local global i64 0, align 8
@Capi4001References = common dso_local global i32 0, align 4
@MIMIKATZ_NT_BUILD_NUMBER = common dso_local global i32 0, align 4
@Capi4000References = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i32] [i32 114, i32 115, i32 97, i32 101, i32 110, i32 104, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.1 = private unnamed_addr constant [25 x i32] [i32 76, i32 111, i32 99, i32 97, i32 108, i32 32, i32 67, i32 114, i32 121, i32 112, i32 116, i32 111, i32 65, i32 80, i32 73, i32 32, i32 112, i32 97, i32 116, i32 99, i32 104, i32 101, i32 100, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [13 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 112, i32 97, i32 116, i32 99, i32 104, i32 0], align 4
@.str.3 = private unnamed_addr constant [53 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 95, i32 103, i32 101, i32 116, i32 86, i32 101, i32 114, i32 121, i32 66, i32 97, i32 115, i32 105, i32 99, i32 77, i32 111, i32 100, i32 117, i32 108, i32 101, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 115, i32 70, i32 111, i32 114, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_crypto_p_capi(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_27__, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %13 = bitcast %struct.TYPE_18__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_18__* @__const.kuhl_m_crypto_p_capi.aPattern4001Memory to i8*), i64 24, i1 false)
  %14 = bitcast %struct.TYPE_18__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_18__* @__const.kuhl_m_crypto_p_capi.aPattern4000Memory to i8*), i64 24, i1 false)
  %15 = bitcast %struct.TYPE_18__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_18__* @__const.kuhl_m_crypto_p_capi.aPatch4001Memory to i8*), i64 24, i1 false)
  %16 = bitcast %struct.TYPE_18__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_18__* @__const.kuhl_m_crypto_p_capi.aPatch4000Memory to i8*), i64 24, i1 false)
  %17 = bitcast %struct.TYPE_17__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 40, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i64, i64* @K_CPExportKey, align 8
  store i64 %20, i64* %19, align 8
  %21 = load i32, i32* @Capi4001References, align 4
  %22 = load i32, i32* @Capi4001References, align 4
  %23 = call i32 @ARRAYSIZE(i32 %22)
  %24 = load i32, i32* @MIMIKATZ_NT_BUILD_NUMBER, align 4
  %25 = call %struct.TYPE_26__* @kull_m_patch_getGenericFromBuild(i32 %21, i32 %23, i32 %24)
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %11, align 8
  %26 = load i32, i32* @Capi4000References, align 4
  %27 = load i32, i32* @Capi4000References, align 4
  %28 = call i32 @ARRAYSIZE(i32 %27)
  %29 = load i32, i32* @MIMIKATZ_NT_BUILD_NUMBER, align 4
  %30 = call %struct.TYPE_26__* @kull_m_patch_getGenericFromBuild(i32 %26, i32 %28, i32 %29)
  store %struct.TYPE_26__* %30, %struct.TYPE_26__** %12, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %32 = icmp ne %struct.TYPE_26__* %31, null
  br i1 %32, label %33, label %107

33:                                               ; preds = %2
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %35 = icmp ne %struct.TYPE_26__* %34, null
  br i1 %35, label %36, label %107

36:                                               ; preds = %33
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = call i64 @kull_m_process_getVeryBasicModuleInformationsForName(i32* @KULL_M_MEMORY_GLOBAL_OWN_HANDLE, i8* bitcast ([11 x i32]* @.str to i8*), %struct.TYPE_27__* %5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %104

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @K_CPExportKey, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = sub nsw i64 %61, %66
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @kull_m_patch(%struct.TYPE_17__* %10, %struct.TYPE_18__* %6, i32 %73, %struct.TYPE_18__* %8, i32 %77, i32 %81, i32* null, i32 0, i32* null, i32* null)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %59
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @kull_m_patch(%struct.TYPE_17__* %10, %struct.TYPE_18__* %7, i32 %88, %struct.TYPE_18__* %9, i32 %92, i32 %96, i32* null, i32 0, i32* null, i32* null)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %84
  %100 = call i32 @kprintf(i8* bitcast ([25 x i32]* @.str.1 to i8*))
  br label %103

101:                                              ; preds = %84, %59
  %102 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([13 x i32]* @.str.2 to i8*))
  br label %103

103:                                              ; preds = %101, %99
  br label %106

104:                                              ; preds = %36
  %105 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([53 x i32]* @.str.3 to i8*))
  br label %106

106:                                              ; preds = %104, %103
  br label %107

107:                                              ; preds = %106, %33, %2
  %108 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_26__* @kull_m_patch_getGenericFromBuild(i32, i32, i32) #2

declare dso_local i32 @ARRAYSIZE(i32) #2

declare dso_local i64 @kull_m_process_getVeryBasicModuleInformationsForName(i32*, i8*, %struct.TYPE_27__*) #2

declare dso_local i64 @kull_m_patch(%struct.TYPE_17__*, %struct.TYPE_18__*, i32, %struct.TYPE_18__*, i32, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @kprintf(i8*) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
