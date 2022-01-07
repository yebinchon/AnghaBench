; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerDDLCommandEnd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_EventTriggerDDLCommandEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IsUnderPostmaster = common dso_local global i32 0, align 4
@currentEventTriggerState = common dso_local global i32 0, align 4
@EVT_DDLCommandEnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ddl_command_end\00", align 1
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EventTriggerDDLCommandEnd(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @IsUnderPostmaster, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* @currentEventTriggerState, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  br label %26

12:                                               ; preds = %8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @EVT_DDLCommandEnd, align 4
  %15 = call i32* @EventTriggerCommonSetup(i32* %13, i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %4)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** @NIL, align 8
  %18 = icmp eq i32* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %26

20:                                               ; preds = %12
  %21 = call i32 (...) @CommandCounterIncrement()
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @EventTriggerInvoke(i32* %22, i32* %4)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @list_free(i32* %24)
  br label %26

26:                                               ; preds = %20, %19, %11, %7
  ret void
}

declare dso_local i32* @EventTriggerCommonSetup(i32*, i32, i8*, i32*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @EventTriggerInvoke(i32*, i32*) #1

declare dso_local i32 @list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
