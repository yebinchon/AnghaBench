; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid_keybd.c_USBH_HID_KeybdDecode.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid_keybd.c_USBH_HID_KeybdDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@USBH_FAIL = common dso_local global i32 0, align 4
@keybd_report_data = common dso_local global i32 0, align 4
@imp_0_lctrl = common dso_local global i32 0, align 4
@keybd_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@imp_0_lshift = common dso_local global i32 0, align 4
@imp_0_lalt = common dso_local global i32 0, align 4
@imp_0_lgui = common dso_local global i32 0, align 4
@imp_0_rctrl = common dso_local global i32 0, align 4
@imp_0_rshift = common dso_local global i32 0, align 4
@imp_0_ralt = common dso_local global i32 0, align 4
@imp_0_rgui = common dso_local global i32 0, align 4
@imp_0_key_array = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @USBH_HID_KeybdDecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_HID_KeybdDecode(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @USBH_FAIL, align 4
  store i32 %16, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @fifo_read(i32* %19, i32* @keybd_report_data, i64 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %17
  %29 = call i64 @HID_ReadItem(i32* @imp_0_lctrl, i32 0)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keybd_info, i32 0, i32 0), align 8
  %31 = call i64 @HID_ReadItem(i32* @imp_0_lshift, i32 0)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keybd_info, i32 0, i32 1), align 4
  %33 = call i64 @HID_ReadItem(i32* @imp_0_lalt, i32 0)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keybd_info, i32 0, i32 2), align 8
  %35 = call i64 @HID_ReadItem(i32* @imp_0_lgui, i32 0)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keybd_info, i32 0, i32 3), align 4
  %37 = call i64 @HID_ReadItem(i32* @imp_0_rctrl, i32 0)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keybd_info, i32 0, i32 4), align 8
  %39 = call i64 @HID_ReadItem(i32* @imp_0_rshift, i32 0)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keybd_info, i32 0, i32 5), align 4
  %41 = call i64 @HID_ReadItem(i32* @imp_0_ralt, i32 0)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keybd_info, i32 0, i32 6), align 8
  %43 = call i64 @HID_ReadItem(i32* @imp_0_rgui, i32 0)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keybd_info, i32 0, i32 7), align 4
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %57, %28
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %47, 8
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @HID_ReadItem(i32* @imp_0_key_array, i32 %50)
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keybd_info, i32 0, i32 8), align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %45

60:                                               ; preds = %45
  %61 = load i32, i32* @USBH_OK, align 4
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %17
  %63 = load i32, i32* @USBH_FAIL, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %60, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @fifo_read(i32*, i32*, i64) #1

declare dso_local i64 @HID_ReadItem(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
