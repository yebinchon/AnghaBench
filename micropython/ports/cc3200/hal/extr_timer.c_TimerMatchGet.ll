; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_timer.c_TimerMatchGet.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_timer.c_TimerMatchGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_A = common dso_local global i64 0, align 8
@TIMER_B = common dso_local global i64 0, align 8
@TIMER_O_TAMATCHR = common dso_local global i64 0, align 8
@TIMER_O_TBMATCHR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TimerMatchGet(i64 %0, i64 %1) #0 {
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
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @TIMER_B, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @TIMER_A, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @TIMER_O_TAMATCHR, align 8
  %25 = add i64 %23, %24
  %26 = call i64 @HWREG(i64 %25)
  br label %32

27:                                               ; preds = %15
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @TIMER_O_TBMATCHR, align 8
  %30 = add i64 %28, %29
  %31 = call i64 @HWREG(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i64 [ %26, %22 ], [ %31, %27 ]
  ret i64 %33
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @TimerBaseValid(i64) #1

declare dso_local i64 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
