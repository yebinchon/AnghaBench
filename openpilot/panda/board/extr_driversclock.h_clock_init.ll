; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversclock.h_clock_init.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversclock.h_clock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@RCC_CR_HSEON = common dso_local global i32 0, align 4
@RCC = common dso_local global %struct.TYPE_3__* null, align 8
@RCC_CR_HSERDY = common dso_local global i32 0, align 4
@RCC_CFGR_HPRE_DIV1 = common dso_local global i32 0, align 4
@RCC_CFGR_PPRE2_DIV2 = common dso_local global i32 0, align 4
@RCC_CFGR_PPRE1_DIV4 = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLQ_2 = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLM_3 = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLN_6 = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLN_5 = common dso_local global i32 0, align 4
@RCC_PLLCFGR_PLLSRC_HSE = common dso_local global i32 0, align 4
@RCC_CR_PLLON = common dso_local global i32 0, align 4
@RCC_CR_PLLRDY = common dso_local global i32 0, align 4
@FLASH_ACR_ICEN = common dso_local global i32 0, align 4
@FLASH_ACR_DCEN = common dso_local global i32 0, align 4
@FLASH_ACR_LATENCY_5WS = common dso_local global i32 0, align 4
@FLASH = common dso_local global %struct.TYPE_4__* null, align 8
@RCC_CFGR_SW_PLL = common dso_local global i32 0, align 4
@RCC_CFGR_SWS = common dso_local global i32 0, align 4
@RCC_CFGR_SWS_PLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clock_init() #0 {
  %1 = load i32, i32* @RCC_CR_HSEON, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @RCC, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = or i32 %4, %1
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %13, %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @RCC, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RCC_CR_HSERDY, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %6

14:                                               ; preds = %6
  %15 = load i32, i32* @RCC_CFGR_HPRE_DIV1, align 4
  %16 = load i32, i32* @RCC_CFGR_PPRE2_DIV2, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RCC_CFGR_PPRE1_DIV4, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @RCC, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @RCC_PLLCFGR_PLLQ_2, align 4
  %23 = load i32, i32* @RCC_PLLCFGR_PLLM_3, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RCC_PLLCFGR_PLLN_6, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RCC_PLLCFGR_PLLN_5, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RCC_PLLCFGR_PLLSRC_HSE, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @RCC, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @RCC_CR_PLLON, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @RCC, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %45, %14
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @RCC, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RCC_CR_PLLRDY, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %38

46:                                               ; preds = %38
  %47 = load i32, i32* @FLASH_ACR_ICEN, align 4
  %48 = load i32, i32* @FLASH_ACR_DCEN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @FLASH_ACR_LATENCY_5WS, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @RCC_CFGR_SW_PLL, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @RCC, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %67, %46
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @RCC, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RCC_CFGR_SWS, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @RCC_CFGR_SWS_PLL, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %59

68:                                               ; preds = %59
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
