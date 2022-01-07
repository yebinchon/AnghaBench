; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Core/Src/extr_usbh_ctlreq.c_USBH_Get_CfgDesc.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Core/Src/extr_usbh_ctlreq.c_USBH_Get_CfgDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i32* }

@USB_REQ_RECIPIENT_DEVICE = common dso_local global i32 0, align 4
@USB_REQ_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_DESC_CONFIGURATION = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_Get_CfgDesc(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = load i32, i32* @USB_REQ_RECIPIENT_DEVICE, align 4
  %13 = load i32, i32* @USB_REQ_TYPE_STANDARD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @USB_DESC_CONFIGURATION, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @USBH_GetDescriptor(%struct.TYPE_6__* %11, i32 %14, i32 %15, i32* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @USBH_OK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @USBH_ParseCfgDesc(i32* %24, i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @USBH_GetDescriptor(%struct.TYPE_6__*, i32, i32, i32*, i32) #1

declare dso_local i32 @USBH_ParseCfgDesc(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
