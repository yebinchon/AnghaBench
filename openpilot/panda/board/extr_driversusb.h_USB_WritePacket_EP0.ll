; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversusb.h_USB_WritePacket_EP0.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversusb.h_USB_WritePacket_EP0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ep0_txdata = common dso_local global i32* null, align 8
@ep0_txlen = common dso_local global i64 0, align 8
@USBx_DEVICE = common dso_local global %struct.TYPE_4__* null, align 8
@USB_OTG_DOEPCTL_CNAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @USB_WritePacket_EP0(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @MIN(i64 %6, i32 64)
  store i64 %7, i64* %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @USB_WritePacket(i32* %8, i64 %9, i32 0)
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** @ep0_txdata, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub i64 %18, %19
  store i64 %20, i64* @ep0_txlen, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @USBx_DEVICE, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @USB_OTG_DOEPCTL_CNAK, align 4
  %27 = call %struct.TYPE_3__* @USBx_OUTEP(i32 0)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %14
  ret void
}

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @USB_WritePacket(i32*, i64, i32) #1

declare dso_local %struct.TYPE_3__* @USBx_OUTEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
