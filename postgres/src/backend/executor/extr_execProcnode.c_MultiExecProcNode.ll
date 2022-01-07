; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execProcnode.c_MultiExecProcNode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execProcnode.c_MultiExecProcNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @MultiExecProcNode(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = call i32 (...) @check_stack_depth()
  %5 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = call i32 @ExecReScan(%struct.TYPE_5__* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = call i32 @nodeTag(%struct.TYPE_5__* %14)
  switch i32 %15, label %32 [
    i32 128, label %16
    i32 130, label %20
    i32 131, label %24
    i32 129, label %28
  ]

16:                                               ; preds = %13
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = bitcast %struct.TYPE_5__* %17 to i32*
  %19 = call i32* @MultiExecHash(i32* %18)
  store i32* %19, i32** %3, align 8
  br label %37

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = bitcast %struct.TYPE_5__* %21 to i32*
  %23 = call i32* @MultiExecBitmapIndexScan(i32* %22)
  store i32* %23, i32** %3, align 8
  br label %37

24:                                               ; preds = %13
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = bitcast %struct.TYPE_5__* %25 to i32*
  %27 = call i32* @MultiExecBitmapAnd(i32* %26)
  store i32* %27, i32** %3, align 8
  br label %37

28:                                               ; preds = %13
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = bitcast %struct.TYPE_5__* %29 to i32*
  %31 = call i32* @MultiExecBitmapOr(i32* %30)
  store i32* %31, i32** %3, align 8
  br label %37

32:                                               ; preds = %13
  %33 = load i32, i32* @ERROR, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = call i32 @nodeTag(%struct.TYPE_5__* %34)
  %36 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32* null, i32** %3, align 8
  br label %37

37:                                               ; preds = %32, %28, %24, %20, %16
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ExecReScan(%struct.TYPE_5__*) #1

declare dso_local i32 @nodeTag(%struct.TYPE_5__*) #1

declare dso_local i32* @MultiExecHash(i32*) #1

declare dso_local i32* @MultiExecBitmapIndexScan(i32*) #1

declare dso_local i32* @MultiExecBitmapAnd(i32*) #1

declare dso_local i32* @MultiExecBitmapOr(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
