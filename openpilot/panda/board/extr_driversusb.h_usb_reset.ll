; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversusb.h_usb_reset.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversusb.h_usb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@USBx_DEVICE = common dso_local global %struct.TYPE_7__* null, align 8
@USB_OTG_DCFG_DAD = common dso_local global i32 0, align 4
@USBx = common dso_local global %struct.TYPE_8__* null, align 8
@USB_OTG_GRSTCTL_TXFFLSH = common dso_local global i32 0, align 4
@USB_OTG_GRSTCTL_TXFNUM_4 = common dso_local global i32 0, align 4
@USB_OTG_GRSTCTL_RXFFLSH = common dso_local global i32 0, align 4
@USB_OTG_DCTL_CGINAK = common dso_local global i32 0, align 4
@USB_OTG_DOEPTSIZ_STUPCNT = common dso_local global i32 0, align 4
@USB_OTG_DOEPTSIZ_PKTCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_reset() #0 {
  %1 = load %struct.TYPE_7__*, %struct.TYPE_7__** @USBx_DEVICE, align 8
  %2 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 -1, i32* %2, align 4
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @USBx_DEVICE, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i32 -1, i32* %4, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @USBx_DEVICE, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i32 -1, i32* %6, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @USBx_DEVICE, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  store i32 -1, i32* %8, align 4
  %9 = call %struct.TYPE_6__* @USBx_INEP(i32 0)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 255, i32* %10, align 4
  %11 = call %struct.TYPE_5__* @USBx_OUTEP(i32 0)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 255, i32* %12, align 4
  %13 = load i32, i32* @USB_OTG_DCFG_DAD, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @USBx_DEVICE, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 64, i32* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32 4194368, i32* %22, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 4194432, i32* %26, align 4
  %27 = load i32, i32* @USB_OTG_GRSTCTL_TXFFLSH, align 4
  %28 = load i32, i32* @USB_OTG_GRSTCTL_TXFNUM_4, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %40, %0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @USB_OTG_GRSTCTL_TXFFLSH, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @USB_OTG_GRSTCTL_TXFFLSH, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %32

41:                                               ; preds = %32
  %42 = load i32, i32* @USB_OTG_GRSTCTL_RXFFLSH, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %53, %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @USB_OTG_GRSTCTL_RXFFLSH, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @USB_OTG_GRSTCTL_RXFFLSH, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %45

54:                                               ; preds = %45
  %55 = load i32, i32* @USB_OTG_DCTL_CGINAK, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @USBx_DEVICE, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @USB_OTG_DOEPTSIZ_STUPCNT, align 4
  %61 = load i32, i32* @USB_OTG_DOEPTSIZ_PKTCNT, align 4
  %62 = and i32 %61, 524288
  %63 = or i32 %60, %62
  %64 = or i32 %63, 24
  %65 = call %struct.TYPE_5__* @USBx_OUTEP(i32 0)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  ret void
}

declare dso_local %struct.TYPE_6__* @USBx_INEP(i32) #1

declare dso_local %struct.TYPE_5__* @USBx_OUTEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
