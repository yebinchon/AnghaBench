; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_led_matrix.c_led_matrix_task.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_led_matrix.c_led_matrix_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (...)* }

@led_matrix_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_tick = common dso_local global i32 0, align 4
@g_any_key_hit = common dso_local global i32 0, align 4
@LED_DRIVER_LED_COUNT = common dso_local global i32 0, align 4
@g_key_hit = common dso_local global i32* null, align 8
@g_last_led_count = common dso_local global i64 0, align 8
@g_suspend_state = common dso_local global i64 0, align 8
@LED_DISABLE_WHEN_USB_SUSPENDED = common dso_local global i64 0, align 8
@LED_DISABLE_AFTER_TIMEOUT = common dso_local global i32 0, align 4
@led_matrix_driver = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_matrix_task() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @led_matrix_config, i32 0, i32 1), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = call i32 (...) @led_matrix_all_off()
  %8 = call i32 (...) @led_matrix_indicators()
  br label %91

9:                                                ; preds = %0
  %10 = load i32, i32* @g_tick, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @g_tick, align 4
  %12 = load i32, i32* @g_any_key_hit, align 4
  %13 = icmp ult i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* @g_any_key_hit, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @g_any_key_hit, align 4
  br label %17

17:                                               ; preds = %14, %9
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %48, %17
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @LED_DRIVER_LED_COUNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load i32*, i32** @g_key_hit, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 255
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load i32*, i32** @g_key_hit, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 254
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i64, i64* @g_last_led_count, align 8
  %38 = sub nsw i64 %37, 1
  %39 = call i64 @MAX(i64 %38, i32 0)
  store i64 %39, i64* @g_last_led_count, align 8
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32*, i32** @g_key_hit, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %18

51:                                               ; preds = %18
  %52 = load i64, i64* @g_suspend_state, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* @LED_DISABLE_WHEN_USB_SUSPENDED, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @LED_DISABLE_AFTER_TIMEOUT, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* @g_any_key_hit, align 4
  %62 = load i32, i32* @LED_DISABLE_AFTER_TIMEOUT, align 4
  %63 = mul nsw i32 %62, 60
  %64 = mul nsw i32 %63, 20
  %65 = icmp sgt i32 %61, %64
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i1 [ false, %57 ], [ %65, %60 ]
  br label %68

68:                                               ; preds = %66, %54
  %69 = phi i1 [ true, %54 ], [ %67, %66 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %2, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @led_matrix_config, i32 0, i32 0), align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ 0, %73 ], [ %75, %74 ]
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  switch i32 %78, label %81 [
    i32 128, label %79
  ]

79:                                               ; preds = %76
  %80 = call i32 (...) @led_matrix_uniform_brightness()
  br label %83

81:                                               ; preds = %76
  %82 = call i32 (...) @led_matrix_custom()
  br label %83

83:                                               ; preds = %81, %79
  %84 = load i32, i32* %2, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = call i32 (...) @led_matrix_indicators()
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @led_matrix_driver, i32 0, i32 0), align 8
  %90 = call i32 (...) %89()
  br label %91

91:                                               ; preds = %88, %6
  ret void
}

declare dso_local i32 @led_matrix_all_off(...) #1

declare dso_local i32 @led_matrix_indicators(...) #1

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i32 @led_matrix_uniform_brightness(...) #1

declare dso_local i32 @led_matrix_custom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
