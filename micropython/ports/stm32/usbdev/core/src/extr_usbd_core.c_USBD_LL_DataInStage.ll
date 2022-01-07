; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_core.c_USBD_LL_DataInStage.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_core.c_USBD_LL_DataInStage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i32, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i64)*, i32 (%struct.TYPE_11__*)* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@USBD_EP0_DATA_IN = common dso_local global i64 0, align 8
@USBD_STATE_CONFIGURED = common dso_local global i64 0, align 8
@USBD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBD_LL_DataInStage(%struct.TYPE_11__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %109

10:                                               ; preds = %3
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i64 0
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USBD_EP0_DATA_IN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %98

20:                                               ; preds = %10
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @USBD_CtlContinueSendData(%struct.TYPE_11__* %36, i64* %37, i32 %40)
  br label %97

42:                                               ; preds = %20
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %45, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %42
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %51
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = call i32 @USBD_CtlContinueSendData(%struct.TYPE_11__* %68, i64* null, i32 0)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  br label %96

72:                                               ; preds = %59, %51, %42
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %76, align 8
  %78 = icmp ne i32 (%struct.TYPE_11__*)* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @USBD_STATE_CONFIGURED, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = call i32 %90(%struct.TYPE_11__* %91)
  br label %93

93:                                               ; preds = %85, %79, %72
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = call i32 @USBD_CtlReceiveStatus(%struct.TYPE_11__* %94)
  br label %96

96:                                               ; preds = %93, %67
  br label %97

97:                                               ; preds = %96, %28
  br label %98

98:                                               ; preds = %97, %10
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = call i32 @USBD_RunTestMode(%struct.TYPE_11__* %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i32 0, i32* %107, align 8
  br label %108

108:                                              ; preds = %103, %98
  br label %132

109:                                              ; preds = %3
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_11__*, i64)*, i32 (%struct.TYPE_11__*, i64)** %113, align 8
  %115 = icmp ne i32 (%struct.TYPE_11__*, i64)* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @USBD_STATE_CONFIGURED, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32 (%struct.TYPE_11__*, i64)*, i32 (%struct.TYPE_11__*, i64)** %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %129 = load i64, i64* %5, align 8
  %130 = call i32 %127(%struct.TYPE_11__* %128, i64 %129)
  br label %131

131:                                              ; preds = %122, %116, %109
  br label %132

132:                                              ; preds = %131, %108
  %133 = load i32, i32* @USBD_OK, align 4
  ret i32 %133
}

declare dso_local i32 @USBD_CtlContinueSendData(%struct.TYPE_11__*, i64*, i32) #1

declare dso_local i32 @USBD_CtlReceiveStatus(%struct.TYPE_11__*) #1

declare dso_local i32 @USBD_RunTestMode(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
