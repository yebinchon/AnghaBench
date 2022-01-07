; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/pitty/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/pitty/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@layer_state = common dso_local global i32 0, align 4
@RGB_INIT = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RGB_current_mode = common dso_local global i32 0, align 4
@TOG_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @layer_state, align 4
  %3 = call i32 @biton32(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  switch i32 %4, label %48 [
    i32 129, label %5
    i32 130, label %22
    i32 128, label %39
  ]

5:                                                ; preds = %0
  %6 = load i32, i32* @RGB_INIT, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %11

9:                                                ; preds = %5
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %10, i32* @RGB_current_mode, align 4
  store i32 1, i32* @RGB_INIT, align 4
  br label %11

11:                                               ; preds = %9, %8
  %12 = load i32, i32* @TOG_STATUS, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %21

15:                                               ; preds = %11
  %16 = load i32, i32* @TOG_STATUS, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* @TOG_STATUS, align 4
  %20 = call i32 @rgblight_mode(i32 29)
  br label %21

21:                                               ; preds = %15, %14
  br label %48

22:                                               ; preds = %0
  %23 = load i32, i32* @RGB_INIT, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %27, i32* @RGB_current_mode, align 4
  store i32 1, i32* @RGB_INIT, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32, i32* @TOG_STATUS, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @TOG_STATUS, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* @TOG_STATUS, align 4
  %37 = call i32 @rgblight_mode(i32 29)
  br label %38

38:                                               ; preds = %32, %31
  br label %48

39:                                               ; preds = %0
  %40 = load i32, i32* @RGB_INIT, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %45

43:                                               ; preds = %39
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %44, i32* @RGB_current_mode, align 4
  store i32 1, i32* @RGB_INIT, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i32, i32* @RGB_current_mode, align 4
  %47 = call i32 @rgblight_mode(i32 %46)
  store i32 0, i32* @TOG_STATUS, align 4
  br label %48

48:                                               ; preds = %0, %45, %38, %21
  ret void
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgblight_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
