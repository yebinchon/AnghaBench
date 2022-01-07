; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_ProcessClientReadInterrupt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_ProcessClientReadInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@DoingCommandRead = common dso_local global i64 0, align 8
@catchupInterruptPending = common dso_local global i64 0, align 8
@notifyInterruptPending = common dso_local global i64 0, align 8
@ProcDiePending = common dso_local global i64 0, align 8
@MyLatch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessClientReadInterrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @errno, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i64, i64* @DoingCommandRead, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %9 = load i64, i64* @catchupInterruptPending, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 (...) @ProcessCatchupInterrupt()
  br label %13

13:                                               ; preds = %11, %7
  %14 = load i64, i64* @notifyInterruptPending, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (...) @ProcessNotifyInterrupt()
  br label %18

18:                                               ; preds = %16, %13
  br label %32

19:                                               ; preds = %1
  %20 = load i64, i64* @ProcDiePending, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @MyLatch, align 4
  %29 = call i32 @SetLatch(i32 %28)
  br label %30

30:                                               ; preds = %27, %25
  br label %31

31:                                               ; preds = %30, %19
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* @errno, align 4
  ret void
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ProcessCatchupInterrupt(...) #1

declare dso_local i32 @ProcessNotifyInterrupt(...) #1

declare dso_local i32 @SetLatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
