; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execProcnode.c_ExecShutdownNode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execProcnode.c_ExecShutdownNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecShutdownNode(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %5 = icmp eq %struct.TYPE_8__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

7:                                                ; preds = %1
  %8 = call i32 (...) @check_stack_depth()
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = call i32 @planstate_tree_walker(%struct.TYPE_8__* %9, i32 (%struct.TYPE_8__*)* @ExecShutdownNode, i32* null)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %7
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = call i32 @InstrStartNode(%struct.TYPE_9__* %25)
  br label %27

27:                                               ; preds = %22, %15, %7
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = call i32 @nodeTag(%struct.TYPE_8__* %28)
  switch i32 %29, label %54 [
    i32 130, label %30
    i32 132, label %34
    i32 133, label %38
    i32 131, label %42
    i32 128, label %46
    i32 129, label %50
  ]

30:                                               ; preds = %27
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = bitcast %struct.TYPE_8__* %31 to i32*
  %33 = call i32 @ExecShutdownGather(i32* %32)
  br label %55

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = bitcast %struct.TYPE_8__* %35 to i32*
  %37 = call i32 @ExecShutdownForeignScan(i32* %36)
  br label %55

38:                                               ; preds = %27
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = bitcast %struct.TYPE_8__* %39 to i32*
  %41 = call i32 @ExecShutdownCustomScan(i32* %40)
  br label %55

42:                                               ; preds = %27
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = bitcast %struct.TYPE_8__* %43 to i32*
  %45 = call i32 @ExecShutdownGatherMerge(i32* %44)
  br label %55

46:                                               ; preds = %27
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = bitcast %struct.TYPE_8__* %47 to i32*
  %49 = call i32 @ExecShutdownHash(i32* %48)
  br label %55

50:                                               ; preds = %27
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = bitcast %struct.TYPE_8__* %51 to i32*
  %53 = call i32 @ExecShutdownHashJoin(i32* %52)
  br label %55

54:                                               ; preds = %27
  br label %55

55:                                               ; preds = %54, %50, %46, %42, %38, %34, %30
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = icmp ne %struct.TYPE_9__* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = call i32 @InstrStopNode(%struct.TYPE_9__* %70, i32 0)
  br label %72

72:                                               ; preds = %67, %60, %55
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %6
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @planstate_tree_walker(%struct.TYPE_8__*, i32 (%struct.TYPE_8__*)*, i32*) #1

declare dso_local i32 @InstrStartNode(%struct.TYPE_9__*) #1

declare dso_local i32 @nodeTag(%struct.TYPE_8__*) #1

declare dso_local i32 @ExecShutdownGather(i32*) #1

declare dso_local i32 @ExecShutdownForeignScan(i32*) #1

declare dso_local i32 @ExecShutdownCustomScan(i32*) #1

declare dso_local i32 @ExecShutdownGatherMerge(i32*) #1

declare dso_local i32 @ExecShutdownHash(i32*) #1

declare dso_local i32 @ExecShutdownHashJoin(i32*) #1

declare dso_local i32 @InstrStopNode(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
