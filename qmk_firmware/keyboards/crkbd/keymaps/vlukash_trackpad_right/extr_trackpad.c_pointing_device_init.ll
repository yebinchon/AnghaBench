; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/vlukash_trackpad_right/extr_trackpad.c_pointing_device_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/vlukash_trackpad_right/extr_trackpad.c_pointing_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_SPEED_FCPU_DIV_8 = common dso_local global i32 0, align 4
@SPI_MODE_MASTER = common dso_local global i32 0, align 4
@TP_RESET_INIT = common dso_local global i32 0, align 4
@TP_SHUTDOWN_INIT = common dso_local global i32 0, align 4
@TP_CS_INIT = common dso_local global i32 0, align 4
@LVL_SHIFT_EN_INIT = common dso_local global i32 0, align 4
@LVL_SHIFT_EN_LO = common dso_local global i32 0, align 4
@LVL_SHIFT_EN_HI = common dso_local global i32 0, align 4
@TP_RESET_HI = common dso_local global i32 0, align 4
@TP_RESET_LO = common dso_local global i32 0, align 4
@TP_SHUTDOWN_LO = common dso_local global i32 0, align 4
@TP_CS_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pointing_device_init() #0 {
  %1 = load i32, i32* @SPI_SPEED_FCPU_DIV_8, align 4
  %2 = load i32, i32* @SPI_MODE_MASTER, align 4
  %3 = or i32 %1, %2
  %4 = call i32 @SPI_Init(i32 %3)
  %5 = load i32, i32* @TP_RESET_INIT, align 4
  %6 = load i32, i32* @TP_SHUTDOWN_INIT, align 4
  %7 = load i32, i32* @TP_CS_INIT, align 4
  %8 = load i32, i32* @LVL_SHIFT_EN_INIT, align 4
  %9 = load i32, i32* @LVL_SHIFT_EN_LO, align 4
  %10 = call i32 @wait_ms(i32 100)
  %11 = load i32, i32* @LVL_SHIFT_EN_HI, align 4
  %12 = load i32, i32* @TP_RESET_HI, align 4
  %13 = call i32 @wait_ms(i32 100)
  %14 = load i32, i32* @TP_RESET_LO, align 4
  %15 = load i32, i32* @TP_SHUTDOWN_LO, align 4
  %16 = load i32, i32* @TP_CS_HI, align 4
  ret void
}

declare dso_local i32 @SPI_Init(i32) #1

declare dso_local i32 @wait_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
