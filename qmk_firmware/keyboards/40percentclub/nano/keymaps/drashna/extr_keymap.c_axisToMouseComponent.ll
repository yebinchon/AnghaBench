; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/nano/keymaps/drashna/extr_keymap.c_axisToMouseComponent.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/nano/keymaps/drashna/extr_keymap.c_axisToMouseComponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@keyboard_report = common dso_local global %struct.TYPE_2__* null, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@precisionSpeed = common dso_local global float 0.000000e+00, align 4
@speedRegulator = common dso_local global float 0.000000e+00, align 4
@maxCursorSpeed = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @axisToMouseComponent(i32 %0, i32 %1, i32 %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @axisCoordinate(i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store float 0.000000e+00, float* %5, align 4
  br label %51

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %20, 1.000000e+02
  store float %21, float* %11, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keyboard_report, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @KC_LSFT, align 4
  %26 = call i32 @MOD_BIT(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load float, float* %11, align 4
  %31 = load float, float* @precisionSpeed, align 4
  %32 = fmul float %30, %31
  %33 = load float, float* %9, align 4
  %34 = fmul float %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = call float @abs(i32 %35)
  %37 = load float, float* @speedRegulator, align 4
  %38 = fdiv float %36, %37
  %39 = fmul float %34, %38
  store float %39, float* %5, align 4
  br label %51

40:                                               ; preds = %18
  %41 = load float, float* %11, align 4
  %42 = load float, float* @maxCursorSpeed, align 4
  %43 = fmul float %41, %42
  %44 = load float, float* %9, align 4
  %45 = fmul float %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = call float @abs(i32 %46)
  %48 = load float, float* @speedRegulator, align 4
  %49 = fdiv float %47, %48
  %50 = fmul float %45, %49
  store float %50, float* %5, align 4
  br label %51

51:                                               ; preds = %40, %29, %17
  %52 = load float, float* %5, align 4
  ret float %52
}

declare dso_local i32 @axisCoordinate(i32, i32) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local float @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
