; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_USBH_PTP_GetObjectPropList.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_USBH_PTP_GetObjectPropList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, i32, i32, i32*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@PTP_DP_GETDATA = common dso_local global i32 0, align 4
@PTP_USB_BULK_PAYLOAD_LEN_READ = common dso_local global i32 0, align 4
@PTP_OC_GetObjPropList = common dso_local global i32 0, align 4
@PTP_OP_REQUEST_STATE = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_PTP_GetObjectPropList(%struct.TYPE_17__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @USBH_BUSY, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %10, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %100 [
    i32 129, label %22
    i32 128, label %85
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* @PTP_DP_GETDATA, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 10
  store i32 %23, i32* %26, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 6
  %30 = bitcast %struct.TYPE_15__* %29 to i32*
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 9
  store i32* %30, i32** %33, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 8
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 7
  store i32 0, i32* %42, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PTP_USB_BULK_PAYLOAD_LEN_READ, align 4
  %54 = call i32 @USBH_memcpy(i32 %48, i32 %52, i32 %53)
  %55 = load i32, i32* @PTP_OC_GetObjPropList, align 4
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 7
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 5
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store i32 -1, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  store i32 -1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 4
  store i32 5, i32* %74, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = call i32 @USBH_PTP_SendRequest(%struct.TYPE_17__* %75, %struct.TYPE_18__* %11)
  %77 = load i32, i32* @PTP_OP_REQUEST_STATE, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  store i32 128, i32* %83, align 8
  %84 = load i32, i32* @USBH_BUSY, align 4
  store i32 %84, i32* %9, align 4
  br label %101

85:                                               ; preds = %4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = call i32 @USBH_PTP_Process(%struct.TYPE_17__* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @USBH_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PTP_GetObjectPropList(%struct.TYPE_17__* %92, i32* %93, i32 %97)
  br label %99

99:                                               ; preds = %91, %85
  br label %101

100:                                              ; preds = %4
  br label %101

101:                                              ; preds = %100, %99, %22
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i32 @USBH_memcpy(i32, i32, i32) #1

declare dso_local i32 @USBH_PTP_SendRequest(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @USBH_PTP_Process(%struct.TYPE_17__*) #1

declare dso_local i32 @PTP_GetObjectPropList(%struct.TYPE_17__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
