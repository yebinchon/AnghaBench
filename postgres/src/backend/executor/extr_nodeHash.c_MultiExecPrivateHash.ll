; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_MultiExecPrivateHash.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_MultiExecPrivateHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, i32*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32, i64, i64, i64, i64, i32, i32 }

@INVALID_SKEW_BUCKET_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @MultiExecPrivateHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MultiExecPrivateHash(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = call i32* @outerPlanState(%struct.TYPE_14__* %10)
  store i32* %11, i32** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %4, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %7, align 8
  br label %22

22:                                               ; preds = %68, %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32* @ExecProcNode(i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @TupIsNull(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %69

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ExecHashGetHashValue(%struct.TYPE_15__* %33, %struct.TYPE_16__* %34, i32* %35, i32 0, i32 %38, i32* %8)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %29
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ExecHashGetSkewBucket(%struct.TYPE_15__* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @INVALID_SKEW_BUCKET_NO, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @ExecHashSkewTableInsert(%struct.TYPE_15__* %49, i32* %50, i32 %51, i32 %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %63

58:                                               ; preds = %41
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @ExecHashTableInsert(%struct.TYPE_15__* %59, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %48
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %29
  br label %22

69:                                               ; preds = %28
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = call i32 @ExecHashIncreaseNumBuckets(%struct.TYPE_15__* %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = mul i64 %83, 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %80
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %96, %80
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  ret void
}

declare dso_local i32* @outerPlanState(%struct.TYPE_14__*) #1

declare dso_local i32* @ExecProcNode(i32*) #1

declare dso_local i64 @TupIsNull(i32*) #1

declare dso_local i64 @ExecHashGetHashValue(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ExecHashGetSkewBucket(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ExecHashSkewTableInsert(%struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @ExecHashTableInsert(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @ExecHashIncreaseNumBuckets(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
