; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_exclude.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_exclude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range = type { i64, i64 }
%struct.RangeList = type { i32, %struct.Range*, i32, i32 }

@INVALID_RANGE = common dso_local global %struct.Range zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rangelist_exclude(%struct.RangeList* %0, %struct.RangeList* %1) #0 {
  %3 = alloca %struct.RangeList*, align 8
  %4 = alloca %struct.RangeList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.RangeList, align 8
  %8 = alloca %struct.Range, align 8
  %9 = alloca %struct.Range, align 8
  store %struct.RangeList* %0, %struct.RangeList** %3, align 8
  store %struct.RangeList* %1, %struct.RangeList** %4, align 8
  %10 = bitcast %struct.RangeList* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.RangeList*, %struct.RangeList** %3, align 8
  %12 = call i32 @rangelist_sort(%struct.RangeList* %11)
  %13 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %14 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @assert(i32 %15)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %135, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.RangeList*, %struct.RangeList** %3, align 8
  %20 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %138

23:                                               ; preds = %17
  %24 = load %struct.RangeList*, %struct.RangeList** %3, align 8
  %25 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %24, i32 0, i32 1
  %26 = load %struct.Range*, %struct.Range** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.Range, %struct.Range* %26, i64 %28
  %30 = bitcast %struct.Range* %8 to i8*
  %31 = bitcast %struct.Range* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  br label %32

32:                                               ; preds = %52, %23
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %35 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %40 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %39, i32 0, i32 1
  %41 = load %struct.Range*, %struct.Range** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.Range, %struct.Range* %41, i64 %43
  %45 = getelementptr inbounds %struct.Range, %struct.Range* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %46, %48
  br label %50

50:                                               ; preds = %38, %32
  %51 = phi i1 [ false, %32 ], [ %49, %38 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %32

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %117, %55
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %59 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %64 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %63, i32 0, i32 1
  %65 = load %struct.Range*, %struct.Range** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.Range, %struct.Range* %65, i64 %67
  %69 = getelementptr inbounds %struct.Range, %struct.Range* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %70, %72
  br label %74

74:                                               ; preds = %62, %56
  %75 = phi i1 [ false, %56 ], [ %73, %62 ]
  br i1 %75, label %76, label %120

76:                                               ; preds = %74
  %77 = bitcast %struct.Range* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 bitcast (%struct.Range* @INVALID_RANGE to i8*), i64 16, i1 false)
  %78 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %79 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %78, i32 0, i32 1
  %80 = load %struct.Range*, %struct.Range** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.Range, %struct.Range* %80, i64 %82
  %84 = bitcast %struct.Range* %83 to { i64, i64 }*
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @range_apply_exclude(i64 %86, i64 %88, %struct.Range* %8, %struct.Range* %9)
  %90 = bitcast %struct.Range* %9 to { i64, i64 }*
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %90, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @range_is_valid(i64 %92, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %76
  %98 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @rangelist_add_range(%struct.RangeList* %7, i64 %99, i64 %101)
  %103 = call i32 @memcpy(%struct.Range* %8, %struct.Range* %9, i32 16)
  br label %104

104:                                              ; preds = %97, %76
  %105 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %106 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %105, i32 0, i32 1
  %107 = load %struct.Range*, %struct.Range** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.Range, %struct.Range* %107, i64 %109
  %111 = getelementptr inbounds %struct.Range, %struct.Range* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %120

117:                                              ; preds = %104
  %118 = load i32, i32* %6, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %56

120:                                              ; preds = %116, %74
  %121 = bitcast %struct.Range* %8 to { i64, i64 }*
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @range_is_valid(i64 %123, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @rangelist_add_range(%struct.RangeList* %7, i64 %130, i64 %132)
  br label %134

134:                                              ; preds = %128, %120
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %5, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %17

138:                                              ; preds = %17
  %139 = load %struct.RangeList*, %struct.RangeList** %3, align 8
  %140 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %139, i32 0, i32 1
  %141 = load %struct.Range*, %struct.Range** %140, align 8
  %142 = call i32 @free(%struct.Range* %141)
  %143 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %7, i32 0, i32 1
  %144 = load %struct.Range*, %struct.Range** %143, align 8
  %145 = load %struct.RangeList*, %struct.RangeList** %3, align 8
  %146 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %145, i32 0, i32 1
  store %struct.Range* %144, %struct.Range** %146, align 8
  %147 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %7, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.RangeList*, %struct.RangeList** %3, align 8
  %150 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %7, i32 0, i32 1
  store %struct.Range* null, %struct.Range** %151, align 8
  %152 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %7, i32 0, i32 0
  store i32 0, i32* %152, align 8
  %153 = load %struct.RangeList*, %struct.RangeList** %3, align 8
  %154 = call i32 @rangelist_sort(%struct.RangeList* %153)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rangelist_sort(%struct.RangeList*) #2

declare dso_local i32 @assert(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @range_apply_exclude(i64, i64, %struct.Range*, %struct.Range*) #2

declare dso_local i64 @range_is_valid(i64, i64) #2

declare dso_local i32 @rangelist_add_range(%struct.RangeList*, i64, i64) #2

declare dso_local i32 @memcpy(%struct.Range*, %struct.Range*, i32) #2

declare dso_local i32 @free(%struct.Range*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
