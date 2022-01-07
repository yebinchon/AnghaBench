; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_perfdata.c_PerfDataUninitialize.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_perfdata.c_PerfDataUninitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@pPerfData = common dso_local global i32* null, align 8
@PerfDataCriticalSection = common dso_local global i32 0, align 4
@SystemUserSid = common dso_local global i32* null, align 8
@SidToUserNameHead = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SIDTOUSERNAME = common dso_local global i32 0, align 4
@List = common dso_local global i32 0, align 4
@SystemProcessorTimeInfo = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PerfDataUninitialize() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32*, i32** @pPerfData, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i32 (...) @GetProcessHeap()
  %7 = load i32*, i32** @pPerfData, align 8
  %8 = call i32 @HeapFree(i32 %6, i32 0, i32* %7)
  br label %9

9:                                                ; preds = %5, %0
  %10 = call i32 @DeleteCriticalSection(i32* @PerfDataCriticalSection)
  %11 = load i32*, i32** @SystemUserSid, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32*, i32** @SystemUserSid, align 8
  %15 = call i32 @FreeSid(i32* %14)
  store i32* null, i32** @SystemUserSid, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SidToUserNameHead, i32 0, i32 0), align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %1, align 8
  br label %18

18:                                               ; preds = %21, %16
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, @SidToUserNameHead
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %23 = load i32, i32* @SIDTOUSERNAME, align 4
  %24 = load i32, i32* @List, align 4
  %25 = call i32* @CONTAINING_RECORD(%struct.TYPE_4__* %22, i32 %23, i32 %24)
  store i32* %25, i32** %2, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %1, align 8
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @HeapFree(i32 %29, i32 0, i32* %30)
  br label %18

32:                                               ; preds = %18
  %33 = load i32*, i32** @SystemProcessorTimeInfo, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = call i32 (...) @GetProcessHeap()
  %37 = load i32*, i32** @SystemProcessorTimeInfo, align 8
  %38 = call i32 @HeapFree(i32 %36, i32 0, i32* %37)
  br label %39

39:                                               ; preds = %35, %32
  ret void
}

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @DeleteCriticalSection(i32*) #1

declare dso_local i32 @FreeSid(i32*) #1

declare dso_local i32* @CONTAINING_RECORD(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
