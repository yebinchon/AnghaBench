; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cutie_club/wraith/keymaps/timer/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cutie_club/wraith/keymaps/timer/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prev_loop_time = common dso_local global i64 0, align 8
@layer_time_remaining = common dso_local global i32 0, align 4
@LAYER_SWITCH = common dso_local global i32 0, align 4
@TIMEOUT_WARNING = common dso_local global i32 0, align 4
@GET_FLASH_PERIOD = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = call i64 (...) @timer_read()
  %2 = load i64, i64* @prev_loop_time, align 8
  %3 = sub nsw i64 %1, %2
  %4 = load i32, i32* @layer_time_remaining, align 4
  %5 = sext i32 %4 to i64
  %6 = sub nsw i64 %5, %3
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* @layer_time_remaining, align 4
  %8 = call i64 (...) @timer_read()
  store i64 %8, i64* @prev_loop_time, align 8
  %9 = load i32, i32* @layer_time_remaining, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @LAYER_SWITCH, align 4
  %13 = call i32 @layer_off(i32 %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = load i32, i32* @LAYER_SWITCH, align 4
  %16 = call i64 @IS_LAYER_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i32, i32* @layer_time_remaining, align 4
  %20 = load i32, i32* @TIMEOUT_WARNING, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* @layer_time_remaining, align 4
  %24 = load i32, i32* @GET_FLASH_PERIOD, align 4
  %25 = sdiv i32 %23, %24
  %26 = srem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @B0, align 4
  %30 = call i32 @writePinLow(i32 %29)
  br label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @B0, align 4
  %33 = call i32 @writePinHigh(i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %38

35:                                               ; preds = %18
  %36 = load i32, i32* @B0, align 4
  %37 = call i32 @writePinLow(i32 %36)
  br label %38

38:                                               ; preds = %35, %34
  br label %42

39:                                               ; preds = %14
  %40 = load i32, i32* @B0, align 4
  %41 = call i32 @writePinHigh(i32 %40)
  br label %42

42:                                               ; preds = %39, %38
  ret void
}

declare dso_local i64 @timer_read(...) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i64 @IS_LAYER_ON(i32) #1

declare dso_local i32 @writePinLow(i32) #1

declare dso_local i32 @writePinHigh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
