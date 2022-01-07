; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/chibios/extr_usb_main.c_usb_event_cb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/chibios/extr_usb_main.c_usb_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@KEYBOARD_IN_EPNUM = common dso_local global i32 0, align 4
@kbd_ep_config = common dso_local global i32 0, align 4
@NUM_USB_DRIVERS = common dso_local global i32 0, align 4
@drivers = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MOUSE_IN_EPNUM = common dso_local global i32 0, align 4
@SHARED_IN_EPNUM = common dso_local global i32 0, align 4
@mouse_ep_config = common dso_local global i32 0, align 4
@shared_ep_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @usb_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_event_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %121 [
    i32 134, label %9
    i32 133, label %10
    i32 130, label %83
    i32 129, label %83
    i32 132, label %83
    i32 128, label %101
    i32 131, label %120
  ]

9:                                                ; preds = %2
  br label %121

10:                                               ; preds = %2
  %11 = call i32 (...) @osalSysLockFromISR()
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @KEYBOARD_IN_EPNUM, align 4
  %14 = call i32 @usbInitEndpointI(i32* %12, i32 %13, i32* @kbd_ep_config)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %78, %10
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NUM_USB_DRIVERS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drivers, i32 0, i32 0), align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drivers, i32 0, i32 0), align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = call i32 @usbInitEndpointI(i32* %20, i32 %27, i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drivers, i32 0, i32 0), align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drivers, i32 0, i32 0), align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = call i32 @usbInitEndpointI(i32* %34, i32 %41, i32* %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drivers, i32 0, i32 0), align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %19
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drivers, i32 0, i32 0), align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drivers, i32 0, i32 0), align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = call i32 @usbInitEndpointI(i32* %57, i32 %64, i32* %69)
  br label %71

71:                                               ; preds = %56, %19
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drivers, i32 0, i32 0), align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = call i32 @qmkusbConfigureHookI(i32* %76)
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %15

81:                                               ; preds = %15
  %82 = call i32 (...) @osalSysUnlockFromISR()
  br label %121

83:                                               ; preds = %2, %2, %2
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %97, %83
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @NUM_USB_DRIVERS, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = call i32 (...) @chSysLockFromISR()
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drivers, i32 0, i32 0), align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = call i32 @qmkusbSuspendHookI(i32* %94)
  %96 = call i32 (...) @chSysUnlockFromISR()
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %84

100:                                              ; preds = %84
  br label %121

101:                                              ; preds = %2
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %115, %101
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @NUM_USB_DRIVERS, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = call i32 (...) @chSysLockFromISR()
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @drivers, i32 0, i32 0), align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = call i32 @qmkusbWakeupHookI(i32* %112)
  %114 = call i32 (...) @chSysUnlockFromISR()
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %102

118:                                              ; preds = %102
  %119 = call i32 (...) @suspend_wakeup_init()
  br label %121

120:                                              ; preds = %2
  br label %121

121:                                              ; preds = %9, %81, %100, %118, %120, %2
  ret void
}

declare dso_local i32 @osalSysLockFromISR(...) #1

declare dso_local i32 @usbInitEndpointI(i32*, i32, i32*) #1

declare dso_local i32 @qmkusbConfigureHookI(i32*) #1

declare dso_local i32 @osalSysUnlockFromISR(...) #1

declare dso_local i32 @chSysLockFromISR(...) #1

declare dso_local i32 @qmkusbSuspendHookI(i32*) #1

declare dso_local i32 @chSysUnlockFromISR(...) #1

declare dso_local i32 @qmkusbWakeupHookI(i32*) #1

declare dso_local i32 @suspend_wakeup_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
