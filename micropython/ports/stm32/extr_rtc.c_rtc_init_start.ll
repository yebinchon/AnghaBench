; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_rtc.c_rtc_init_start.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_rtc.c_rtc_init_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@RTC = common dso_local global i32 0, align 4
@RTCHandle = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@RTC_HOURFORMAT_24 = common dso_local global i32 0, align 4
@RTC_ASYNCH_PREDIV = common dso_local global i32 0, align 4
@RTC_SYNCH_PREDIV = common dso_local global i32 0, align 4
@RTC_OUTPUT_DISABLE = common dso_local global i32 0, align 4
@RTC_OUTPUT_POLARITY_HIGH = common dso_local global i32 0, align 4
@RTC_OUTPUT_TYPE_OPENDRAIN = common dso_local global i32 0, align 4
@rtc_need_init_finalise = common dso_local global i32 0, align 4
@RCC = common dso_local global %struct.TYPE_7__* null, align 8
@RCC_BDCR_RTCEN = common dso_local global i32 0, align 4
@RCC_BDCR_RTCSEL = common dso_local global i32 0, align 4
@RCC_BDCR_LSEON = common dso_local global i32 0, align 4
@RCC_BDCR_LSERDY = common dso_local global i32 0, align 4
@RCC_BDCR_RTCSEL_0 = common dso_local global i32 0, align 4
@rtc_info = common dso_local global i32 0, align 4
@RCC_BDCR_RTCSEL_1 = common dso_local global i32 0, align 4
@RCC_CSR_LSION = common dso_local global i32 0, align 4
@rtc_startup_tick = common dso_local global i32 0, align 4
@rtc_use_lse = common dso_local global i32 0, align 4
@MICROPY_HW_RTC_USE_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_init_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @RTC, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @RTCHandle, i32 0, i32 1), align 4
  %5 = load i32, i32* @RTC_HOURFORMAT_24, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @RTCHandle, i32 0, i32 0, i32 5), align 4
  %6 = load i32, i32* @RTC_ASYNCH_PREDIV, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @RTCHandle, i32 0, i32 0, i32 4), align 4
  %7 = load i32, i32* @RTC_SYNCH_PREDIV, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @RTCHandle, i32 0, i32 0, i32 3), align 4
  %8 = load i32, i32* @RTC_OUTPUT_DISABLE, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @RTCHandle, i32 0, i32 0, i32 2), align 4
  %9 = load i32, i32* @RTC_OUTPUT_POLARITY_HIGH, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @RTCHandle, i32 0, i32 0, i32 1), align 4
  %10 = load i32, i32* @RTC_OUTPUT_TYPE_OPENDRAIN, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @RTCHandle, i32 0, i32 0, i32 0), align 4
  store i32 0, i32* @rtc_need_init_finalise, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %83, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RCC, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @RCC_BDCR_RTCEN, align 4
  %19 = load i32, i32* @RCC_BDCR_RTCSEL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RCC_BDCR_LSEON, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RCC_BDCR_LSERDY, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %17, %24
  %26 = load i32, i32* @RCC_BDCR_RTCEN, align 4
  %27 = load i32, i32* @RCC_BDCR_RTCSEL_0, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RCC_BDCR_LSEON, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RCC_BDCR_LSERDY, align 4
  %32 = or i32 %30, %31
  %33 = icmp eq i32 %25, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %13
  %35 = call i32 (...) @HAL_PWR_EnableBkUpAccess()
  %36 = call i32 (...) @__HAL_RCC_CLEAR_RESET_FLAGS()
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RCC, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 7
  %41 = or i32 262144, %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RCC, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 3
  %46 = shl i32 %45, 8
  %47 = or i32 %41, %46
  %48 = load i32, i32* @rtc_info, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @rtc_info, align 4
  br label %91

50:                                               ; preds = %13
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @RCC_BDCR_RTCEN, align 4
  %53 = load i32, i32* @RCC_BDCR_RTCSEL, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = load i32, i32* @RCC_BDCR_RTCEN, align 4
  %57 = load i32, i32* @RCC_BDCR_RTCSEL_1, align 4
  %58 = or i32 %56, %57
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %50
  %61 = call i32 (...) @HAL_PWR_EnableBkUpAccess()
  %62 = call i32 (...) @__HAL_RCC_CLEAR_RESET_FLAGS()
  %63 = load i32, i32* @RCC_CSR_LSION, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RCC, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RCC, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 7
  %72 = or i32 524288, %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RCC, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 3
  %77 = shl i32 %76, 8
  %78 = or i32 %72, %77
  %79 = load i32, i32* @rtc_info, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* @rtc_info, align 4
  br label %91

81:                                               ; preds = %50
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %1
  %84 = call i32 (...) @HAL_GetTick()
  store i32 %84, i32* @rtc_startup_tick, align 4
  %85 = load i32, i32* @rtc_startup_tick, align 4
  %86 = and i32 %85, 16777215
  %87 = or i32 1056964608, %86
  store i32 %87, i32* @rtc_info, align 4
  %88 = load i32, i32* @rtc_use_lse, align 4
  %89 = load i32, i32* @MICROPY_HW_RTC_USE_BYPASS, align 4
  %90 = call i32 @PYB_RTC_MspInit_Kick(%struct.TYPE_6__* @RTCHandle, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %83, %60, %34
  ret void
}

declare dso_local i32 @HAL_PWR_EnableBkUpAccess(...) #1

declare dso_local i32 @__HAL_RCC_CLEAR_RESET_FLAGS(...) #1

declare dso_local i32 @HAL_GetTick(...) #1

declare dso_local i32 @PYB_RTC_MspInit_Kick(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
