; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_effect_indicators.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_effect_indicators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@g_config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@g_indicator_state = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_effect_indicators() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 3, i32 0), align 4
  %2 = icmp ne i32 %1, 255
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load i32, i32* @g_indicator_state, align 4
  %5 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %6 = shl i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 3, i32 0), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 3, i32 1), align 4
  %12 = call i32 @backlight_effect_indicators_set_colors(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %3, %0
  %14 = call i64 @IS_LAYER_ON(i32 3)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 2, i32 0), align 4
  %18 = icmp ne i32 %17, 255
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 2, i32 0), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 2, i32 1), align 4
  %22 = call i32 @backlight_effect_indicators_set_colors(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  br label %48

24:                                               ; preds = %13
  %25 = call i64 @IS_LAYER_ON(i32 2)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 1, i32 0), align 4
  %29 = icmp ne i32 %28, 255
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 1, i32 0), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 1, i32 1), align 4
  %33 = call i32 @backlight_effect_indicators_set_colors(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %27
  br label %47

35:                                               ; preds = %24
  %36 = call i64 @IS_LAYER_ON(i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 0, i32 0), align 4
  %40 = icmp ne i32 %39, 255
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 0, i32 0), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_config, i32 0, i32 0, i32 1), align 4
  %44 = call i32 @backlight_effect_indicators_set_colors(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  br label %46

46:                                               ; preds = %45, %35
  br label %47

47:                                               ; preds = %46, %34
  br label %48

48:                                               ; preds = %47, %23
  ret void
}

declare dso_local i32 @backlight_effect_indicators_set_colors(i32, i32) #1

declare dso_local i64 @IS_LAYER_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
