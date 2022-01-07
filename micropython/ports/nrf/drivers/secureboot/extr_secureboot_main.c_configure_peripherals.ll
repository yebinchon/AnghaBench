; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/drivers/secureboot/extr_secureboot_main.c_configure_peripherals.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/drivers/secureboot/extr_secureboot_main.c_configure_peripherals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@NRF_SPU_S = common dso_local global %struct.TYPE_4__* null, align 8
@NRF_REGULATORS_S = common dso_local global i32 0, align 4
@NRF_CLOCK_S = common dso_local global i32 0, align 4
@NRF_UARTE0_S = common dso_local global i32 0, align 4
@NRF_UARTE1_S = common dso_local global i32 0, align 4
@NRF_UARTE2_S = common dso_local global i32 0, align 4
@NRF_UARTE3_S = common dso_local global i32 0, align 4
@NRF_SAADC_S = common dso_local global i32 0, align 4
@NRF_TIMER0_S = common dso_local global i32 0, align 4
@NRF_TIMER1_S = common dso_local global i32 0, align 4
@NRF_TIMER2_S = common dso_local global i32 0, align 4
@NRF_RTC0_S = common dso_local global i32 0, align 4
@NRF_RTC1_S = common dso_local global i32 0, align 4
@NRF_DPPIC_S = common dso_local global i32 0, align 4
@NRF_WDT_S = common dso_local global i32 0, align 4
@NRF_EGU1_S = common dso_local global i32 0, align 4
@NRF_EGU2_S = common dso_local global i32 0, align 4
@NRF_EGU3_S = common dso_local global i32 0, align 4
@NRF_EGU4_S = common dso_local global i32 0, align 4
@NRF_EGU5_S = common dso_local global i32 0, align 4
@NRF_PWM0_S = common dso_local global i32 0, align 4
@NRF_PWM1_S = common dso_local global i32 0, align 4
@NRF_PWM2_S = common dso_local global i32 0, align 4
@NRF_PWM3_S = common dso_local global i32 0, align 4
@NRF_PDM_S = common dso_local global i32 0, align 4
@NRF_I2S_S = common dso_local global i32 0, align 4
@NRF_IPC_S = common dso_local global i32 0, align 4
@NRF_FPU_S = common dso_local global i32 0, align 4
@NRF_GPIOTE1_NS = common dso_local global i32 0, align 4
@NRF_NVMC_S = common dso_local global i32 0, align 4
@NRF_VMC_S = common dso_local global i32 0, align 4
@NRF_P0_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @configure_peripherals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_peripherals() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NRF_SPU_S, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i64 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @NRF_REGULATORS_S, align 4
  %7 = call i32 @PERIPHERAL_ID_GET(i32 %6)
  %8 = call i32 @peripheral_setup(i32 %7)
  %9 = load i32, i32* @NRF_CLOCK_S, align 4
  %10 = call i32 @PERIPHERAL_ID_GET(i32 %9)
  %11 = call i32 @peripheral_setup(i32 %10)
  %12 = load i32, i32* @NRF_UARTE0_S, align 4
  %13 = call i32 @PERIPHERAL_ID_GET(i32 %12)
  %14 = call i32 @peripheral_setup(i32 %13)
  %15 = load i32, i32* @NRF_UARTE1_S, align 4
  %16 = call i32 @PERIPHERAL_ID_GET(i32 %15)
  %17 = call i32 @peripheral_setup(i32 %16)
  %18 = load i32, i32* @NRF_UARTE2_S, align 4
  %19 = call i32 @PERIPHERAL_ID_GET(i32 %18)
  %20 = call i32 @peripheral_setup(i32 %19)
  %21 = load i32, i32* @NRF_UARTE3_S, align 4
  %22 = call i32 @PERIPHERAL_ID_GET(i32 %21)
  %23 = call i32 @peripheral_setup(i32 %22)
  %24 = load i32, i32* @NRF_SAADC_S, align 4
  %25 = call i32 @PERIPHERAL_ID_GET(i32 %24)
  %26 = call i32 @peripheral_setup(i32 %25)
  %27 = load i32, i32* @NRF_TIMER0_S, align 4
  %28 = call i32 @PERIPHERAL_ID_GET(i32 %27)
  %29 = call i32 @peripheral_setup(i32 %28)
  %30 = load i32, i32* @NRF_TIMER1_S, align 4
  %31 = call i32 @PERIPHERAL_ID_GET(i32 %30)
  %32 = call i32 @peripheral_setup(i32 %31)
  %33 = load i32, i32* @NRF_TIMER2_S, align 4
  %34 = call i32 @PERIPHERAL_ID_GET(i32 %33)
  %35 = call i32 @peripheral_setup(i32 %34)
  %36 = load i32, i32* @NRF_RTC0_S, align 4
  %37 = call i32 @PERIPHERAL_ID_GET(i32 %36)
  %38 = call i32 @peripheral_setup(i32 %37)
  %39 = load i32, i32* @NRF_RTC1_S, align 4
  %40 = call i32 @PERIPHERAL_ID_GET(i32 %39)
  %41 = call i32 @peripheral_setup(i32 %40)
  %42 = load i32, i32* @NRF_DPPIC_S, align 4
  %43 = call i32 @PERIPHERAL_ID_GET(i32 %42)
  %44 = call i32 @peripheral_setup(i32 %43)
  %45 = load i32, i32* @NRF_WDT_S, align 4
  %46 = call i32 @PERIPHERAL_ID_GET(i32 %45)
  %47 = call i32 @peripheral_setup(i32 %46)
  %48 = load i32, i32* @NRF_EGU1_S, align 4
  %49 = call i32 @PERIPHERAL_ID_GET(i32 %48)
  %50 = call i32 @peripheral_setup(i32 %49)
  %51 = load i32, i32* @NRF_EGU2_S, align 4
  %52 = call i32 @PERIPHERAL_ID_GET(i32 %51)
  %53 = call i32 @peripheral_setup(i32 %52)
  %54 = load i32, i32* @NRF_EGU3_S, align 4
  %55 = call i32 @PERIPHERAL_ID_GET(i32 %54)
  %56 = call i32 @peripheral_setup(i32 %55)
  %57 = load i32, i32* @NRF_EGU4_S, align 4
  %58 = call i32 @PERIPHERAL_ID_GET(i32 %57)
  %59 = call i32 @peripheral_setup(i32 %58)
  %60 = load i32, i32* @NRF_EGU5_S, align 4
  %61 = call i32 @PERIPHERAL_ID_GET(i32 %60)
  %62 = call i32 @peripheral_setup(i32 %61)
  %63 = load i32, i32* @NRF_PWM0_S, align 4
  %64 = call i32 @PERIPHERAL_ID_GET(i32 %63)
  %65 = call i32 @peripheral_setup(i32 %64)
  %66 = load i32, i32* @NRF_PWM1_S, align 4
  %67 = call i32 @PERIPHERAL_ID_GET(i32 %66)
  %68 = call i32 @peripheral_setup(i32 %67)
  %69 = load i32, i32* @NRF_PWM2_S, align 4
  %70 = call i32 @PERIPHERAL_ID_GET(i32 %69)
  %71 = call i32 @peripheral_setup(i32 %70)
  %72 = load i32, i32* @NRF_PWM3_S, align 4
  %73 = call i32 @PERIPHERAL_ID_GET(i32 %72)
  %74 = call i32 @peripheral_setup(i32 %73)
  %75 = load i32, i32* @NRF_PDM_S, align 4
  %76 = call i32 @PERIPHERAL_ID_GET(i32 %75)
  %77 = call i32 @peripheral_setup(i32 %76)
  %78 = load i32, i32* @NRF_I2S_S, align 4
  %79 = call i32 @PERIPHERAL_ID_GET(i32 %78)
  %80 = call i32 @peripheral_setup(i32 %79)
  %81 = load i32, i32* @NRF_IPC_S, align 4
  %82 = call i32 @PERIPHERAL_ID_GET(i32 %81)
  %83 = call i32 @peripheral_setup(i32 %82)
  %84 = load i32, i32* @NRF_FPU_S, align 4
  %85 = call i32 @PERIPHERAL_ID_GET(i32 %84)
  %86 = call i32 @peripheral_setup(i32 %85)
  %87 = load i32, i32* @NRF_GPIOTE1_NS, align 4
  %88 = call i32 @PERIPHERAL_ID_GET(i32 %87)
  %89 = call i32 @peripheral_setup(i32 %88)
  %90 = load i32, i32* @NRF_NVMC_S, align 4
  %91 = call i32 @PERIPHERAL_ID_GET(i32 %90)
  %92 = call i32 @peripheral_setup(i32 %91)
  %93 = load i32, i32* @NRF_VMC_S, align 4
  %94 = call i32 @PERIPHERAL_ID_GET(i32 %93)
  %95 = call i32 @peripheral_setup(i32 %94)
  %96 = load i32, i32* @NRF_P0_NS, align 4
  %97 = call i32 @PERIPHERAL_ID_GET(i32 %96)
  %98 = call i32 @peripheral_setup(i32 %97)
  ret void
}

declare dso_local i32 @peripheral_setup(i32) #1

declare dso_local i32 @PERIPHERAL_ID_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
