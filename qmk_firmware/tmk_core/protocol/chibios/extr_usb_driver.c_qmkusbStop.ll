; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/chibios/extr_usb_driver.c_qmkusbStop.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/chibios/extr_usb_driver.c_qmkusbStop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32**, i32** }

@QMKUSB_STOP = common dso_local global i64 0, align 8
@QMKUSB_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"invalid state\00", align 1
@CHN_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qmkusbStop(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @osalDbgCheck(i32 %11)
  %13 = call i32 (...) @osalSysLock()
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QMKUSB_STOP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QMKUSB_READY, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %19, %1
  %26 = phi i1 [ true, %1 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @osalDbgAssert(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %31, i64 %38
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %42, i64 %49
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ugt i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %25
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sub i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %60, i64 %67
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %57, %25
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %71, align 8
  %72 = load i64, i64* @QMKUSB_STOP, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = load i32, i32* @CHN_DISCONNECTED, align 4
  %77 = call i32 @chnAddFlagsI(%struct.TYPE_8__* %75, i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = call i32 @ibqResetI(i32* %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = call i32 @obqResetI(i32* %82)
  %84 = call i32 (...) @osalOsRescheduleS()
  %85 = call i32 (...) @osalSysUnlock()
  ret void
}

declare dso_local i32 @osalDbgCheck(i32) #1

declare dso_local i32 @osalSysLock(...) #1

declare dso_local i32 @osalDbgAssert(i32, i8*) #1

declare dso_local i32 @chnAddFlagsI(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ibqResetI(i32*) #1

declare dso_local i32 @obqResetI(i32*) #1

declare dso_local i32 @osalOsRescheduleS(...) #1

declare dso_local i32 @osalSysUnlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
