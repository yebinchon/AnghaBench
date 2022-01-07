; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerCollectAlterOpFam.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerCollectAlterOpFam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32*, i32 }

@currentEventTriggerState = common dso_local global %struct.TYPE_10__* null, align 8
@SCT_AlterOpFamily = common dso_local global i32 0, align 4
@creating_extension = common dso_local global i32 0, align 4
@OperatorFamilyRelationId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EventTriggerCollectAlterOpFam(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %4
  br label %63

19:                                               ; preds = %13
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MemoryContextSwitchTo(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = call %struct.TYPE_9__* @palloc(i32 40)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %10, align 8
  %25 = load i32, i32* @SCT_AlterOpFamily, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @creating_extension, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OperatorFamilyRelationId, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ObjectAddressSet(i32 %35, i32 %36, i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32* %39, i32** %43, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32* %44, i32** %48, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @copyObject(i32* %49)
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = call i32 @lappend(i32 %56, %struct.TYPE_9__* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @MemoryContextSwitchTo(i32 %61)
  br label %63

63:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_9__* @palloc(i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i64 @copyObject(i32*) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
