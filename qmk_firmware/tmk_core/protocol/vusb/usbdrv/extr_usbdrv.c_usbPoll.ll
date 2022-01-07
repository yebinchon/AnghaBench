; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/usbdrv/extr_usbdrv.c_usbPoll.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/usbdrv/extr_usbdrv.c_usbPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usbRxLen = common dso_local global i64 0, align 8
@usbRxBuf = common dso_local global i64 0, align 8
@USB_BUFSIZE = common dso_local global i64 0, align 8
@usbInputBufOffset = common dso_local global i64 0, align 8
@usbTxLen = common dso_local global i32 0, align 4
@usbMsgLen = common dso_local global i64 0, align 8
@USB_NO_MSG = common dso_local global i64 0, align 8
@USBIN = common dso_local global i64 0, align 8
@USBMASK = common dso_local global i64 0, align 8
@usbNewDeviceAddr = common dso_local global i64 0, align 8
@usbDeviceAddr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbPoll() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @usbRxLen, align 8
  %5 = sub nsw i64 %4, 3
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %0
  %9 = load i64, i64* @usbRxBuf, align 8
  %10 = load i64, i64* @USB_BUFSIZE, align 8
  %11 = add nsw i64 %9, %10
  %12 = add nsw i64 %11, 1
  %13 = load i64, i64* @usbInputBufOffset, align 8
  %14 = sub nsw i64 %12, %13
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @usbProcessRx(i64 %14, i64 %15)
  store i64 0, i64* @usbRxLen, align 8
  br label %17

17:                                               ; preds = %8, %0
  %18 = load i32, i32* @usbTxLen, align 4
  %19 = and i32 %18, 16
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* @usbMsgLen, align 8
  %23 = load i64, i64* @USB_NO_MSG, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (...) @usbBuildTxBlock()
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %27, %17
  store i64 20, i64* %2, align 8
  br label %29

29:                                               ; preds = %40, %28
  %30 = load i64, i64* %2, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i64, i64* @USBIN, align 8
  %34 = load i64, i64* @USBMASK, align 8
  %35 = and i64 %33, %34
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %46

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %2, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %2, align 8
  br label %29

43:                                               ; preds = %29
  store i64 0, i64* @usbNewDeviceAddr, align 8
  store i64 0, i64* @usbDeviceAddr, align 8
  %44 = call i32 (...) @usbResetStall()
  %45 = call i32 @DBG1(i32 255, i32 0, i32 0)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i64, i64* %2, align 8
  %48 = call i32 @usbHandleResetHook(i64 %47)
  ret void
}

declare dso_local i32 @usbProcessRx(i64, i64) #1

declare dso_local i32 @usbBuildTxBlock(...) #1

declare dso_local i32 @usbResetStall(...) #1

declare dso_local i32 @DBG1(i32, i32, i32) #1

declare dso_local i32 @usbHandleResetHook(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
