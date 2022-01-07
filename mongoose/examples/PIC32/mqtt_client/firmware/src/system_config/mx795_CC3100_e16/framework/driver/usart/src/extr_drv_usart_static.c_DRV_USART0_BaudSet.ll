; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/usart/src/extr_drv_usart_static.c_DRV_USART0_BaudSet.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/usart/src/extr_drv_usart_static.c_DRV_USART0_BaudSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRV_USART_BAUD_SET_SUCCESS = common dso_local global i32 0, align 4
@CLK_BUS_PERIPHERAL_1 = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@USART_ID_2 = common dso_local global i32 0, align 4
@DRV_USART_BAUD_SET_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_USART0_BaudSet(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @DRV_USART_BAUD_SET_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @CLK_BUS_PERIPHERAL_1, align 4
  %9 = call i32 @SYS_CLK_PeripheralFrequencyGet(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sdiv i32 %10, %11
  %13 = ashr i32 %12, 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = sdiv i32 %15, %16
  %18 = ashr i32 %17, 2
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @UINT16_MAX, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* @USART_ID_2, align 4
  %28 = call i32 @PLIB_USART_BaudRateHighEnable(i32 %27)
  %29 = load i32, i32* @USART_ID_2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @PLIB_USART_BaudRateHighSet(i32 %29, i32 %30, i32 %31)
  br label %50

33:                                               ; preds = %22, %1
  %34 = load i32, i32* %4, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @UINT16_MAX, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* @USART_ID_2, align 4
  %42 = call i32 @PLIB_USART_BaudRateHighDisable(i32 %41)
  %43 = load i32, i32* @USART_ID_2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @PLIB_USART_BaudRateSet(i32 %43, i32 %44, i32 %45)
  br label %49

47:                                               ; preds = %36, %33
  %48 = load i32, i32* @DRV_USART_BAUD_SET_ERROR, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %40
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @SYS_CLK_PeripheralFrequencyGet(i32) #1

declare dso_local i32 @PLIB_USART_BaudRateHighEnable(i32) #1

declare dso_local i32 @PLIB_USART_BaudRateHighSet(i32, i32, i32) #1

declare dso_local i32 @PLIB_USART_BaudRateHighDisable(i32) #1

declare dso_local i32 @PLIB_USART_BaudRateSet(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
