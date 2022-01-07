; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_begin_heap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_begin_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64, i32 }

@HEAP_SORT = common dso_local global i32 0, align 4
@comparetup_heap = common dso_local global i32 0, align 4
@copytup_heap = common dso_local global i32 0, align 4
@writetup_heap = common dso_local global i32 0, align 4
@readtup_heap = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@trace_sort = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @tuplesort_begin_heap(i32 %0, i32 %1, i64* %2, i64* %3, i64* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* %18, align 4
  %26 = call %struct.TYPE_7__* @tuplesort_begin_common(i32 %23, i32 %24, i32 %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %19, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @MemoryContextSwitchTo(i32 %29)
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @AssertArg(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @HEAP_SORT, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %43 = call i32 @PARALLEL_SORT(%struct.TYPE_7__* %42)
  %44 = call i32 @TRACE_POSTGRESQL_SORT_START(i32 %38, i32 0, i32 %39, i32 %40, i32 %41, i32 %43)
  %45 = load i32, i32* @comparetup_heap, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @copytup_heap, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @writetup_heap, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @readtup_heap, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 10, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i64 @palloc0(i32 %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_8__*
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %69, align 8
  store i32 0, i32* %21, align 4
  br label %70

70:                                               ; preds = %133, %9
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %136

74:                                               ; preds = %70
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %22, align 8
  %81 = load i64*, i64** %12, align 8
  %82 = load i32, i32* %21, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @AssertArg(i32 %87)
  %89 = load i64*, i64** %13, align 8
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @AssertArg(i32 %95)
  %97 = load i32, i32* @CurrentMemoryContext, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load i64*, i64** %14, align 8
  %101 = load i32, i32* %21, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = load i32, i32* %21, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i64*, i64** %12, align 8
  %115 = load i32, i32* %21, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* %21, align 4
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i64*, i64** %13, align 8
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %132 = call i32 @PrepareSortSupportFromOrderingOp(i64 %130, %struct.TYPE_8__* %131)
  br label %133

133:                                              ; preds = %74
  %134 = load i32, i32* %21, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %21, align 4
  br label %70

136:                                              ; preds = %70
  %137 = load i32, i32* %11, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %139
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  store %struct.TYPE_8__* %149, %struct.TYPE_8__** %151, align 8
  br label %152

152:                                              ; preds = %146, %139, %136
  %153 = load i32, i32* %20, align 4
  %154 = call i32 @MemoryContextSwitchTo(i32 %153)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  ret %struct.TYPE_7__* %155
}

declare dso_local %struct.TYPE_7__* @tuplesort_begin_common(i32, i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_SORT_START(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PARALLEL_SORT(%struct.TYPE_7__*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @PrepareSortSupportFromOrderingOp(i64, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
