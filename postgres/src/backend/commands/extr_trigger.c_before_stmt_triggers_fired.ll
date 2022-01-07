; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_before_stmt_triggers_fired.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_before_stmt_triggers_fired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@afterTriggers = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"before_stmt_triggers_fired() called outside of query\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @before_stmt_triggers_fired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @before_stmt_triggers_fired(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 0), align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @ERROR, align 4
  %11 = call i32 @elog(i32 %10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 0), align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 1), align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (...) @AfterTriggerEnlargeQueryState()
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.TYPE_4__* @GetAfterTriggersTableData(i32 %19, i32 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %6, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @AfterTriggerEnlargeQueryState(...) #1

declare dso_local %struct.TYPE_4__* @GetAfterTriggersTableData(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
