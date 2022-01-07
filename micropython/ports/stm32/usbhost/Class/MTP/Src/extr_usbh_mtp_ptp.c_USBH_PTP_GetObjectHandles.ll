; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_USBH_PTP_GetObjectHandles.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_USBH_PTP_GetObjectHandles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i8*, i8*, i8*, i32, i32, i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@PTP_DP_GETDATA = common dso_local global i32 0, align 4
@PTP_OC_GetObjectHandles = common dso_local global i32 0, align 4
@PTP_OP_REQUEST_STATE = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_PTP_GetObjectHandles(%struct.TYPE_18__* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_19__* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %10, align 8
  %14 = load i32, i32* @USBH_BUSY, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %12, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %95 [
    i32 129, label %24
    i32 128, label %75
  ]

24:                                               ; preds = %5
  %25 = load i32, i32* @PTP_DP_GETDATA, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 9
  store i32 %25, i32* %28, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = bitcast %struct.TYPE_16__* %31 to i32*
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 8
  store i32* %32, i32** %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 7
  store i32 0, i32* %38, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 6
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 5
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @PTP_OC_GetObjectHandles, align 4
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 6
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  store i8* %60, i8** %61, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i32 3, i32* %64, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = call i32 @USBH_PTP_SendRequest(%struct.TYPE_18__* %65, %struct.TYPE_20__* %13)
  %67 = load i32, i32* @PTP_OP_REQUEST_STATE, align 4
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  store i32 128, i32* %73, align 8
  %74 = load i32, i32* @USBH_BUSY, align 4
  store i32 %74, i32* %11, align 4
  br label %96

75:                                               ; preds = %5
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = call i32 @USBH_PTP_Process(%struct.TYPE_18__* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @USBH_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTP_GetArray32(i32 %84, i32 %90, i32 0)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %81, %75
  br label %96

95:                                               ; preds = %5
  br label %96

96:                                               ; preds = %95, %94, %24
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @USBH_PTP_SendRequest(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @USBH_PTP_Process(%struct.TYPE_18__*) #1

declare dso_local i32 @PTP_GetArray32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
