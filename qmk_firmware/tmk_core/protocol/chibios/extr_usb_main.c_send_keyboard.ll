; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/chibios/extr_usb_main.c_send_keyboard.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/chibios/extr_usb_main.c_send_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@USB_DRIVER = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@USB_ACTIVE = common dso_local global i64 0, align 8
@KEYBOARD_IN_EPNUM = common dso_local global i64 0, align 8
@keyboard_protocol = common dso_local global i64 0, align 8
@KEYBOARD_REPORT_SIZE = common dso_local global i32 0, align 4
@keyboard_report_sent = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@SHARED_IN_EPNUM = common dso_local global i64 0, align 8
@keymap_config = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_keyboard(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = call i32 (...) @osalSysLock()
  %6 = call i64 @usbGetDriverStateI(%struct.TYPE_14__* @USB_DRIVER)
  %7 = load i64, i64* @USB_ACTIVE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @osalSysUnlock()
  br label %44

11:                                               ; preds = %1
  %12 = call i32 (...) @osalSysUnlock()
  %13 = call i32 (...) @osalSysLock()
  %14 = load i64, i64* @KEYBOARD_IN_EPNUM, align 8
  %15 = call i64 @usbGetTransmitStatusI(%struct.TYPE_14__* @USB_DRIVER, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.TYPE_12__**, %struct.TYPE_12__*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @USB_DRIVER, i32 0, i32 0), align 8
  %19 = load i64, i64* @KEYBOARD_IN_EPNUM, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %18, i64 %19
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = call i32 @osalThreadSuspendS(i32* %24)
  br label %26

26:                                               ; preds = %17, %11
  %27 = load i64, i64* @keyboard_protocol, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = bitcast %struct.TYPE_13__* %30 to i32*
  store i32* %31, i32** %3, align 8
  %32 = load i32, i32* @KEYBOARD_REPORT_SIZE, align 4
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %26
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32* %35, i32** %3, align 8
  store i32 8, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i64, i64* @KEYBOARD_IN_EPNUM, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @usbStartTransmitI(%struct.TYPE_14__* @USB_DRIVER, i64 %37, i32* %38, i32 %39)
  %41 = call i32 (...) @osalSysUnlock()
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = bitcast %struct.TYPE_13__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_13__* @keyboard_report_sent to i8*), i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %36, %9
  ret void
}

declare dso_local i32 @osalSysLock(...) #1

declare dso_local i64 @usbGetDriverStateI(%struct.TYPE_14__*) #1

declare dso_local i32 @osalSysUnlock(...) #1

declare dso_local i64 @usbGetTransmitStatusI(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @osalThreadSuspendS(i32*) #1

declare dso_local i32 @usbStartTransmitI(%struct.TYPE_14__*, i64, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
