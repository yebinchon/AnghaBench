; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid.c_USBH_HID_ClassRequest.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid.c_USBH_HID_ClassRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32)*, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@USB_HID_DESC_SIZE = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@USBH_NOT_SUPPORTED = common dso_local global i32 0, align 4
@HOST_USER_CLASS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @USBH_HID_ClassRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_HID_ClassRequest(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load i32, i32* @USBH_BUSY, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @USBH_BUSY, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %81 [
    i32 130, label %16
    i32 133, label %16
    i32 132, label %33
    i32 129, label %46
    i32 128, label %64
    i32 131, label %80
  ]

16:                                               ; preds = %1, %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = load i32, i32* @USB_HID_DESC_SIZE, align 4
  %19 = call i32 @USBH_HID_GetHIDDescriptor(%struct.TYPE_14__* %17, i32 %18)
  %20 = load i32, i32* @USBH_OK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @USBH_HID_ParseHIDDesc(%struct.TYPE_16__* %24, i32 %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store i32 132, i32* %31, align 4
  br label %32

32:                                               ; preds = %22, %16
  br label %82

33:                                               ; preds = %1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @USBH_HID_GetHIDReportDescriptor(%struct.TYPE_14__* %34, i32 %38)
  %40 = load i32, i32* @USBH_OK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i32 129, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %33
  br label %82

46:                                               ; preds = %1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = call i32 @USBH_HID_SetIdle(%struct.TYPE_14__* %47, i32 0, i32 0)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @USBH_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store i32 128, i32* %54, align 4
  br label %63

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @USBH_NOT_SUPPORTED, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i32 128, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62, %52
  br label %82

64:                                               ; preds = %1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = call i32 @USBH_HID_SetProtocol(%struct.TYPE_14__* %65, i32 0)
  %67 = load i32, i32* @USBH_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  store i32 131, i32* %71, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %73, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = load i32, i32* @HOST_USER_CLASS_ACTIVE, align 4
  %77 = call i32 %74(%struct.TYPE_14__* %75, i32 %76)
  %78 = load i32, i32* @USBH_OK, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %69, %64
  br label %82

80:                                               ; preds = %1
  br label %81

81:                                               ; preds = %1, %80
  br label %82

82:                                               ; preds = %81, %79, %63, %45, %32
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @USBH_HID_GetHIDDescriptor(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @USBH_HID_ParseHIDDesc(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @USBH_HID_GetHIDReportDescriptor(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @USBH_HID_SetIdle(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @USBH_HID_SetProtocol(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
