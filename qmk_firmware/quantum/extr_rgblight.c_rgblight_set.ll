; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@clipping_num_leds = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@effect_start_pos = common dso_local global i64 0, align 8
@effect_end_pos = common dso_local global i64 0, align 8
@led = common dso_local global %struct.TYPE_5__* null, align 8
@clipping_start_pos = common dso_local global i32 0, align 4
@RGBLED_NUM = common dso_local global i32 0, align 4
@led_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgblight_set() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @clipping_num_leds, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 0), align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @effect_start_pos, align 8
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %26, %7
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @effect_end_pos, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @led, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @led, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @led, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %13
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %3, align 8
  br label %9

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %29, %0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @led, align 8
  %32 = load i32, i32* @clipping_start_pos, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %1, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @ws2812_setleds(%struct.TYPE_5__* %35, i32 %36)
  ret void
}

declare dso_local i32 @ws2812_setleds(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
