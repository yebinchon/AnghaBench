; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/maxr1998/pulse4k/extr_pulse4k.c_encoder_update_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/maxr1998/pulse4k/extr_pulse4k.c_encoder_update_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@led_adjust_active = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update_kb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load i64, i64* @led_adjust_active, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @rgblight_increase_val()
  br label %17

15:                                               ; preds = %10
  %16 = call i32 (...) @rgblight_decrease_val()
  br label %17

17:                                               ; preds = %15, %13
  br label %21

18:                                               ; preds = %7
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @encoder_one_update(i32 %19)
  br label %21

21:                                               ; preds = %18, %17
  br label %41

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load i64, i64* @led_adjust_active, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @rgblight_increase_hue()
  br label %35

33:                                               ; preds = %28
  %34 = call i32 (...) @rgblight_decrease_hue()
  br label %35

35:                                               ; preds = %33, %31
  br label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @encoder_two_update(i32 %37)
  br label %39

39:                                               ; preds = %36, %35
  br label %40

40:                                               ; preds = %39, %22
  br label %41

41:                                               ; preds = %40, %21
  ret void
}

declare dso_local i32 @rgblight_increase_val(...) #1

declare dso_local i32 @rgblight_decrease_val(...) #1

declare dso_local i32 @encoder_one_update(i32) #1

declare dso_local i32 @rgblight_increase_hue(...) #1

declare dso_local i32 @rgblight_decrease_hue(...) #1

declare dso_local i32 @encoder_two_update(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
