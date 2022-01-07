; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_powerctrl.c_powerctrl_rcc_clock_config_pll.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_powerctrl.c_powerctrl_rcc_clock_config_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@FLASH_LATENCY_5 = common dso_local global i32 0, align 4
@RCC_SYSCLKSOURCE_PLLCLK = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i64 0, align 8
@MP_EIO = common dso_local global i32 0, align 4
@FLASH_LATENCY_0 = common dso_local global i32 0, align 4
@FLASH_LATENCY_1 = common dso_local global i32 0, align 4
@FLASH_LATENCY_2 = common dso_local global i32 0, align 4
@FLASH_LATENCY_3 = common dso_local global i32 0, align 4
@FLASH_LATENCY_4 = common dso_local global i32 0, align 4
@FLASH_LATENCY_6 = common dso_local global i32 0, align 4
@FLASH_LATENCY_7 = common dso_local global i32 0, align 4
@MICROPY_HW_FLASH_LATENCY = common dso_local global i32 0, align 4
@MP_ETIMEDOUT = common dso_local global i32 0, align 4
@PWR_REGULATOR_VOLTAGE_SCALE1 = common dso_local global i32 0, align 4
@PWR_REGULATOR_VOLTAGE_SCALE2 = common dso_local global i32 0, align 4
@PWR_REGULATOR_VOLTAGE_SCALE3 = common dso_local global i32 0, align 4
@RCC = common dso_local global %struct.TYPE_6__* null, align 8
@RCC_CR_PLLSAION = common dso_local global i32 0, align 4
@RCC_CR_PLLSAIRDY = common dso_local global i32 0, align 4
@RCC_DCKCFGR2_CK48MSEL = common dso_local global i32 0, align 4
@RCC_PLLSAICFGR_PLLSAIN_Pos = common dso_local global i32 0, align 4
@RCC_PLLSAICFGR_PLLSAIP_Pos = common dso_local global i32 0, align 4
@RCC_PLLSAICFGR_PLLSAIQ_Pos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @powerctrl_rcc_clock_config_pll(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @FLASH_LATENCY_5, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @RCC_SYSCLKSOURCE_PLLCLK, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @HAL_RCC_ClockConfig(%struct.TYPE_5__* %13, i32 %14)
  %16 = load i64, i64* @HAL_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @MP_EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i64 @HAL_RCC_ClockConfig(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
