; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecHashTableInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecHashTableInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, double, double, i32, double, i32, i64, i64, i64, i32*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }

@HJTUPLE_OVERHEAD = common dso_local global i32 0, align 4
@NTUP_PER_BUCKET = common dso_local global double 0.000000e+00, align 8
@INT_MAX = common dso_local global i32 0, align 4
@MaxAllocSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecHashTableInsert(%struct.TYPE_19__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_17__* @ExecFetchSlotMinimalTuple(i32* %14, i32* %7)
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %8, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ExecHashGetBucketAndBatch(%struct.TYPE_19__* %16, i32 %17, i32* %9, i32* %10)
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %152

24:                                               ; preds = %3
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 2
  %30 = load double, double* %29, align 8
  %31 = fsub double %27, %30
  store double %31, double* %13, align 8
  %32 = load i32, i32* @HJTUPLE_OVERHEAD, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i64 @dense_alloc(%struct.TYPE_19__* %37, i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %11, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %45 = call i32 @HJTUPLE_MINTUPLE(%struct.TYPE_18__* %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32 %45, %struct.TYPE_17__* %46, i32 %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %52 = call i32 @HJTUPLE_MINTUPLE(%struct.TYPE_18__* %51)
  %53 = call i32 @HeapTupleHeaderClearMatch(i32 %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 10
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %57, i64 %59
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %64, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 10
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %69, i64 %71
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %72, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %113

77:                                               ; preds = %24
  %78 = load double, double* %13, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 4
  %81 = load double, double* %80, align 8
  %82 = load double, double* @NTUP_PER_BUCKET, align 8
  %83 = fmul double %81, %82
  %84 = fcmp ogt double %78, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %77
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 4
  %88 = load double, double* %87, align 8
  %89 = load i32, i32* @INT_MAX, align 4
  %90 = sdiv i32 %89, 2
  %91 = sitofp i32 %90 to double
  %92 = fcmp ole double %88, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %85
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 4
  %96 = load double, double* %95, align 8
  %97 = fmul double %96, 2.000000e+00
  %98 = load i32, i32* @MaxAllocSize, align 4
  %99 = sext i32 %98 to i64
  %100 = udiv i64 %99, 8
  %101 = uitofp i64 %100 to double
  %102 = fcmp ole double %97, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %93
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 4
  %106 = load double, double* %105, align 8
  %107 = fmul double %106, 2.000000e+00
  store double %107, double* %105, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %103, %93, %85
  br label %113

113:                                              ; preds = %112, %77, %24
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %115
  store i64 %119, i64* %117, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %113
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 7
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %127, %113
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = sitofp i64 %136 to double
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 4
  %140 = load double, double* %139, align 8
  %141 = fmul double %140, 8.000000e+00
  %142 = fadd double %137, %141
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 8
  %145 = load i64, i64* %144, align 8
  %146 = sitofp i64 %145 to double
  %147 = fcmp ogt double %142, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %133
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = call i32 @ExecHashIncreaseNumBatches(%struct.TYPE_19__* %149)
  br label %151

151:                                              ; preds = %148, %133
  br label %169

152:                                              ; preds = %3
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp sgt i32 %153, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @Assert(i32 %158)
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 9
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = call i32 @ExecHashJoinSaveTuple(%struct.TYPE_17__* %160, i32 %161, i32* %167)
  br label %169

169:                                              ; preds = %152, %151
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %174 = call i32 @heap_free_minimal_tuple(%struct.TYPE_17__* %173)
  br label %175

175:                                              ; preds = %172, %169
  ret void
}

declare dso_local %struct.TYPE_17__* @ExecFetchSlotMinimalTuple(i32*, i32*) #1

declare dso_local i32 @ExecHashGetBucketAndBatch(%struct.TYPE_19__*, i32, i32*, i32*) #1

declare dso_local i64 @dense_alloc(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @HJTUPLE_MINTUPLE(%struct.TYPE_18__*) #1

declare dso_local i32 @HeapTupleHeaderClearMatch(i32) #1

declare dso_local i32 @ExecHashIncreaseNumBatches(%struct.TYPE_19__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ExecHashJoinSaveTuple(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @heap_free_minimal_tuple(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
