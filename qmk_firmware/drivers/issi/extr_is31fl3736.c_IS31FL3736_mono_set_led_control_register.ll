; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3736.c_IS31FL3736_mono_set_led_control_register.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3736.c_IS31FL3736_mono_set_led_control_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_led_control_registers = common dso_local global i32** null, align 8
@g_led_control_registers_update_required = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3736_mono_set_led_control_register(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = mul nsw i32 %8, 2
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = srem i32 %12, 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 1, %17
  %19 = load i32**, i32*** @g_led_control_registers, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %18
  store i32 %26, i32* %24, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load i32**, i32*** @g_led_control_registers, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %30
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %27, %16
  store i32 1, i32* @g_led_control_registers_update_required, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
