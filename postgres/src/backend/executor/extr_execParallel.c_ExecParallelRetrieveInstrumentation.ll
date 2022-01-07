; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelRetrieveInstrumentation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelRetrieveInstrumentation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_15__*, i32, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32*, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"plan node %d not found\00", align 1
@WorkerInstrumentation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @ExecParallelRetrieveInstrumentation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecParallelRetrieveInstrumentation(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %37

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %16

37:                                               ; preds = %32, %16
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @elog(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = call i32* @GetInstrumentationArray(%struct.TYPE_16__* %48)
  store i32* %49, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = load i32*, i32** %5, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %73, %47
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @InstrAggNode(i32 %67, i32* %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @MemoryContextSwitchTo(i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @mul_size(i32 %85, i32 4)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = load i32, i32* @WorkerInstrumentation, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = call i64 @offsetof(i32 %89, i32* %90)
  %92 = add nsw i64 %88, %91
  %93 = call %struct.TYPE_18__* @palloc(i64 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %95, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @MemoryContextSwitchTo(i32 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @memcpy(i32* %108, i32* %109, i32 %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = call i32 @nodeTag(%struct.TYPE_17__* %112)
  switch i32 %113, label %122 [
    i32 128, label %114
    i32 129, label %118
  ]

114:                                              ; preds = %76
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %116 = bitcast %struct.TYPE_17__* %115 to i32*
  %117 = call i32 @ExecSortRetrieveInstrumentation(i32* %116)
  br label %123

118:                                              ; preds = %76
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %120 = bitcast %struct.TYPE_17__* %119 to i32*
  %121 = call i32 @ExecHashRetrieveInstrumentation(i32* %120)
  br label %123

122:                                              ; preds = %76
  br label %123

123:                                              ; preds = %122, %118, %114
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %126 = call i32 @planstate_tree_walker(%struct.TYPE_17__* %124, i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @ExecParallelRetrieveInstrumentation, %struct.TYPE_16__* %125)
  ret i32 %126
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @GetInstrumentationArray(%struct.TYPE_16__*) #1

declare dso_local i32 @InstrAggNode(i32, i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @mul_size(i32, i32) #1

declare dso_local %struct.TYPE_18__* @palloc(i64) #1

declare dso_local i64 @offsetof(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nodeTag(%struct.TYPE_17__*) #1

declare dso_local i32 @ExecSortRetrieveInstrumentation(i32*) #1

declare dso_local i32 @ExecHashRetrieveInstrumentation(i32*) #1

declare dso_local i32 @planstate_tree_walker(%struct.TYPE_17__*, i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
