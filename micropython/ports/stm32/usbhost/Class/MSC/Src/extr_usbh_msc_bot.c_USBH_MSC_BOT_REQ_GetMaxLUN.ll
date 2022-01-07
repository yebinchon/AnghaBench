; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc_bot.c_USBH_MSC_BOT_REQ_GetMaxLUN.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc_bot.c_USBH_MSC_BOT_REQ_GetMaxLUN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@USB_D2H = common dso_local global i32 0, align 4
@USB_REQ_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_REQ_RECIPIENT_INTERFACE = common dso_local global i32 0, align 4
@USB_REQ_GET_MAX_LUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_MSC_BOT_REQ_GetMaxLUN(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @USB_D2H, align 4
  %6 = load i32, i32* @USB_REQ_TYPE_CLASS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @USB_REQ_RECIPIENT_INTERFACE, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %9, i32* %14, align 8
  %15 = load i32, i32* @USB_REQ_GET_MAX_LUN, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  store i32 %15, i32* %20, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @USBH_CtlReq(%struct.TYPE_16__* %39, i32* %40, i32 1)
  ret i32 %41
}

declare dso_local i32 @USBH_CtlReq(%struct.TYPE_16__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
