; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/simplelink/extr_cc_pal.c_spi_Open.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/simplelink/extr_cc_pal.c_spi_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_RATE_20M = common dso_local global i64 0, align 8
@LSPI_BASE = common dso_local global i64 0, align 8
@PRCM_LSPI = common dso_local global i32 0, align 4
@PRCM_RUN_MODE_CLK = common dso_local global i32 0, align 4
@PRCM_SLP_MODE_CLK = common dso_local global i32 0, align 4
@SPI_MODE_MASTER = common dso_local global i32 0, align 4
@SPI_SUB_MODE_0 = common dso_local global i32 0, align 4
@SPI_SW_CTRL_CS = common dso_local global i32 0, align 4
@SPI_4PIN_MODE = common dso_local global i32 0, align 4
@SPI_TURBO_OFF = common dso_local global i32 0, align 4
@SPI_CS_ACTIVEHIGH = common dso_local global i32 0, align 4
@SPI_WL_32 = common dso_local global i32 0, align 4
@g_SpiFd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_Open(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @SPI_RATE_20M, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i64, i64* @LSPI_BASE, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* @PRCM_LSPI, align 4
  %10 = load i32, i32* @PRCM_RUN_MODE_CLK, align 4
  %11 = load i32, i32* @PRCM_SLP_MODE_CLK, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @MAP_PRCMPeripheralClkEnable(i32 %9, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @MAP_SPICSDisable(i64 %14)
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @MAP_SPIDisable(i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @MAP_SPIReset(i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @PRCM_LSPI, align 4
  %22 = call i32 @MAP_PRCMPeripheralClockGet(i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @SPI_MODE_MASTER, align 4
  %25 = load i32, i32* @SPI_SUB_MODE_0, align 4
  %26 = load i32, i32* @SPI_SW_CTRL_CS, align 4
  %27 = load i32, i32* @SPI_4PIN_MODE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SPI_TURBO_OFF, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SPI_CS_ACTIVEHIGH, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SPI_WL_32, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @MAP_SPIConfigSetExpClk(i64 %20, i32 %22, i64 %23, i32 %24, i32 %25, i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @MAP_SPIEnable(i64 %36)
  store i32 1, i32* @g_SpiFd, align 4
  %38 = load i32, i32* @g_SpiFd, align 4
  ret i32 %38
}

declare dso_local i32 @MAP_PRCMPeripheralClkEnable(i32, i32) #1

declare dso_local i32 @MAP_SPICSDisable(i64) #1

declare dso_local i32 @MAP_SPIDisable(i64) #1

declare dso_local i32 @MAP_SPIReset(i64) #1

declare dso_local i32 @MAP_SPIConfigSetExpClk(i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @MAP_PRCMPeripheralClockGet(i32) #1

declare dso_local i32 @MAP_SPIEnable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
