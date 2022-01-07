; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_dpapi_system.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_dpapi_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32**, i32*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }

@cLsass = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@KULL_M_MEMORY_GLOBAL_OWN_HANDLE = common dso_local global i32 0, align 4
@__const.kuhl_m_sekurlsa_dpapi_system.aLocal = private unnamed_addr constant %struct.TYPE_13__ { i32** null, i32* @KULL_M_MEMORY_GLOBAL_OWN_HANDLE, i32* null }, align 8
@KULL_M_WIN_MIN_BUILD_8 = common dso_local global i64 0, align 8
@kuhl_m_sekurlsa_dpapi_svc_package = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@kuhl_m_sekurlsa_dpapi_lsa_package = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SysCredReferences = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i32] [i32 68, i32 80, i32 65, i32 80, i32 73, i32 95, i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 102, i32 117, i32 108, i32 108, i32 58, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 10, i32 109, i32 47, i32 117, i32 32, i32 58, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 32, i32 47, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [18 x i32] [i32 78, i32 111, i32 116, i32 32, i32 105, i32 110, i32 105, i32 116, i32 105, i32 97, i32 108, i32 105, i32 122, i32 101, i32 100, i32 33, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [36 x i32] [i32 80, i32 97, i32 116, i32 116, i32 101, i32 114, i32 110, i32 32, i32 110, i32 111, i32 116, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 32, i32 105, i32 110, i32 32, i32 68, i32 80, i32 65, i32 80, i32 73, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [35 x i32] [i32 68, i32 80, i32 65, i32 80, i32 73, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 110, i32 111, i32 116, i32 32, i32 105, i32 110, i32 32, i32 76, i32 83, i32 65, i32 83, i32 83, i32 32, i32 109, i32 101, i32 109, i32 111, i32 114, i32 121, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sekurlsa_dpapi_system(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %17 = call i32 (...) @kuhl_m_sekurlsa_acquireLSA()
  store i32 %17, i32* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32** null, i32*** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cLsass, i32 0, i32 1), align 8
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_13__* @__const.kuhl_m_sekurlsa_dpapi_system.aLocal to i8*), i64 24, i1 false)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cLsass, i32 0, i32 0, i32 0), align 8
  %24 = load i64, i64* @KULL_M_WIN_MIN_BUILD_8, align 8
  %25 = icmp sge i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, %struct.TYPE_12__* @kuhl_m_sekurlsa_dpapi_svc_package, %struct.TYPE_12__* @kuhl_m_sekurlsa_dpapi_lsa_package
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %28 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %14, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %32 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @NT_SUCCESS(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %120

38:                                               ; preds = %2
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %117

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %13, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* @SysCredReferences, align 4
  %52 = load i32, i32* @SysCredReferences, align 4
  %53 = call i32 @ARRAYSIZE(i32 %52)
  %54 = call i64 @kuhl_m_sekurlsa_utils_search_generic(%struct.TYPE_14__* @cLsass, %struct.TYPE_15__* %50, i32 %51, i32 %53, i8** %9, i8** %10, i8** %11, i32* null)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %114

56:                                               ; preds = %44
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32** %12, i32*** %61, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = bitcast i8* %62 to i32**
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32** %63, i32*** %64, align 8
  %65 = call i64 @kull_m_memory_copy(%struct.TYPE_13__* %7, %struct.TYPE_13__* %6, i32 8)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %113

67:                                               ; preds = %56
  %68 = load i32*, i32** %12, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %110

70:                                               ; preds = %67
  %71 = call i32 @kprintf(i8* bitcast ([14 x i32]* @.str to i8*))
  %72 = bitcast i32* %31 to i32**
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32** %72, i32*** %73, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = bitcast i8* %74 to i32**
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32** %75, i32*** %76, align 8
  %77 = mul nuw i64 4, %29
  %78 = trunc i64 %77 to i32
  %79 = call i64 @kull_m_memory_copy(%struct.TYPE_13__* %7, %struct.TYPE_13__* %6, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %70
  %82 = bitcast i32* %34 to i32**
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32** %82, i32*** %83, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = bitcast i8* %84 to i32**
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32** %85, i32*** %86, align 8
  %87 = mul nuw i64 4, %33
  %88 = trunc i64 %87 to i32
  %89 = call i64 @kull_m_memory_copy(%struct.TYPE_13__* %7, %struct.TYPE_13__* %6, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %81
  %92 = call i32 @kprintf(i8* bitcast ([7 x i32]* @.str.1 to i8*))
  %93 = mul nuw i64 4, %29
  %94 = trunc i64 %93 to i32
  %95 = call i32 @kull_m_string_wprintf_hex(i32* %31, i32 %94, i32 0)
  %96 = mul nuw i64 4, %33
  %97 = trunc i64 %96 to i32
  %98 = call i32 @kull_m_string_wprintf_hex(i32* %34, i32 %97, i32 0)
  %99 = call i32 @kprintf(i8* bitcast ([8 x i32]* @.str.2 to i8*))
  %100 = mul nuw i64 4, %29
  %101 = trunc i64 %100 to i32
  %102 = call i32 @kull_m_string_wprintf_hex(i32* %31, i32 %101, i32 0)
  %103 = call i32 @kprintf(i8* bitcast ([4 x i32]* @.str.3 to i8*))
  %104 = mul nuw i64 4, %33
  %105 = trunc i64 %104 to i32
  %106 = call i32 @kull_m_string_wprintf_hex(i32* %34, i32 %105, i32 0)
  %107 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  br label %108

108:                                              ; preds = %91, %81
  br label %109

109:                                              ; preds = %108, %70
  br label %112

110:                                              ; preds = %67
  %111 = call i32 @PRINT_ERROR(i8* bitcast ([18 x i32]* @.str.5 to i8*))
  br label %112

112:                                              ; preds = %110, %109
  br label %113

113:                                              ; preds = %112, %56
  br label %116

114:                                              ; preds = %44
  %115 = call i32 @PRINT_ERROR(i8* bitcast ([36 x i32]* @.str.6 to i8*))
  br label %116

116:                                              ; preds = %114, %113
  br label %119

117:                                              ; preds = %38
  %118 = call i32 @PRINT_ERROR(i8* bitcast ([35 x i32]* @.str.7 to i8*))
  br label %119

119:                                              ; preds = %117, %116
  br label %120

120:                                              ; preds = %119, %2
  %121 = load i32, i32* %5, align 4
  %122 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %122)
  ret i32 %121
}

declare dso_local i32 @kuhl_m_sekurlsa_acquireLSA(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i64 @kuhl_m_sekurlsa_utils_search_generic(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @ARRAYSIZE(i32) #1

declare dso_local i64 @kull_m_memory_copy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
