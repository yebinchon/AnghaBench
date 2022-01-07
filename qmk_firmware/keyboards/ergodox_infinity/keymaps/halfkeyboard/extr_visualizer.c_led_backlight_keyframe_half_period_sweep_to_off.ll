; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/halfkeyboard/extr_visualizer.c_led_backlight_keyframe_half_period_sweep_to_off.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/halfkeyboard/extr_visualizer.c_led_backlight_keyframe_half_period_sweep_to_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i64, float }

@NUM_COLS = common dso_local global i32 0, align 4
@LED_DISPLAY = common dso_local global i32 0, align 4
@NUM_ROWS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @led_backlight_keyframe_half_period_sweep_to_off(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load float*, float** %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds float, float* %13, i64 %16
  %18 = load float, float* %17, align 4
  store float %18, float* %5, align 4
  %19 = load float, float* %5, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load float, float* %21, align 8
  %23 = fsub float %19, %22
  store float %23, float* %6, align 4
  %24 = load float, float* %6, align 4
  %25 = load float, float* %5, align 4
  %26 = fdiv float %24, %25
  store float %26, float* %7, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %45, %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @NUM_COLS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load float, float* %7, align 4
  %33 = fmul float %32, 2.000000e+00
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @NUM_COLS, align 4
  %36 = call i32 @on_off_gradient(float %33, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @LED_DISPLAY, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i64, i64* @NUM_ROWS, align 8
  %41 = sub nsw i64 %40, 1
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @LUMA2COLOR(i32 %42)
  %44 = call i32 @gdispGDrawLine(i32 %37, i32 %38, i32 0, i32 %39, i64 %41, i32 %43)
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %27

48:                                               ; preds = %27
  ret i32 1
}

declare dso_local i32 @on_off_gradient(float, i32, i32) #1

declare dso_local i32 @gdispGDrawLine(i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @LUMA2COLOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
