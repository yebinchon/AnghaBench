; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp.c_USBH_MTP_SendObject.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp.c_USBH_MTP_SendObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@USBH_FAIL = common dso_local global i32 0, align 4
@USBH_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_MTP_SendObject(%struct.TYPE_9__* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @USBH_FAIL, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %11, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 5000
  store i64 %22, i64* %12, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %50, %27
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @USBH_PTP_SendObject(%struct.TYPE_9__* %29, i64 %30, i32* %31, i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @USBH_BUSY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42, %36
  %49 = load i32, i32* @USBH_FAIL, align 4
  store i32 %49, i32* %5, align 4
  br label %54

50:                                               ; preds = %42
  br label %28

51:                                               ; preds = %28
  br label %52

52:                                               ; preds = %51, %4
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @USBH_PTP_SendObject(%struct.TYPE_9__*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
