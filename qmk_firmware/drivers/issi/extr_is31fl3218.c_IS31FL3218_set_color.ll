; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3218.c_IS31FL3218_set_color.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3218.c_IS31FL3218_set_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_pwm_buffer = common dso_local global i32* null, align 8
@g_pwm_buffer_update_required = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3218_set_color(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32*, i32** @g_pwm_buffer, align 8
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 3
  %13 = add nsw i32 %12, 0
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  store i32 %9, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** @g_pwm_buffer, align 8
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 3
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32 %16, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** @g_pwm_buffer, align 8
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 3
  %27 = add nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32 %23, i32* %29, align 4
  store i32 1, i32* @g_pwm_buffer_update_required, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
