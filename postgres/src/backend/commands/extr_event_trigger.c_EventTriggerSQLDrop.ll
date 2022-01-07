; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerSQLDrop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerSQLDrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@currentEventTriggerState = common dso_local global %struct.TYPE_2__* null, align 8
@EVT_SQLDrop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sql_drop\00", align 1
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EventTriggerSQLDrop(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @IsUnderPostmaster, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentEventTriggerState, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentEventTriggerState, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i64 @slist_is_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %8
  br label %38

17:                                               ; preds = %11
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @EVT_SQLDrop, align 4
  %20 = call i32* @EventTriggerCommonSetup(i32* %18, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %4)
  store i32* %20, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** @NIL, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %38

25:                                               ; preds = %17
  %26 = call i32 (...) @CommandCounterIncrement()
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentEventTriggerState, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = call i32 (...) @PG_TRY()
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @EventTriggerInvoke(i32* %30, i32* %4)
  %32 = call i32 (...) @PG_FINALLY()
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentEventTriggerState, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = call i32 (...) @PG_END_TRY()
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @list_free(i32* %36)
  br label %38

38:                                               ; preds = %25, %24, %16, %7
  ret void
}

declare dso_local i64 @slist_is_empty(i32*) #1

declare dso_local i32* @EventTriggerCommonSetup(i32*, i32, i8*, i32*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @EventTriggerInvoke(i32*, i32*) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i32 @list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
