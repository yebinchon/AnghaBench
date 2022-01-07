; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_timer.c_TimerIntRegister.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_timer.c_TimerIntRegister.c"
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
define dso_local void @TimerIntRegister(i64 %0, i64 %1, void ()* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca void ()*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store void ()* %2, void ()** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @TimerBaseValid(i64 %7)
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @TIMER_A, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @TIMER_B, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @TIMER_BOTH, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %13, %3
  %22 = phi i1 [ true, %13 ], [ true, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @TIMERA0_BASE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @INT_TIMERA0A, align 8
  br label %48

30:                                               ; preds = %21
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @TIMERA1_BASE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @INT_TIMERA1A, align 8
  br label %46

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @TIMERA2_BASE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @INT_TIMERA2A, align 8
  br label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @INT_TIMERA3A, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  br label %46

46:                                               ; preds = %44, %34
  %47 = phi i64 [ %35, %34 ], [ %45, %44 ]
  br label %48

48:                                               ; preds = %46, %28
  %49 = phi i64 [ %29, %28 ], [ %47, %46 ]
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @TIMER_A, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i64, i64* %4, align 8
  %56 = load void ()*, void ()** %6, align 8
  %57 = bitcast void ()* %56 to void (...)*
  %58 = call i32 @IntRegister(i64 %55, void (...)* %57)
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @IntEnable(i64 %59)
  br label %61

61:                                               ; preds = %54, %48
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @TIMER_B, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %67, 1
  %69 = load void ()*, void ()** %6, align 8
  %70 = bitcast void ()* %69 to void (...)*
  %71 = call i32 @IntRegister(i64 %68, void (...)* %70)
  %72 = load i64, i64* %4, align 8
  %73 = add i64 %72, 1
  %74 = call i32 @IntEnable(i64 %73)
  br label %75

75:                                               ; preds = %66, %61
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @TimerBaseValid(i64) #1

declare dso_local i32 @IntRegister(i64, void (...)*) #1

declare dso_local i32 @IntEnable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
