; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_scan_analyze_next_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_scan_analyze_next_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unexpected HeapTupleSatisfiesVacuum result\00", align 1
@InvalidBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, double*, double*, i32*)* @heapam_scan_analyze_next_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heapam_scan_analyze_next_tuple(%struct.TYPE_10__* %0, i32 %1, double* %2, double* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32 %1, i32* %8, align 4
  store double* %2, double** %9, align 8
  store double* %3, double** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = bitcast %struct.TYPE_10__* %19 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %12, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @TTS_IS_BUFFERTUPLE(i32* %21)
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32*, i32** %11, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %15, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @BufferGetPage(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i64 @PageGetMaxOffsetNumber(i32 %30)
  store i64 %31, i64* %14, align 8
  br label %32

32:                                               ; preds = %144, %5
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %149

38:                                               ; preds = %32
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %17, align 8
  store i32 0, i32* %18, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @PageGetItemId(i32 %42, i64 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @ItemIdIsNormal(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %16, align 4
  %52 = call i64 @ItemIdIsDead(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load double*, double** %10, align 8
  %56 = load double, double* %55, align 8
  %57 = fadd double %56, 1.000000e+00
  store double %57, double* %55, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %144

59:                                               ; preds = %38
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ItemPointerSet(i32* %61, i32 %64, i64 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @RelationGetRelid(i32 %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i64 @PageGetItem(i32 %75, i32 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @ItemIdGetLength(i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_11__* %84, i32 %85, i32 %88)
  switch i32 %89, label %126 [
    i32 129, label %90
    i32 132, label %94
    i32 128, label %94
    i32 130, label %98
    i32 131, label %110
  ]

90:                                               ; preds = %59
  store i32 1, i32* %18, align 4
  %91 = load double*, double** %9, align 8
  %92 = load double, double* %91, align 8
  %93 = fadd double %92, 1.000000e+00
  store double %93, double* %91, align 8
  br label %129

94:                                               ; preds = %59, %59
  %95 = load double*, double** %10, align 8
  %96 = load double, double* %95, align 8
  %97 = fadd double %96, 1.000000e+00
  store double %97, double* %95, align 8
  br label %129

98:                                               ; preds = %59
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @HeapTupleHeaderGetXmin(i64 %101)
  %103 = call i32 @TransactionIdIsCurrentTransactionId(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  store i32 1, i32* %18, align 4
  %106 = load double*, double** %9, align 8
  %107 = load double, double* %106, align 8
  %108 = fadd double %107, 1.000000e+00
  store double %108, double* %106, align 8
  br label %109

109:                                              ; preds = %105, %98
  br label %129

110:                                              ; preds = %59
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @HeapTupleHeaderGetUpdateXid(i64 %113)
  %115 = call i32 @TransactionIdIsCurrentTransactionId(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load double*, double** %10, align 8
  %119 = load double, double* %118, align 8
  %120 = fadd double %119, 1.000000e+00
  store double %120, double* %118, align 8
  br label %125

121:                                              ; preds = %110
  store i32 1, i32* %18, align 4
  %122 = load double*, double** %9, align 8
  %123 = load double, double* %122, align 8
  %124 = fadd double %123, 1.000000e+00
  store double %124, double* %122, align 8
  br label %125

125:                                              ; preds = %121, %117
  br label %129

126:                                              ; preds = %59
  %127 = load i32, i32* @ERROR, align 4
  %128 = call i32 @elog(i32 %127, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %125, %109, %94, %90
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @ExecStoreBufferHeapTuple(%struct.TYPE_11__* %133, i32* %134, i32 %137)
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %140, align 8
  store i32 1, i32* %6, align 4
  br label %159

143:                                              ; preds = %129
  br label %144

144:                                              ; preds = %143, %58
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %146, align 8
  br label %32

149:                                              ; preds = %32
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @UnlockReleaseBuffer(i32 %152)
  %154 = load i32, i32* @InvalidBuffer, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = call i32 @ExecClearTuple(i32* %157)
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %149, %132
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TTS_IS_BUFFERTUPLE(i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i64 @ItemIdIsDead(i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i32, i64) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i32 @HeapTupleHeaderGetXmin(i64) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(i64) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ExecStoreBufferHeapTuple(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
