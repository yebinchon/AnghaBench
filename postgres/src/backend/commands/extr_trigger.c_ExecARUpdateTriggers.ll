; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecARUpdateTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecARUpdateTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64 }

@LockTupleExclusive = common dso_local global i32 0, align 4
@TRIGGER_EVENT_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecARUpdateTriggers(i32* %0, %struct.TYPE_13__* %1, i32 %2, i32* %3, i32* %4, i32* %5, %struct.TYPE_12__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %14, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %15, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = call i32* @ExecGetTriggerOldSlot(i32* %20, %struct.TYPE_13__* %21)
  store i32* %22, i32** %16, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = call i32 @ExecClearTuple(i32* %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %7
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %27, %7
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %79

35:                                               ; preds = %32
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %40, %35, %27
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @ItemPointerIsValid(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @LockTupleExclusive, align 4
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @GetTupleForTrigger(i32* %53, i32* null, %struct.TYPE_13__* %54, i32 %55, i32 %56, i32* %57, i32* null)
  br label %67

59:                                               ; preds = %48, %45
  %60 = load i32*, i32** %11, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @ExecForceStoreHeapTuple(i32* %63, i32* %64, i32 0)
  br label %66

66:                                               ; preds = %62, %59
  br label %67

67:                                               ; preds = %66, %52
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = load i32, i32* @TRIGGER_EVENT_UPDATE, align 4
  %71 = load i32*, i32** %16, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @GetAllUpdatedColumns(%struct.TYPE_13__* %74, i32* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %78 = call i32 @AfterTriggerSaveEvent(i32* %68, %struct.TYPE_13__* %69, i32 %70, i32 1, i32* %71, i32* %72, i32* %73, i32 %76, %struct.TYPE_12__* %77)
  br label %79

79:                                               ; preds = %67, %40, %32
  ret void
}

declare dso_local i32* @ExecGetTriggerOldSlot(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

declare dso_local i64 @ItemPointerIsValid(i32) #1

declare dso_local i32 @GetTupleForTrigger(i32*, i32*, %struct.TYPE_13__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ExecForceStoreHeapTuple(i32*, i32*, i32) #1

declare dso_local i32 @AfterTriggerSaveEvent(i32*, %struct.TYPE_13__*, i32, i32, i32*, i32*, i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @GetAllUpdatedColumns(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
