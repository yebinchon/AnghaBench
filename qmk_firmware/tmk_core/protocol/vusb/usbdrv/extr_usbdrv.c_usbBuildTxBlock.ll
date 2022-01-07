; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/usbdrv/extr_usbdrv.c_usbBuildTxBlock.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/usbdrv/extr_usbdrv.c_usbBuildTxBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usbMsgLen = common dso_local global i32 0, align 4
@USBPID_DATA0 = common dso_local global i32 0, align 4
@USBPID_DATA1 = common dso_local global i32 0, align 4
@usbTxBuf = common dso_local global i32* null, align 8
@USB_NO_MSG = common dso_local global i32 0, align 4
@USBPID_STALL = common dso_local global i32 0, align 4
@usbTxLen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usbBuildTxBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbBuildTxBlock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @usbMsgLen, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp sgt i32 %4, 8
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 8, i32* %1, align 4
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @usbMsgLen, align 4
  %10 = sub nsw i32 %9, %8
  store i32 %10, i32* @usbMsgLen, align 4
  %11 = load i32, i32* @USBPID_DATA0, align 4
  %12 = load i32, i32* @USBPID_DATA1, align 4
  %13 = xor i32 %11, %12
  %14 = load i32*, i32** @usbTxBuf, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32*, i32** @usbTxBuf, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @usbDeviceRead(i32* %19, i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp sle i32 %22, 8
  br i1 %23, label %24, label %36

24:                                               ; preds = %7
  %25 = load i32*, i32** @usbTxBuf, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @usbCrc16Append(i32* %26, i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 4
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %31, 12
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @USB_NO_MSG, align 4
  store i32 %34, i32* @usbMsgLen, align 4
  br label %35

35:                                               ; preds = %33, %24
  br label %39

36:                                               ; preds = %7
  %37 = load i32, i32* @USBPID_STALL, align 4
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* @USB_NO_MSG, align 4
  store i32 %38, i32* @usbMsgLen, align 4
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* @usbTxLen, align 4
  %41 = load i32*, i32** @usbTxBuf, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call i32 @DBG2(i32 32, i32* %41, i32 %43)
  ret void
}

declare dso_local i32 @usbDeviceRead(i32*, i32) #1

declare dso_local i32 @usbCrc16Append(i32*, i32) #1

declare dso_local i32 @DBG2(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
