; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_smart_config_set_prefix.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_smart_config_set_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@EFAIL = common dso_local global i32 0, align 4
@tSLInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HEADERS_SIZE_CMD = common dso_local global i32 0, align 4
@SL_SIMPLE_CONFIG_PREFIX_LENGTH = common dso_local global i32 0, align 4
@HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_SET_PREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_smart_config_set_prefix(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @EFAIL, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @HEADERS_SIZE_CMD, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  store i8 84, i8* %18, align 1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 84, i8* %20, align 1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  store i8 84, i8* %22, align 1
  br label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @SL_SIMPLE_CONFIG_PREFIX_LENGTH, align 4
  %27 = call i32 @ARRAY_TO_STREAM(i32* %24, i8* %25, i32 %26)
  %28 = load i32, i32* @HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_SET_PREFIX, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @SL_SIMPLE_CONFIG_PREFIX_LENGTH, align 4
  %31 = call i32 @hci_command_send(i32 %28, i32* %29, i32 %30)
  %32 = load i32, i32* @HCI_CMND_WLAN_IOCTL_SIMPLE_CONFIG_SET_PREFIX, align 4
  %33 = call i32 @SimpleLinkWaitEvent(i32 %32, i32* %4)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %23, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @ARRAY_TO_STREAM(i32*, i8*, i32) #1

declare dso_local i32 @hci_command_send(i32, i32*, i32) #1

declare dso_local i32 @SimpleLinkWaitEvent(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
