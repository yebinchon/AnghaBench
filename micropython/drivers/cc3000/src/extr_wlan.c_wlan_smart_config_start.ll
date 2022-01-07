; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_smart_config_start.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_smart_config_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@EFAIL = common dso_local global i32 0, align 4
@tSLInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HEADERS_SIZE_CMD = common dso_local global i32 0, align 4
@HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_START = common dso_local global i32 0, align 4
@WLAN_SMART_CONFIG_START_PARAMS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_smart_config_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @EFAIL, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @HEADERS_SIZE_CMD, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32* @UINT32_TO_STREAM(i32* %12, i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* @EFAIL, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_START, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @WLAN_SMART_CONFIG_START_PARAMS_LEN, align 4
  %19 = call i32 @hci_command_send(i32 %16, i32* %17, i32 %18)
  %20 = load i32, i32* @HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_START, align 4
  %21 = call i32 @SimpleLinkWaitEvent(i32 %20, i32* %3)
  %22 = load i32, i32* %3, align 4
  ret i32 %22
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
