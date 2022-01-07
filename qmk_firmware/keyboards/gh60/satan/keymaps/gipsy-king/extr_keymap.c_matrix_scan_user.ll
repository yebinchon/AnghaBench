; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gh60/satan/keymaps/gipsy-king/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gh60/satan/keymaps/gipsy-king/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reset_timer = common dso_local global i32 0, align 4
@reset_time = common dso_local global i64 0, align 8
@last_timer = common dso_local global i32 0, align 4
@interval_time = common dso_local global i64 0, align 8
@timer_pos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = load i32, i32* @reset_timer, align 4
  %2 = call i64 @timer_elapsed(i32 %1)
  %3 = load i64, i64* @reset_time, align 8
  %4 = icmp sgt i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 (...) @reset_chars()
  %7 = call i32 (...) @timer_read()
  store i32 %7, i32* @reset_timer, align 4
  br label %29

8:                                                ; preds = %0
  %9 = load i32, i32* @last_timer, align 4
  %10 = call i64 @timer_elapsed(i32 %9)
  %11 = load i64, i64* @interval_time, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %29

14:                                               ; preds = %8
  %15 = load i64, i64* @interval_time, align 8
  %16 = load i32, i32* @last_timer, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* @last_timer, align 4
  %20 = load i32, i32* @timer_pos, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* @timer_pos, align 4
  %22 = load i32, i32* @timer_pos, align 4
  %23 = icmp sge i32 %22, 255
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  store i32 0, i32* @timer_pos, align 4
  %25 = call i32 (...) @timer_read()
  store i32 %25, i32* @last_timer, align 4
  br label %26

26:                                               ; preds = %24, %14
  %27 = load i32, i32* @timer_pos, align 4
  %28 = call i32 @animate_cursor(i32 %27)
  br label %29

29:                                               ; preds = %26, %13, %5
  ret void
}

declare dso_local i64 @timer_elapsed(i32) #1

declare dso_local i32 @reset_chars(...) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @animate_cursor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
