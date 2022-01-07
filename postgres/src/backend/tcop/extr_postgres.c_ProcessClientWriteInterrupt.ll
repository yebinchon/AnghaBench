; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_ProcessClientWriteInterrupt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_ProcessClientWriteInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@ProcDiePending = common dso_local global i64 0, align 8
@InterruptHoldoffCount = common dso_local global i64 0, align 8
@CritSectionCount = common dso_local global i64 0, align 8
@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@DestNone = common dso_local global i64 0, align 8
@MyLatch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessClientWriteInterrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @errno, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i64, i64* @ProcDiePending, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load i64, i64* @InterruptHoldoffCount, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i64, i64* @CritSectionCount, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i64, i64* @whereToSendOutput, align 8
  %18 = load i64, i64* @DestRemote, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @DestNone, align 8
  store i64 %21, i64* @whereToSendOutput, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %24

24:                                               ; preds = %22, %13, %10
  br label %28

25:                                               ; preds = %7
  %26 = load i32, i32* @MyLatch, align 4
  %27 = call i32 @SetLatch(i32 %26)
  br label %28

28:                                               ; preds = %25, %24
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* @errno, align 4
  ret void
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @SetLatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
