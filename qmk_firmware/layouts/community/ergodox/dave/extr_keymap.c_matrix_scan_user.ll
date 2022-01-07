; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/dave/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/dave/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_scan_user.leds = internal global [4 x i32] zeroinitializer, align 16
@layer_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @layer_state, align 4
  %4 = call i32 @biton32(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = call i32 (...) @ergodox_board_led_off()
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %54, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp sle i32 %7, 3
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* @matrix_scan_user.leds, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 255
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  br label %29

21:                                               ; preds = %9
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* @matrix_scan_user.leds, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 -1, i32 0
  br label %29

29:                                               ; preds = %21, %13
  %30 = phi i32 [ %20, %13 ], [ %28, %21 ]
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* @matrix_scan_user.leds, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* @matrix_scan_user.leds, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %29
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @ergodox_right_led_on(i32 %42)
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* @matrix_scan_user.leds, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ergodox_right_led_set(i32 %44, i32 %48)
  br label %53

50:                                               ; preds = %29
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @ergodox_right_led_off(i32 %51)
  br label %53

53:                                               ; preds = %50, %41
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %6

57:                                               ; preds = %6
  ret void
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @ergodox_right_led_on(i32) #1

declare dso_local i32 @ergodox_right_led_set(i32, i32) #1

declare dso_local i32 @ergodox_right_led_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
