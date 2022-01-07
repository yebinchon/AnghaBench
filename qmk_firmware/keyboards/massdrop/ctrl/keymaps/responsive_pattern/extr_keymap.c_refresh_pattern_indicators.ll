; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/responsive_pattern/extr_keymap.c_refresh_pattern_indicators.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/responsive_pattern/extr_keymap.c_refresh_pattern_indicators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@refresh_pattern_indicators.GRV_123456 = internal global [7 x i32] [i32 128, i32 134, i32 133, i32 132, i32 131, i32 130, i32 129], align 16
@layer_state = common dso_local global i32 0, align 4
@USER_CONFIG = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @refresh_pattern_indicators() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @layer_state, align 4
  %4 = icmp sge i32 %3, 4
  br i1 %4, label %5, label %32

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %28, %5
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 7
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @USER_CONFIG, i32 0, i32 0), align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [7 x i32], [7 x i32]* @refresh_pattern_indicators.GRV_123456, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ktli(i32 %17)
  %19 = call i32 @set_indicator_led_rgb(i32 %18, i32 2, i32 0, i32 0, i32 255)
  br label %27

20:                                               ; preds = %9
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [7 x i32], [7 x i32]* @refresh_pattern_indicators.GRV_123456, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ktli(i32 %24)
  %26 = call i32 @set_indicator_led_rgb(i32 %25, i32 2, i32 0, i32 255, i32 0)
  br label %27

27:                                               ; preds = %20, %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %6

31:                                               ; preds = %6
  br label %47

32:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i32, i32* %2, align 4
  %35 = icmp slt i32 %34, 7
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [7 x i32], [7 x i32]* @refresh_pattern_indicators.GRV_123456, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ktli(i32 %40)
  %42 = call i32 @unset_indicator_led_rgb(i32 %41, i32 2)
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %33

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %31
  ret void
}

declare dso_local i32 @set_indicator_led_rgb(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ktli(i32) #1

declare dso_local i32 @unset_indicator_led_rgb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
