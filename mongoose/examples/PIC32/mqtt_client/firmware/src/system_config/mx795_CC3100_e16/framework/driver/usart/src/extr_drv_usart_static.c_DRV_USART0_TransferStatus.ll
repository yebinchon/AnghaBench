; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/usart/src/extr_drv_usart_static.c_DRV_USART0_TransferStatus.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/usart/src/extr_drv_usart_static.c_DRV_USART0_TransferStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USART_ID_2 = common dso_local global i32 0, align 4
@DRV_USART_TRANSFER_STATUS_RECEIVER_DATA_PRESENT = common dso_local global i32 0, align 4
@DRV_USART_TRANSFER_STATUS_RECEIVER_EMPTY = common dso_local global i32 0, align 4
@DRV_USART_TRANSFER_STATUS_TRANSMIT_EMPTY = common dso_local global i32 0, align 4
@DRV_USART_TRANSFER_STATUS_TRANSMIT_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_USART0_TransferStatus() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @USART_ID_2, align 4
  %3 = call i64 @PLIB_USART_ReceiverDataIsAvailable(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @DRV_USART_TRANSFER_STATUS_RECEIVER_DATA_PRESENT, align 4
  %7 = load i32, i32* %1, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %1, align 4
  br label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @DRV_USART_TRANSFER_STATUS_RECEIVER_EMPTY, align 4
  %11 = load i32, i32* %1, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %9, %5
  %14 = load i32, i32* @USART_ID_2, align 4
  %15 = call i64 @PLIB_USART_TransmitterIsEmpty(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @DRV_USART_TRANSFER_STATUS_TRANSMIT_EMPTY, align 4
  %19 = load i32, i32* %1, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @USART_ID_2, align 4
  %23 = call i64 @PLIB_USART_TransmitterBufferIsFull(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @DRV_USART_TRANSFER_STATUS_TRANSMIT_FULL, align 4
  %27 = load i32, i32* %1, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i64 @PLIB_USART_ReceiverDataIsAvailable(i32) #1

declare dso_local i64 @PLIB_USART_TransmitterIsEmpty(i32) #1

declare dso_local i64 @PLIB_USART_TransmitterBufferIsFull(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
