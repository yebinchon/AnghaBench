; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_CheckRecoveryConflictDeadlock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_CheckRecoveryConflictDeadlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InRecovery = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_T_R_DEADLOCK_DETECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"canceling statement due to conflict with recovery\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"User transaction caused buffer deadlock with recovery.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckRecoveryConflictDeadlock() #0 {
  %1 = load i32, i32* @InRecovery, align 4
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @Assert(i32 %4)
  %6 = call i32 (...) @HoldingBufferPinThatDelaysRecovery()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %16

9:                                                ; preds = %0
  %10 = load i32, i32* @ERROR, align 4
  %11 = load i32, i32* @ERRCODE_T_R_DEADLOCK_DETECTED, align 4
  %12 = call i32 @errcode(i32 %11)
  %13 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @errdetail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @ereport(i32 %10, i32 %14)
  br label %16

16:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @HoldingBufferPinThatDelaysRecovery(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
