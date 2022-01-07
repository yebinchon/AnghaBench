; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/v60_type_r/keymaps/xtonhasvim/extr_keymap.c_rgbflag.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/v60_type_r/keymaps/xtonhasvim/extr_keymap.c_rgbflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float }

@user_rgb_mode = common dso_local global i64 0, align 8
@shadowed_led = common dso_local global %struct.TYPE_4__* null, align 8
@led = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgbflag(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %9 = call i64 (...) @rgblight_get_val()
  %10 = sitofp i64 %9 to float
  %11 = fdiv float %10, 2.560000e+02
  store float %11, float* %7, align 4
  %12 = load float, float* %7, align 4
  %13 = fcmp oeq float %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store float 0x3FA99999A0000000, float* %7, align 4
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i64, i64* @user_rgb_mode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shadowed_led, align 8
  br label %22

20:                                               ; preds = %15
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi %struct.TYPE_4__* [ %19, %18 ], [ %21, %20 ]
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %8, align 8
  %24 = load float, float* %4, align 4
  %25 = load float, float* %7, align 4
  %26 = fmul float %24, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store float %26, float* %29, align 4
  %30 = load float, float* %5, align 4
  %31 = load float, float* %7, align 4
  %32 = fmul float %30, %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store float %32, float* %35, align 4
  %36 = load float, float* %6, align 4
  %37 = load float, float* %7, align 4
  %38 = fmul float %36, %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store float %38, float* %41, align 4
  %42 = call i32 (...) @rgblight_set()
  ret void
}

declare dso_local i64 @rgblight_get_val(...) #1

declare dso_local i32 @rgblight_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
