; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_ctlreq.c_USBD_SetConfig.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_ctlreq.c_USBD_SetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64 }

@USBD_MAX_NUM_CONFIGURATION = common dso_local global i64 0, align 8
@USBD_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @USBD_SetConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @USBD_SetConfig(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @USBD_MAX_NUM_CONFIGURATION, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = call i32 @USBD_CtlError(%struct.TYPE_11__* %13, %struct.TYPE_10__* %14)
  br label %96

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %91 [
    i32 129, label %20
    i32 128, label %45
  ]

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 128, i32* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @USBD_SetClassConfig(%struct.TYPE_11__* %29, i64 %30)
  %32 = load i32, i32* @USBD_FAIL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = call i32 @USBD_CtlError(%struct.TYPE_11__* %35, %struct.TYPE_10__* %36)
  br label %96

38:                                               ; preds = %23
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = call i32 @USBD_CtlSendStatus(%struct.TYPE_11__* %39)
  br label %44

41:                                               ; preds = %20
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = call i32 @USBD_CtlSendStatus(%struct.TYPE_11__* %42)
  br label %44

44:                                               ; preds = %41, %38
  br label %95

45:                                               ; preds = %16
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32 129, i32* %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @USBD_ClrClassConfig(%struct.TYPE_11__* %54, i64 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = call i32 @USBD_CtlSendStatus(%struct.TYPE_11__* %57)
  br label %90

59:                                               ; preds = %45
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %59
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @USBD_ClrClassConfig(%struct.TYPE_11__* %66, i64 %69)
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @USBD_SetClassConfig(%struct.TYPE_11__* %74, i64 %75)
  %77 = load i32, i32* @USBD_FAIL, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = call i32 @USBD_CtlError(%struct.TYPE_11__* %80, %struct.TYPE_10__* %81)
  br label %96

83:                                               ; preds = %65
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = call i32 @USBD_CtlSendStatus(%struct.TYPE_11__* %84)
  br label %89

86:                                               ; preds = %59
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = call i32 @USBD_CtlSendStatus(%struct.TYPE_11__* %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %48
  br label %95

91:                                               ; preds = %16
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = call i32 @USBD_CtlError(%struct.TYPE_11__* %92, %struct.TYPE_10__* %93)
  br label %95

95:                                               ; preds = %91, %90, %44
  br label %96

96:                                               ; preds = %34, %79, %95, %12
  ret void
}

declare dso_local i32 @USBD_CtlError(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @USBD_SetClassConfig(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @USBD_CtlSendStatus(%struct.TYPE_11__*) #1

declare dso_local i32 @USBD_ClrClassConfig(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
