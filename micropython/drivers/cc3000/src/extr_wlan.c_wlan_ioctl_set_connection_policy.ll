; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_ioctl_set_connection_policy.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_ioctl_set_connection_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@EFAIL = common dso_local global i32 0, align 4
@tSLInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HEADERS_SIZE_CMD = common dso_local global i32 0, align 4
@HCI_CMND_WLAN_IOCTL_SET_CONNECTION_POLICY = common dso_local global i32 0, align 4
@WLAN_SET_CONNECTION_POLICY_PARAMS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_ioctl_set_connection_policy(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @EFAIL, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* @HEADERS_SIZE_CMD, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32* @UINT32_TO_STREAM(i32* %16, i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @UINT32_TO_STREAM(i32* %19, i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32* @UINT32_TO_STREAM(i32* %22, i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32, i32* @HCI_CMND_WLAN_IOCTL_SET_CONNECTION_POLICY, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @WLAN_SET_CONNECTION_POLICY_PARAMS_LEN, align 4
  %28 = call i32 @hci_command_send(i32 %25, i32* %26, i32 %27)
  %29 = load i32, i32* @HCI_CMND_WLAN_IOCTL_SET_CONNECTION_POLICY, align 4
  %30 = call i32 @SimpleLinkWaitEvent(i32 %29, i32* %7)
  %31 = load i32, i32* %7, align 4
  ret i32 %31
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
