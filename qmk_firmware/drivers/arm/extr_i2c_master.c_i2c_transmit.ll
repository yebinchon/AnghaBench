; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/arm/extr_i2c_master.c_i2c_transmit.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/arm/extr_i2c_master.c_i2c_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c_address = common dso_local global i32 0, align 4
@I2C_DRIVER = common dso_local global i32 0, align 4
@i2cconfig = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_transmit(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* @i2c_address, align 4
  %11 = call i32 @i2cStart(i32* @I2C_DRIVER, i32* @i2cconfig)
  %12 = load i32, i32* @i2c_address, align 4
  %13 = ashr i32 %12, 1
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @MS2ST(i32 %16)
  %18 = call i32 @i2cMasterTransmitTimeout(i32* @I2C_DRIVER, i32 %13, i32* %14, i32 %15, i32 0, i32 0, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = call i32 @chibios_to_qmk(i32* %9)
  ret i32 %19
}

declare dso_local i32 @i2cStart(i32*, i32*) #1

declare dso_local i32 @i2cMasterTransmitTimeout(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @MS2ST(i32) #1

declare dso_local i32 @chibios_to_qmk(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
