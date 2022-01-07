; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp.c_USBH_MTP_GetPartialObject.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp.c_USBH_MTP_GetPartialObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@USBH_FAIL = common dso_local global i32 0, align 4
@USBH_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_MTP_GetPartialObject(%struct.TYPE_9__* %0, i64 %1, i64 %2, i64 %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load i32, i32* @USBH_FAIL, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %15, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 5000
  store i64 %26, i64* %16, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %56, %31
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i64*, i64** %13, align 8
  %39 = call i32 @USBH_PTP_GetPartialObject(%struct.TYPE_9__* %33, i64 %34, i64 %35, i64 %36, i32* %37, i64* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @USBH_BUSY, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %32
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48, %42
  %55 = load i32, i32* @USBH_FAIL, align 4
  store i32 %55, i32* %7, align 4
  br label %60

56:                                               ; preds = %48
  br label %32

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57, %6
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @USBH_PTP_GetPartialObject(%struct.TYPE_9__*, i64, i64, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
