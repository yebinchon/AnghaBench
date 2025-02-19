; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_set_event_mask.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_set_event_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@HCI_EVNT_WLAN_TX_COMPLETE = common dso_local global i32 0, align 4
@tSLInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HCI_EVNT_WLAN_UNSOL_BASE = common dso_local global i32 0, align 4
@EFAIL = common dso_local global i32 0, align 4
@HEADERS_SIZE_CMD = common dso_local global i32 0, align 4
@HCI_CMND_EVENT_MASK = common dso_local global i32 0, align 4
@WLAN_SET_MASK_PARAMS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_set_event_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @HCI_EVNT_WLAN_TX_COMPLETE, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @HCI_EVNT_WLAN_TX_COMPLETE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @HCI_EVNT_WLAN_TX_COMPLETE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %43

17:                                               ; preds = %12
  %18 = load i32, i32* @HCI_EVNT_WLAN_TX_COMPLETE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @HCI_EVNT_WLAN_UNSOL_BASE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @EFAIL, align 4
  store i32 %27, i32* %4, align 4
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 1), align 8
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @HEADERS_SIZE_CMD, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32* @UINT32_TO_STREAM(i32* %33, i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* @HCI_CMND_EVENT_MASK, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @WLAN_SET_MASK_PARAMS_LEN, align 4
  %39 = call i32 @hci_command_send(i32 %36, i32* %37, i32 %38)
  %40 = load i32, i32* @HCI_CMND_EVENT_MASK, align 4
  %41 = call i32 @SimpleLinkWaitEvent(i32 %40, i32* %4)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %26, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32* @UINT32_TO_STREAM(i32*, i32) #1

declare dso_local i32 @hci_command_send(i32, i32*, i32) #1

declare dso_local i32 @SimpleLinkWaitEvent(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
