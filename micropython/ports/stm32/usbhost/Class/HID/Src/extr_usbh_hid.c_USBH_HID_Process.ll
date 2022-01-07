; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid.c_USBH_HID_Process.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid.c_USBH_HID_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, {}* }

@USBH_OK = common dso_local global i32 0, align 4
@USBH_URB_DONE = common dso_local global i32 0, align 4
@USBH_URB_STALL = common dso_local global i32 0, align 4
@USBH_URB_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @USBH_HID_Process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_HID_Process(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load i32, i32* @USBH_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %126 [
    i32 130, label %14
    i32 131, label %21
    i32 128, label %45
    i32 132, label %55
    i32 129, label %76
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 8
  %17 = bitcast {}** %16 to i32 (%struct.TYPE_12__*)**
  %18 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %17, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = call i32 %18(%struct.TYPE_12__* %19)
  br label %21

21:                                               ; preds = %1, %14
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @USBH_HID_GetReport(%struct.TYPE_12__* %22, i32 1, i32 0, i32 %25, i32 %28)
  %30 = load i32, i32* @USBH_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fifo_write(i32* %34, i32 %37, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  store i32 128, i32* %43, align 8
  br label %44

44:                                               ; preds = %32, %21
  br label %127

45:                                               ; preds = %1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i32 132, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %45
  br label %127

55:                                               ; preds = %1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @USBH_InterruptReceiveData(%struct.TYPE_12__* %56, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i32 129, i32* %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  br label %127

76:                                               ; preds = %1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @USBH_LL_GetURBState(%struct.TYPE_12__* %77, i32 %80)
  %82 = load i32, i32* @USBH_URB_DONE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %76
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 7
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @fifo_write(i32* %91, i32 %94, i32 %97)
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  store i32 1, i32* %100, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %102 = call i32 @USBH_HID_EventCallback(%struct.TYPE_12__* %101)
  br label %103

103:                                              ; preds = %89, %84
  br label %125

104:                                              ; preds = %76
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @USBH_LL_GetURBState(%struct.TYPE_12__* %105, i32 %108)
  %110 = load i32, i32* @USBH_URB_STALL, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %104
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @USBH_ClrFeature(%struct.TYPE_12__* %113, i32 %116)
  %118 = load i32, i32* @USBH_OK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i32 132, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %112
  br label %124

124:                                              ; preds = %123, %104
  br label %125

125:                                              ; preds = %124, %103
  br label %127

126:                                              ; preds = %1
  br label %127

127:                                              ; preds = %126, %125, %55, %54, %44
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @USBH_HID_GetReport(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @fifo_write(i32*, i32, i32) #1

declare dso_local i32 @USBH_InterruptReceiveData(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @USBH_LL_GetURBState(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @USBH_HID_EventCallback(%struct.TYPE_12__*) #1

declare dso_local i32 @USBH_ClrFeature(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
