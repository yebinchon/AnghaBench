; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerTableRewrite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerTableRewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@currentEventTriggerState = common dso_local global %struct.TYPE_2__* null, align 8
@EVT_TableRewrite = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"table_rewrite\00", align 1
@NIL = common dso_local global i32* null, align 8
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EventTriggerTableRewrite(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @IsUnderPostmaster, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %44

12:                                               ; preds = %3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentEventTriggerState, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %44

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @EVT_TableRewrite, align 4
  %19 = call i32* @EventTriggerCommonSetup(i32* %17, i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** @NIL, align 8
  %22 = icmp eq i32* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %44

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentEventTriggerState, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentEventTriggerState, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = call i32 (...) @PG_TRY()
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @EventTriggerInvoke(i32* %32, i32* %8)
  %34 = call i32 (...) @PG_FINALLY()
  %35 = load i32, i32* @InvalidOid, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentEventTriggerState, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentEventTriggerState, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = call i32 (...) @PG_END_TRY()
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @list_free(i32* %41)
  %43 = call i32 (...) @CommandCounterIncrement()
  br label %44

44:                                               ; preds = %24, %23, %15, %11
  ret void
}

declare dso_local i32* @EventTriggerCommonSetup(i32*, i32, i8*, i32*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @EventTriggerInvoke(i32*, i32*) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i32 @list_free(i32*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
