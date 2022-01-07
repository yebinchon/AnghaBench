; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/cpu/mips/extr_ar71xx_serial.c_serial_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/cpu/mips/extr_ar71xx_serial.c_serial_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_BAUDRATE = common dso_local global i32 0, align 4
@AR71XX_GPIO_FUNC_UART_EN = common dso_local global i32 0, align 4
@AR71XX_GPIO_BASE = common dso_local global i64 0, align 8
@GPIO_REG_FUNC = common dso_local global i64 0, align 8
@OFS_LINE_CONTROL = common dso_local global i32 0, align 4
@OFS_DIVISOR_LSB = common dso_local global i32 0, align 4
@OFS_DIVISOR_MSB = common dso_local global i32 0, align 4
@OFS_DATA_FORMAT = common dso_local global i32 0, align 4
@OFS_INTR_ENABLE = common dso_local global i32 0, align 4
@AR91XX_GPIO_FUNC_UART_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 100000000, i32* %2, align 4
  %3 = call i32 @ar71xx_sys_frequency(i32 0, i32 0, i32* %2)
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @CONFIG_BAUDRATE, align 4
  %6 = mul nsw i32 16, %5
  %7 = sdiv i32 %4, %6
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @AR71XX_GPIO_FUNC_UART_EN, align 4
  %9 = load i64, i64* @AR71XX_GPIO_BASE, align 8
  %10 = load i64, i64* @GPIO_REG_FUNC, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @KSEG1ADDR(i64 %11)
  %13 = call i32 @writel(i32 %8, i32 %12)
  %14 = load i32, i32* @OFS_LINE_CONTROL, align 4
  %15 = call i32 @UART16550_WRITE(i32 %14, i32 128)
  %16 = load i32, i32* @OFS_DIVISOR_LSB, align 4
  %17 = load i32, i32* %1, align 4
  %18 = and i32 %17, 255
  %19 = call i32 @UART16550_WRITE(i32 %16, i32 %18)
  %20 = load i32, i32* @OFS_DIVISOR_MSB, align 4
  %21 = load i32, i32* %1, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = call i32 @UART16550_WRITE(i32 %20, i32 %23)
  %25 = load i32, i32* @OFS_LINE_CONTROL, align 4
  %26 = call i32 @UART16550_WRITE(i32 %25, i32 0)
  %27 = load i32, i32* @OFS_DATA_FORMAT, align 4
  %28 = call i32 @UART16550_WRITE(i32 %27, i32 3)
  %29 = load i32, i32* @OFS_INTR_ENABLE, align 4
  %30 = call i32 @UART16550_WRITE(i32 %29, i32 0)
  ret i32 0
}

declare dso_local i32 @ar71xx_sys_frequency(i32, i32, i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @KSEG1ADDR(i64) #1

declare dso_local i32 @UART16550_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
