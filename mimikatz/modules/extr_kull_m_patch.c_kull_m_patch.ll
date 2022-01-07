; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_patch.c_kull_m_patch.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_patch.c_kull_m_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32*, i32* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_21__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KULL_M_MEMORY_GLOBAL_OWN_HANDLE = common dso_local global i32 0, align 4
@__const.kull_m_patch.backup = private unnamed_addr constant %struct.TYPE_20__ { i64 0, i32* @KULL_M_MEMORY_GLOBAL_OWN_HANDLE, i32* null }, align 8
@LPTR = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@PAGE_EXECUTE_READWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_patch(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32 %2, %struct.TYPE_20__* %3, i32 %4, i64 %5, i32 (i32, i32**)* %6, i32 %7, i32** %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32 (i32, i32**)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_20__, align 8
  %25 = alloca %struct.TYPE_20__, align 8
  %26 = alloca %struct.TYPE_21__, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %14, align 8
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i32 (i32, i32**)* %6, i32 (i32, i32**)** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32** %8, i32*** %19, align 8
  store i32* %9, i32** %20, align 8
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %21, align 4
  %32 = load i32 (i32, i32**)*, i32 (i32, i32**)** %17, align 8
  %33 = icmp ne i32 (i32, i32**)* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %22, align 4
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %23, align 4
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %38, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = bitcast %struct.TYPE_20__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 bitcast (%struct.TYPE_20__* @__const.kull_m_patch.backup to i8*), i64 24, i1 false)
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i64 @kull_m_memory_search(%struct.TYPE_20__* %46, i32 %47, %struct.TYPE_19__* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %160

52:                                               ; preds = %10
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %16, align 8
  %57 = add nsw i64 %55, %56
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* %22, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* @LPTR, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i64 @LocalAlloc(i32 %62, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = icmp ne i64 %64, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @kull_m_memory_copy(%struct.TYPE_20__* %25, %struct.TYPE_20__* %24, i32 %68)
  store i32 %69, i32* %22, align 4
  br label %70

70:                                               ; preds = %67, %61
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i32, i32* %22, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %159

74:                                               ; preds = %71
  %75 = call i64 @kull_m_memory_query(%struct.TYPE_20__* %24, %struct.TYPE_21__* %26)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %150

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, -256
  store i32 %80, i32* %28, align 4
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 15
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 15
  %89 = load i32, i32* @PAGE_READWRITE, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @PAGE_READWRITE, align 4
  store i32 %92, i32* %30, align 4
  br label %107

93:                                               ; preds = %85, %77
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 240
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 240
  %102 = load i32, i32* @PAGE_EXECUTE_READWRITE, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @PAGE_EXECUTE_READWRITE, align 4
  store i32 %105, i32* %30, align 4
  br label %106

106:                                              ; preds = %104, %98, %93
  br label %107

107:                                              ; preds = %106, %91
  %108 = load i32, i32* %30, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %30, align 4
  %113 = load i32, i32* %28, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @kull_m_memory_protect(%struct.TYPE_20__* %24, i32 %111, i32 %114, i32* %29)
  store i32 %115, i32* %23, align 4
  br label %116

116:                                              ; preds = %110, %107
  %117 = load i32, i32* %23, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %149

119:                                              ; preds = %116
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @kull_m_memory_copy(%struct.TYPE_20__* %24, %struct.TYPE_20__* %120, i32 %121)
  store i32 %122, i32* %21, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %119
  %125 = load i32 (i32, i32**)*, i32 (i32, i32**)** %17, align 8
  %126 = icmp ne i32 (i32, i32**)* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load i32 (i32, i32**)*, i32 (i32, i32**)** %17, align 8
  %129 = load i32, i32* %18, align 4
  %130 = load i32**, i32*** %19, align 8
  %131 = call i32 %128(i32 %129, i32** %130)
  store i32 %131, i32* %27, align 4
  %132 = load i32*, i32** %20, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i32, i32* %27, align 4
  %136 = load i32*, i32** %20, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %127
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @kull_m_memory_copy(%struct.TYPE_20__* %24, %struct.TYPE_20__* %25, i32 %138)
  store i32 %139, i32* %21, align 4
  br label %140

140:                                              ; preds = %137, %124
  br label %141

141:                                              ; preds = %140, %119
  %142 = load i32, i32* %29, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %29, align 4
  %147 = call i32 @kull_m_memory_protect(%struct.TYPE_20__* %24, i32 %145, i32 %146, i32* null)
  br label %148

148:                                              ; preds = %144, %141
  br label %149

149:                                              ; preds = %148, %116
  br label %150

150:                                              ; preds = %149, %74
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @LocalFree(i64 %156)
  br label %158

158:                                              ; preds = %154, %150
  br label %159

159:                                              ; preds = %158, %71
  br label %160

160:                                              ; preds = %159, %10
  %161 = load i32, i32* %21, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @kull_m_memory_search(%struct.TYPE_20__*, i32, %struct.TYPE_19__*, i32) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @kull_m_memory_copy(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #2

declare dso_local i64 @kull_m_memory_query(%struct.TYPE_20__*, %struct.TYPE_21__*) #2

declare dso_local i32 @kull_m_memory_protect(%struct.TYPE_20__*, i32, i32, i32*) #2

declare dso_local i32 @LocalFree(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
