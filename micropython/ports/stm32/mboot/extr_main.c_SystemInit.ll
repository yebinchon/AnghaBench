; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_SystemInit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_SystemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CONFIG_RCC_CR_1ST = common dso_local global i32 0, align 4
@RCC = common dso_local global %struct.TYPE_5__* null, align 8
@CONFIG_RCC_CR_2ND = common dso_local global i32 0, align 4
@CONFIG_RCC_PLLCFGR = common dso_local global i32 0, align 4
@FLASH_BASE = common dso_local global i32 0, align 4
@SCB = common dso_local global %struct.TYPE_4__* null, align 8
@SCB_CCR_STKALIGN_Msk = common dso_local global i32 0, align 4
@PWR = common dso_local global %struct.TYPE_6__* null, align 8
@PWR_CR3_LDOEN = common dso_local global i32 0, align 4
@PWR_CSR1_ACTVOSRDY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SystemInit() #0 {
  %1 = load i32, i32* @CONFIG_RCC_CR_1ST, align 4
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 11
  %4 = load i32, i32* %3, align 4
  %5 = or i32 %4, %1
  store i32 %5, i32* %3, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @CONFIG_RCC_CR_2ND, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @CONFIG_RCC_PLLCFGR, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 12
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RCC, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, -262145
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @FLASH_BASE, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SCB, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @SCB_CCR_STKALIGN_Msk, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SCB, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
