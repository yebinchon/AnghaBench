; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/model01/extr_leds.c_set_all_leds_to.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/model01/extr_leds.c_set_all_leds_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWI_CMD_LED_SET_ALL_TO = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@I2C_TIMEOUT = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_all_leds_to(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* @TWI_CMD_LED_SET_ALL_TO, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @LEFT, align 4
  %17 = call i32 @I2C_ADDR(i32 %16)
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %19 = load i32, i32* @I2C_TIMEOUT, align 4
  %20 = call i32 @i2c_transmit(i32 %17, i32* %18, i32 16, i32 %19)
  %21 = load i32, i32* @RIGHT, align 4
  %22 = call i32 @I2C_ADDR(i32 %21)
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %24 = load i32, i32* @I2C_TIMEOUT, align 4
  %25 = call i32 @i2c_transmit(i32 %22, i32* %23, i32 16, i32 %24)
  %26 = call i32 @_delay_us(i32 10)
  ret void
}

declare dso_local i32 @i2c_transmit(i32, i32*, i32, i32) #1

declare dso_local i32 @I2C_ADDR(i32) #1

declare dso_local i32 @_delay_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
