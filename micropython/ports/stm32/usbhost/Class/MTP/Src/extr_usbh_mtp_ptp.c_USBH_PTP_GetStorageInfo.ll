; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_USBH_PTP_GetStorageInfo.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_USBH_PTP_GetStorageInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@PTP_DP_GETDATA = common dso_local global i32 0, align 4
@PTP_OC_GetStorageInfo = common dso_local global i32 0, align 4
@PTP_OP_REQUEST_STATE = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_PTP_GetStorageInfo(%struct.TYPE_13__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @USBH_BUSY, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %78 [
    i32 129, label %20
    i32 128, label %66
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @PTP_DP_GETDATA, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 9
  store i32 %21, i32* %24, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 8
  store i32* %27, i32** %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 6
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 5
  store i32 0, i32* %36, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* @PTP_OC_GetStorageInfo, align 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @USBH_PTP_SendRequest(%struct.TYPE_13__* %56, %struct.TYPE_14__* %9)
  %58 = load i32, i32* @PTP_OP_REQUEST_STATE, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32 128, i32* %64, align 8
  %65 = load i32, i32* @USBH_BUSY, align 4
  store i32 %65, i32* %7, align 4
  br label %79

66:                                               ; preds = %3
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = call i32 @USBH_PTP_Process(%struct.TYPE_13__* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @USBH_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @PTP_GetStorageInfo(%struct.TYPE_13__* %73, i32 %74, i32* %75)
  br label %77

77:                                               ; preds = %72, %66
  br label %79

78:                                               ; preds = %3
  br label %79

79:                                               ; preds = %78, %77, %20
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @USBH_PTP_SendRequest(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @USBH_PTP_Process(%struct.TYPE_13__*) #1

declare dso_local i32 @PTP_GetStorageInfo(%struct.TYPE_13__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
