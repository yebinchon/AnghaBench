; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecHashIncreaseNumBuckets.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecHashIncreaseNumBuckets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__** }
%struct.TYPE_20__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_15__ = type { i64 }

@INT_MAX = common dso_local global i32 0, align 4
@HJTUPLE_OVERHEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @ExecHashIncreaseNumBuckets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecHashIncreaseNumBuckets(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %136

16:                                               ; preds = %1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @INT_MAX, align 4
  %37 = sdiv i32 %36, 2
  %38 = icmp sle i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  %48 = icmp eq i32 %43, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @Assert(i32 %49)
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %53, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @repalloc(%struct.TYPE_20__** %54, i32 %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_20__**
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  store %struct.TYPE_20__** %62, %struct.TYPE_20__*** %65, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memset(%struct.TYPE_20__** %69, i32 0, i32 %75)
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %3, align 8
  br label %80

80:                                               ; preds = %131, %16
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %82 = icmp ne %struct.TYPE_19__* %81, null
  br i1 %82, label %83, label %136

83:                                               ; preds = %80
  store i64 0, i64* %4, align 8
  br label %84

84:                                               ; preds = %90, %83
  %85 = load i64, i64* %4, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %129

90:                                               ; preds = %84
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %92 = call i64 @HASH_CHUNK_DATA(%struct.TYPE_19__* %91)
  %93 = load i64, i64* %4, align 8
  %94 = add i64 %92, %93
  %95 = inttoptr i64 %94 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %95, %struct.TYPE_20__** %5, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ExecHashGetBucketAndBatch(%struct.TYPE_21__* %96, i32 %99, i32* %6, i32* %7)
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %104, i64 %106
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  store %struct.TYPE_20__* %108, %struct.TYPE_20__** %111, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %116, i64 %118
  store %struct.TYPE_20__* %112, %struct.TYPE_20__** %119, align 8
  %120 = load i64, i64* @HJTUPLE_OVERHEAD, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %122 = call %struct.TYPE_15__* @HJTUPLE_MINTUPLE(%struct.TYPE_20__* %121)
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %120, %124
  %126 = call i64 @MAXALIGN(i64 %125)
  %127 = load i64, i64* %4, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %4, align 8
  br label %84

129:                                              ; preds = %84
  %130 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %131

131:                                              ; preds = %129
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  store %struct.TYPE_19__* %135, %struct.TYPE_19__** %3, align 8
  br label %80

136:                                              ; preds = %15, %80
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_20__**, i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__**, i32, i32) #1

declare dso_local i64 @HASH_CHUNK_DATA(%struct.TYPE_19__*) #1

declare dso_local i32 @ExecHashGetBucketAndBatch(%struct.TYPE_21__*, i32, i32*, i32*) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local %struct.TYPE_15__* @HJTUPLE_MINTUPLE(%struct.TYPE_20__*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
