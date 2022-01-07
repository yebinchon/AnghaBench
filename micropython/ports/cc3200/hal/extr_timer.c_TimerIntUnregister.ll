; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_timer.c_TimerIntUnregister.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_timer.c_TimerIntUnregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_A = common dso_local global i64 0, align 8
@TIMER_B = common dso_local global i64 0, align 8
@TIMER_BOTH = common dso_local global i64 0, align 8
@TIMERA0_BASE = common dso_local global i64 0, align 8
@INT_TIMERA0A = common dso_local global i64 0, align 8
@TIMERA1_BASE = common dso_local global i64 0, align 8
@INT_TIMERA1A = common dso_local global i64 0, align 8
@TIMERA2_BASE = common dso_local global i64 0, align 8
@INT_TIMERA2A = common dso_local global i64 0, align 8
@INT_TIMERA3A = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TimerIntUnregister(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @TimerBaseValid(i64 %5)
  %7 = call i32 @ASSERT(i32 %6)
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @TIMER_A, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @TIMER_B, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @TIMER_BOTH, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %11, %2
  %20 = phi i1 [ true, %11 ], [ true, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @TIMERA0_BASE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i64, i64* @INT_TIMERA0A, align 8
  br label %46

28:                                               ; preds = %19
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @TIMERA1_BASE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @INT_TIMERA1A, align 8
  br label %44

34:                                               ; preds = %28
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @TIMERA2_BASE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @INT_TIMERA2A, align 8
  br label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @INT_TIMERA3A, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  br label %44

44:                                               ; preds = %42, %32
  %45 = phi i64 [ %33, %32 ], [ %43, %42 ]
  br label %46

46:                                               ; preds = %44, %26
  %47 = phi i64 [ %27, %26 ], [ %45, %44 ]
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @TIMER_A, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @IntDisable(i64 %53)
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @IntUnregister(i64 %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @TIMER_B, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  %65 = call i32 @IntDisable(i64 %64)
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 1
  %68 = call i32 @IntUnregister(i64 %67)
  br label %69

69:                                               ; preds = %62, %57
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @TimerBaseValid(i64) #1

declare dso_local i32 @IntDisable(i64) #1

declare dso_local i32 @IntUnregister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
