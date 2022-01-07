; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_led_matrix.c_led_matrix_indicators.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_led_matrix.c_led_matrix_indicators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@rgb_matrix_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ISSI3733_LED_COUNT = common dso_local global i64 0, align 8
@led_map = common dso_local global %struct.TYPE_5__* null, align 8
@USB_LED_NUM_LOCK_SCANCODE = common dso_local global i64 0, align 8
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK_SCANCODE = common dso_local global i64 0, align 8
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK_SCANCODE = common dso_local global i64 0, align 8
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@USB_LED_COMPOSE_SCANCODE = common dso_local global i64 0, align 8
@USB_LED_COMPOSE = common dso_local global i32 0, align 4
@USB_LED_KANA_SCANCODE = common dso_local global i64 0, align 8
@USB_LED_KANA = common dso_local global i32 0, align 4
@led_buffer = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_matrix_indicators() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 (...) @keyboard_leds()
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %125

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rgb_matrix_config, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %125

9:                                                ; preds = %6
  store i64 0, i64* %2, align 8
  br label %10

10:                                               ; preds = %121, %9
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @ISSI3733_LED_COUNT, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %124

14:                                               ; preds = %10
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @led_map, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USB_LED_NUM_LOCK_SCANCODE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load i64, i64* %1, align 8
  %24 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %25 = shl i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = and i64 %23, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %89, label %29

29:                                               ; preds = %22, %14
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @led_map, align 8
  %31 = load i64, i64* %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @USB_LED_CAPS_LOCK_SCANCODE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load i64, i64* %1, align 8
  %39 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %40 = shl i32 1, %39
  %41 = sext i32 %40 to i64
  %42 = and i64 %38, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %89, label %44

44:                                               ; preds = %37, %29
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @led_map, align 8
  %46 = load i64, i64* %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USB_LED_SCROLL_LOCK_SCANCODE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load i64, i64* %1, align 8
  %54 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %55 = shl i32 1, %54
  %56 = sext i32 %55 to i64
  %57 = and i64 %53, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %89, label %59

59:                                               ; preds = %52, %44
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @led_map, align 8
  %61 = load i64, i64* %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @USB_LED_COMPOSE_SCANCODE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load i64, i64* %1, align 8
  %69 = load i32, i32* @USB_LED_COMPOSE, align 4
  %70 = shl i32 1, %69
  %71 = sext i32 %70 to i64
  %72 = and i64 %68, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %67, %59
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @led_map, align 8
  %76 = load i64, i64* %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @USB_LED_KANA_SCANCODE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %74
  %83 = load i64, i64* %1, align 8
  %84 = load i32, i32* @USB_LED_KANA, align 4
  %85 = shl i32 1, %84
  %86 = sext i32 %85 to i64
  %87 = and i64 %83, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %82, %67, %52, %37, %22
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @led_buffer, align 8
  %91 = load i64, i64* %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 255, %94
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @led_buffer, align 8
  %97 = load i64, i64* %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store i64 %95, i64* %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @led_buffer, align 8
  %101 = load i64, i64* %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 255, %104
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @led_buffer, align 8
  %107 = load i64, i64* %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i64 %105, i64* %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @led_buffer, align 8
  %111 = load i64, i64* %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 255, %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @led_buffer, align 8
  %117 = load i64, i64* %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i64 %115, i64* %119, align 8
  br label %120

120:                                              ; preds = %89, %82, %74
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %2, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %2, align 8
  br label %10

124:                                              ; preds = %10
  br label %125

125:                                              ; preds = %124, %6, %0
  ret void
}

declare dso_local i64 @keyboard_leds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
