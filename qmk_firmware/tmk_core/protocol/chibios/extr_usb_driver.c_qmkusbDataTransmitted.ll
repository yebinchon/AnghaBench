; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/chibios/extr_usb_driver.c_qmkusbDataTransmitted.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/chibios/extr_usb_driver.c_qmkusbDataTransmitted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_10__**, %struct.TYPE_13__** }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }

@CHN_OUTPUT_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qmkusbDataTransmitted(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sub i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %10, i64 %13
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %7, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = icmp eq %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %109

19:                                               ; preds = %2
  %20 = call i32 (...) @osalSysLockFromISR()
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = load i32, i32* @CHN_OUTPUT_EMPTY, align 4
  %23 = call i32 @chnAddFlagsI(%struct.TYPE_13__* %21, i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %26, i64 %28
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ugt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = call i32 @obqReleaseEmptyBufferI(i32* %38)
  br label %40

40:                                               ; preds = %36, %19
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = call i32* @obqGetFullBufferI(i32* %42, i64* %6)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @usbStartTransmitI(%struct.TYPE_12__* %47, i32 %48, i32* %49, i64 %50)
  br label %107

52:                                               ; preds = %40
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %55, i64 %57
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ugt i32 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %52
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %68, i64 %70
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %80, i64 %82
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %86, 1
  %88 = and i64 %77, %87
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %65
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @usbStartTransmitI(%struct.TYPE_12__* %98, i32 %99, i32* %102, i64 0)
  br label %104

104:                                              ; preds = %97, %90
  br label %106

105:                                              ; preds = %65, %52
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106, %46
  %108 = call i32 (...) @osalSysUnlockFromISR()
  br label %109

109:                                              ; preds = %107, %18
  ret void
}

declare dso_local i32 @osalSysLockFromISR(...) #1

declare dso_local i32 @chnAddFlagsI(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @obqReleaseEmptyBufferI(i32*) #1

declare dso_local i32* @obqGetFullBufferI(i32*, i64*) #1

declare dso_local i32 @usbStartTransmitI(%struct.TYPE_12__*, i32, i32*, i64) #1

declare dso_local i32 @osalSysUnlockFromISR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
