; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_parallel_scan_and_sort.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_parallel_scan_and_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i8*, i32, i32 }
%struct.TYPE_17__ = type { double, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_18__ = type { i32, i64, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }

@work_mem = common dso_local global i32 0, align 4
@_bt_build_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32*, i32*, i32, i32)* @_bt_parallel_scan_and_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_parallel_scan_and_sort(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_18__, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = call %struct.TYPE_14__* @palloc0(i32 4)
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %15, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %40 = call i8* @tuplesort_begin_index_btree(i32 %31, i32 %34, i32 %37, i32 %38, %struct.TYPE_14__* %39, i32 0)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = icmp ne %struct.TYPE_16__* %43, null
  br i1 %44, label %45, label %67

45:                                               ; preds = %7
  %46 = call %struct.TYPE_14__* @palloc0(i32 4)
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %20, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @work_mem, align 4
  %62 = call i32 @Min(i32 %60, i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %64 = call i8* @tuplesort_begin_index_btree(i32 %56, i32 %59, i32 0, i32 %62, %struct.TYPE_14__* %63, i32 0)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %45, %7
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 6
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 5
  store i32 %75, i32* %76, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 4
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 3
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  store i32* null, i32** %82, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.TYPE_15__* @BuildIndexInfo(i32 %85)
  store %struct.TYPE_15__* %86, %struct.TYPE_15__** %19, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %96 = call i32 @ParallelTableScanFromBTShared(%struct.TYPE_17__* %95)
  %97 = call i32 @table_beginscan_parallel(i32 %94, i32 %96)
  store i32 %97, i32* %17, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @_bt_build_callback, align 4
  %107 = bitcast %struct.TYPE_18__* %16 to i8*
  %108 = load i32, i32* %17, align 4
  %109 = call double @table_index_build_scan(i32 %100, i32 %103, %struct.TYPE_15__* %104, i32 1, i32 %105, i32 %106, i8* %107, i32 %108)
  store double %109, double* %18, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @tuplesort_performsort(i8* %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %115 = icmp ne %struct.TYPE_16__* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %67
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @tuplesort_performsort(i8* %119)
  br label %121

121:                                              ; preds = %116, %67
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 4
  %124 = call i32 @SpinLockAcquire(i32* %123)
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load double, double* %18, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load double, double* %131, align 8
  %133 = fadd double %132, %129
  store double %133, double* %131, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %121
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %121
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %142
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %140
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 2
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %140
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 4
  %159 = call i32 @SpinLockRelease(i32* %158)
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 3
  %162 = call i32 @ConditionVariableSignal(i32* %161)
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @tuplesort_end(i8* %165)
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %168 = icmp ne %struct.TYPE_16__* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %156
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @tuplesort_end(i8* %172)
  br label %174

174:                                              ; preds = %169, %156
  ret void
}

declare dso_local %struct.TYPE_14__* @palloc0(i32) #1

declare dso_local i8* @tuplesort_begin_index_btree(i32, i32, i32, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local %struct.TYPE_15__* @BuildIndexInfo(i32) #1

declare dso_local i32 @table_beginscan_parallel(i32, i32) #1

declare dso_local i32 @ParallelTableScanFromBTShared(%struct.TYPE_17__*) #1

declare dso_local double @table_index_build_scan(i32, i32, %struct.TYPE_15__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @tuplesort_performsort(i8*) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @ConditionVariableSignal(i32*) #1

declare dso_local i32 @tuplesort_end(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
