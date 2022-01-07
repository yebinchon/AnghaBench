; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_mono_backlight.c_backlight_init_drivers.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_mono_backlight.c_backlight_init_drivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISSI_ADDR_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_init_drivers() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @i2c_init()
  %3 = load i32, i32* @ISSI_ADDR_DEFAULT, align 4
  %4 = call i32 @IS31FL3736_init(i32 %3)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %11, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 96
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @IS31FL3736_mono_set_led_control_register(i32 %9, i32 1)
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* @ISSI_ADDR_DEFAULT, align 4
  %16 = call i32 @IS31FL3736_update_led_control_registers(i32 %15, i32 0)
  ret void
}

declare dso_local i32 @i2c_init(...) #1

declare dso_local i32 @IS31FL3736_init(i32) #1

declare dso_local i32 @IS31FL3736_mono_set_led_control_register(i32, i32) #1

declare dso_local i32 @IS31FL3736_update_led_control_registers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
