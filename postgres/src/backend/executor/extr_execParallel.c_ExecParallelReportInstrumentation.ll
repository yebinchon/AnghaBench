; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelReportInstrumentation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execParallel.c_ExecParallelReportInstrumentation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32*, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"plan node %d not found\00", align 1
@ParallelWorkerNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @ExecParallelReportInstrumentation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecParallelReportInstrumentation(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @InstrEndLoop(i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %35, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %17

38:                                               ; preds = %33, %17
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = call i32* @GetInstrumentationArray(%struct.TYPE_12__* %49)
  store i32* %50, i32** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = load i32*, i32** %7, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %7, align 8
  %59 = call i32 (...) @IsParallelWorker()
  %60 = call i32 @Assert(i32 %59)
  %61 = load i64, i64* @ParallelWorkerNumber, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %61, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i64, i64* @ParallelWorkerNumber, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @InstrAggNode(i32* %71, i32 %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = call i32 @planstate_tree_walker(%struct.TYPE_13__* %76, i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @ExecParallelReportInstrumentation, %struct.TYPE_12__* %77)
  ret i32 %78
}

declare dso_local i32 @InstrEndLoop(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @GetInstrumentationArray(%struct.TYPE_12__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsParallelWorker(...) #1

declare dso_local i32 @InstrAggNode(i32*, i32) #1

declare dso_local i32 @planstate_tree_walker(%struct.TYPE_13__*, i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
