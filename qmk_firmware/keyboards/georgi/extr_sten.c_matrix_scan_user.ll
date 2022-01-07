; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/georgi/extr_sten.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/georgi/extr_sten.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cMode = common dso_local global i64 0, align 8
@QWERTY = common dso_local global i64 0, align 8
@inChord = common dso_local global i32 0, align 4
@repEngaged = common dso_local global i32 0, align 4
@repTimer = common dso_local global i32 0, align 4
@REP_DELAY = common dso_local global i64 0, align 8
@REP_INIT_DELAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = load i64, i64* @cMode, align 8
  %2 = load i64, i64* @QWERTY, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @inChord, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %0
  br label %30

8:                                                ; preds = %4
  %9 = load i32, i32* @repEngaged, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i32, i32* @repTimer, align 4
  %13 = call i64 @timer_elapsed(i32 %12)
  %14 = load i64, i64* @REP_DELAY, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = call i32 @processChord(i32 0)
  %18 = call i32 (...) @send_keyboard_report()
  %19 = call i32 (...) @clear_keyboard()
  %20 = call i32 (...) @timer_read()
  store i32 %20, i32* @repTimer, align 4
  br label %21

21:                                               ; preds = %16, %11, %8
  %22 = load i32, i32* @repEngaged, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @repTimer, align 4
  %26 = call i64 @timer_elapsed(i32 %25)
  %27 = load i64, i64* @REP_INIT_DELAY, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* @repEngaged, align 4
  br label %30

30:                                               ; preds = %7, %29, %24, %21
  ret void
}

declare dso_local i64 @timer_elapsed(i32) #1

declare dso_local i32 @processChord(i32) #1

declare dso_local i32 @send_keyboard_report(...) #1

declare dso_local i32 @clear_keyboard(...) #1

declare dso_local i32 @timer_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
