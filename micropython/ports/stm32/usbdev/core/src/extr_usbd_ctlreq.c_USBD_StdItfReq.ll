; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_ctlreq.c_USBD_StdItfReq.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_ctlreq.c_USBD_StdItfReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { {}* }
%struct.TYPE_12__ = type { i32, i32 }

@USBD_OK = common dso_local global i32 0, align 4
@USBD_MAX_NUM_INTERFACES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBD_StdItfReq(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %6 = load i32, i32* @USBD_OK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %44 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @LOBYTE(i32 %13)
  %15 = load i32, i32* @USBD_MAX_NUM_INTERFACES, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %10
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)**
  %23 = load i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)** %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = call i32 %23(%struct.TYPE_13__* %24, %struct.TYPE_12__* %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %17
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @USBD_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = call i32 @USBD_CtlSendStatus(%struct.TYPE_13__* %36)
  br label %38

38:                                               ; preds = %35, %31, %17
  br label %43

39:                                               ; preds = %10
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = call i32 @USBD_CtlError(%struct.TYPE_13__* %40, %struct.TYPE_12__* %41)
  br label %43

43:                                               ; preds = %39, %38
  br label %48

44:                                               ; preds = %2
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = call i32 @USBD_CtlError(%struct.TYPE_13__* %45, %struct.TYPE_12__* %46)
  br label %48

48:                                               ; preds = %44, %43
  %49 = load i32, i32* @USBD_OK, align 4
  ret i32 %49
}

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @USBD_CtlSendStatus(%struct.TYPE_13__*) #1

declare dso_local i32 @USBD_CtlError(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
