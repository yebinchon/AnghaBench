; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_ctlreq.c_USBD_StdDevReq.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_ctlreq.c_USBD_StdDevReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@USBD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBD_StdDevReq(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %6 = load i32, i32* @USBD_OK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %38 [
    i32 132, label %10
    i32 130, label %14
    i32 129, label %18
    i32 133, label %22
    i32 131, label %26
    i32 128, label %30
    i32 134, label %34
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = call i32 @USBD_GetDescriptor(i32* %11, %struct.TYPE_11__* %12)
  br label %42

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = call i32 @USBD_SetAddress(i32* %15, %struct.TYPE_11__* %16)
  br label %42

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = call i32 @USBD_SetConfig(i32* %19, %struct.TYPE_11__* %20)
  br label %42

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = call i32 @USBD_GetConfig(i32* %23, %struct.TYPE_11__* %24)
  br label %42

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = call i32 @USBD_GetStatus(i32* %27, %struct.TYPE_11__* %28)
  br label %42

30:                                               ; preds = %2
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = call i32 @USBD_SetFeature(i32* %31, %struct.TYPE_11__* %32)
  br label %42

34:                                               ; preds = %2
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = call i32 @USBD_ClrFeature(i32* %35, %struct.TYPE_11__* %36)
  br label %42

38:                                               ; preds = %2
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = call i32 @USBD_CtlError(i32* %39, %struct.TYPE_11__* %40)
  br label %42

42:                                               ; preds = %38, %34, %30, %26, %22, %18, %14, %10
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @USBD_GetDescriptor(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @USBD_SetAddress(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @USBD_SetConfig(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @USBD_GetConfig(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @USBD_GetStatus(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @USBD_SetFeature(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @USBD_ClrFeature(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @USBD_CtlError(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
