; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/reywood/extr_rgb_matrix_user.c_led_matrix_run.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/reywood/extr_rgb_matrix_user.c_led_matrix_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@led_cur = common dso_local global i64 0, align 8
@led_map = common dso_local global i64 0, align 8
@led_cur_index = common dso_local global i64 0, align 8
@lede = common dso_local global i64 0, align 8
@led_per_run = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_matrix_run() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = load i64, i64* @led_cur, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i64, i64* @led_map, align 8
  store i64 %5, i64* @led_cur, align 8
  store i64 0, i64* @led_cur_index, align 8
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i32 (...) @update_led_boosts()
  br label %8

8:                                                ; preds = %18, %6
  %9 = load i64, i64* @led_cur, align 8
  %10 = load i64, i64* @lede, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @led_per_run, align 8
  %15 = icmp slt i64 %13, %14
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  %19 = call i32 (...) @update_led_cur_rgb_values()
  %20 = load i64, i64* @led_cur, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @led_cur, align 8
  %22 = load i64, i64* @led_cur_index, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @led_cur_index, align 8
  %24 = load i64, i64* %1, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %1, align 8
  br label %8

26:                                               ; preds = %16
  ret void
}

declare dso_local i32 @update_led_boosts(...) #1

declare dso_local i32 @update_led_cur_rgb_values(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
