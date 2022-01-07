; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_led_matrix.c_flush.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_led_matrix.c_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32*, i32* }
%struct.TYPE_12__ = type { i32 }

@sr_exp_data = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@i2c_led_q_running = common dso_local global i64 0, align 8
@ISSI3733_LED_COUNT = common dso_local global i64 0, align 8
@led_buffer = common dso_local global %struct.TYPE_11__* null, align 8
@led_map = common dso_local global %struct.TYPE_10__* null, align 8
@gcr_actual = common dso_local global i64 0, align 8
@gcr_actual_last = common dso_local global i64 0, align 8
@ISSI3733_DRIVER_COUNT = common dso_local global i64 0, align 8
@BREATHE_MAX_STEP = common dso_local global double 0.000000e+00, align 8
@BREATHE_MIN_STEP = common dso_local global double 0.000000e+00, align 8
@BREATHE_STEP = common dso_local global double 0.000000e+00, align 8
@breathe_dir = common dso_local global double 0.000000e+00, align 8
@breathe_mult = common dso_local global i32 0, align 4
@g_rgb_counters = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@led_animation_breathe_cur = common dso_local global double 0.000000e+00, align 8
@led_animation_breathing = common dso_local global i64 0, align 8
@led_animation_speed = common dso_local global float 0.000000e+00, align 4
@led_enabled = common dso_local global i32 0, align 4
@pomod = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sr_exp_data, i32 0, i32 0, i32 0), align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %83

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %10, %6
  %8 = load i64, i64* @i2c_led_q_running, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %7

11:                                               ; preds = %7
  store i64 0, i64* %1, align 8
  br label %12

12:                                               ; preds = %50, %11
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @ISSI3733_LED_COUNT, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @led_buffer, align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @led_map, align 8
  %23 = load i64, i64* %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32 %21, i32* %27, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @led_buffer, align 8
  %29 = load i64, i64* %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @led_map, align 8
  %34 = load i64, i64* %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32 %32, i32* %38, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @led_buffer, align 8
  %40 = load i64, i64* %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @led_map, align 8
  %45 = load i64, i64* %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %16
  %51 = load i64, i64* %1, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %1, align 8
  br label %12

53:                                               ; preds = %12
  %54 = load i64, i64* @gcr_actual, align 8
  %55 = load i64, i64* @gcr_actual_last, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  store i64 0, i64* %2, align 8
  br label %58

58:                                               ; preds = %65, %57
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* @ISSI3733_DRIVER_COUNT, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i64, i64* %2, align 8
  %64 = call i32 @I2C_LED_Q_GCR(i64 %63)
  br label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %2, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %2, align 8
  br label %58

68:                                               ; preds = %58
  %69 = load i64, i64* @gcr_actual, align 8
  store i64 %69, i64* @gcr_actual_last, align 8
  br label %70

70:                                               ; preds = %68, %53
  store i64 0, i64* %2, align 8
  br label %71

71:                                               ; preds = %78, %70
  %72 = load i64, i64* %2, align 8
  %73 = load i64, i64* @ISSI3733_DRIVER_COUNT, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i64, i64* %2, align 8
  %77 = call i32 @I2C_LED_Q_PWM(i64 %76)
  br label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %2, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %2, align 8
  br label %71

81:                                               ; preds = %71
  %82 = call i32 (...) @i2c_led_q_run()
  br label %83

83:                                               ; preds = %81, %5
  ret void
}

declare dso_local i32 @I2C_LED_Q_GCR(i64) #1

declare dso_local i32 @I2C_LED_Q_PWM(i64) #1

declare dso_local i32 @i2c_led_q_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
