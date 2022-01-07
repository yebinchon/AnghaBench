; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecARDeleteTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecARDeleteTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@LockTupleExclusive = common dso_local global i32 0, align 4
@TRIGGER_EVENT_DELETE = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecARDeleteTriggers(i32* %0, %struct.TYPE_12__* %1, i32 %2, i32* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %10, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %11, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = call i32* @ExecGetTriggerOldSlot(i32* %16, %struct.TYPE_12__* %17)
  store i32* %18, i32** %12, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21, %5
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %29, %21
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @HeapTupleIsValid(i32* %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ItemPointerIsValid(i32 %37)
  %39 = xor i32 %36, %38
  %40 = call i32 @Assert(i32 %39)
  %41 = load i32*, i32** %9, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @LockTupleExclusive, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @GetTupleForTrigger(i32* %44, i32* null, %struct.TYPE_12__* %45, i32 %46, i32 %47, i32* %48, i32* null)
  br label %54

50:                                               ; preds = %34
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @ExecForceStoreHeapTuple(i32* %51, i32* %52, i32 0)
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = load i32, i32* @TRIGGER_EVENT_DELETE, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* @NIL, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = call i32 @AfterTriggerSaveEvent(i32* %55, %struct.TYPE_12__* %56, i32 %57, i32 1, i32* %58, i32* null, i32 %59, i32* null, %struct.TYPE_11__* %60)
  br label %62

62:                                               ; preds = %54, %29, %26
  ret void
}

declare dso_local i32* @ExecGetTriggerOldSlot(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @ItemPointerIsValid(i32) #1

declare dso_local i32 @GetTupleForTrigger(i32*, i32*, %struct.TYPE_12__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ExecForceStoreHeapTuple(i32*, i32*, i32) #1

declare dso_local i32 @AfterTriggerSaveEvent(i32*, %struct.TYPE_12__*, i32, i32, i32*, i32*, i32, i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
