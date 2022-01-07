; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/CDC/Src/extr_usbh_cdc.c_CDC_ProcessReception.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/CDC/Src/extr_usbh_cdc.c_CDC_ProcessReception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }

@USBH_URB_IDLE = common dso_local global i32 0, align 4
@USBH_URB_DONE = common dso_local global i32 0, align 4
@CDC_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @CDC_ProcessReception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CDC_ProcessReception(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %3, align 8
  %11 = load i32, i32* @USBH_URB_IDLE, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %82 [
    i32 129, label %15
    i32 128, label %31
  ]

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @USBH_BulkReceiveData(%struct.TYPE_12__* %16, i64 %19, i64 %23, i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 128, i32* %30, align 8
  br label %83

31:                                               ; preds = %1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @USBH_LL_GetURBState(%struct.TYPE_12__* %32, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @USBH_URB_DONE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %31
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @USBH_LL_GetLastXferSize(%struct.TYPE_12__* %42, i32 %46)
  store i64 %47, i64* %5, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = sub nsw i64 %50, %51
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %41
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %55, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i32 129, i32* %73, align 8
  br label %80

74:                                               ; preds = %54, %41
  %75 = load i32, i32* @CDC_IDLE, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = call i32 @USBH_CDC_ReceiveCallback(%struct.TYPE_12__* %78)
  br label %80

80:                                               ; preds = %74, %61
  br label %81

81:                                               ; preds = %80, %31
  br label %83

82:                                               ; preds = %1
  br label %83

83:                                               ; preds = %82, %81, %15
  ret void
}

declare dso_local i32 @USBH_BulkReceiveData(%struct.TYPE_12__*, i64, i64, i32) #1

declare dso_local i32 @USBH_LL_GetURBState(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @USBH_LL_GetLastXferSize(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @USBH_CDC_ReceiveCallback(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
