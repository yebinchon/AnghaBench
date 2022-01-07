; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_CommandCounterIncrement.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_CommandCounterIncrement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@currentCommandIdUsed = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cannot start commands during a parallel operation\00", align 1
@currentCommandId = common dso_local global i64 0, align 8
@InvalidCommandId = common dso_local global i64 0, align 8
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"cannot have more than 2^32-2 commands in a transaction\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CommandCounterIncrement() #0 {
  %1 = load i32, i32* @currentCommandIdUsed, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %30

3:                                                ; preds = %0
  %4 = call i64 (...) @IsInParallelMode()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = call i64 (...) @IsParallelWorker()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %3
  %10 = load i32, i32* @ERROR, align 4
  %11 = call i32 @elog(i32 %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* @currentCommandId, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* @currentCommandId, align 8
  %15 = load i64, i64* @currentCommandId, align 8
  %16 = load i64, i64* @InvalidCommandId, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load i64, i64* @currentCommandId, align 8
  %20 = sub nsw i64 %19, 1
  store i64 %20, i64* @currentCommandId, align 8
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @ereport(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %18, %12
  store i32 0, i32* @currentCommandIdUsed, align 4
  %27 = load i64, i64* @currentCommandId, align 8
  %28 = call i32 @SnapshotSetCommandId(i64 %27)
  %29 = call i32 (...) @AtCCI_LocalCache()
  br label %30

30:                                               ; preds = %26, %0
  ret void
}

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i64 @IsParallelWorker(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @SnapshotSetCommandId(i64) #1

declare dso_local i32 @AtCCI_LocalCache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
