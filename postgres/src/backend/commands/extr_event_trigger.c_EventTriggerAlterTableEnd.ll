; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerAlterTableEnd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerAlterTableEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@currentEventTriggerState = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EventTriggerAlterTableEnd() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %3 = icmp ne %struct.TYPE_10__* %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4, %0
  br label %44

10:                                               ; preds = %4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %1, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @list_length(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %10
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = call i32 @lappend(i32 %28, %struct.TYPE_9__* %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %40

35:                                               ; preds = %10
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = call i32 @pfree(%struct.TYPE_9__* %38)
  br label %40

40:                                               ; preds = %35, %25
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @currentEventTriggerState, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %43, align 8
  br label %44

44:                                               ; preds = %40, %9
  ret void
}

declare dso_local i64 @list_length(i32) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @pfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
