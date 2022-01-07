; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid_mouse.c_USBH_HID_MouseDecode.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid_mouse.c_USBH_HID_MouseDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8**, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@USBH_FAIL = common dso_local global i32 0, align 4
@mouse_report_data = common dso_local global i32 0, align 4
@prop_x = common dso_local global i32 0, align 4
@mouse_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@prop_y = common dso_local global i32 0, align 4
@prop_b1 = common dso_local global i32 0, align 4
@prop_b2 = common dso_local global i32 0, align 4
@prop_b3 = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @USBH_HID_MouseDecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_HID_MouseDecode(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @USBH_FAIL, align 4
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @fifo_read(i32* %18, i32* @mouse_report_data, i64 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %16
  %28 = call i64 @HID_ReadItem(i32* @prop_x, i32 0)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mouse_info, i32 0, i32 2), align 8
  %30 = call i64 @HID_ReadItem(i32* @prop_y, i32 0)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mouse_info, i32 0, i32 1), align 8
  %32 = call i64 @HID_ReadItem(i32* @prop_b1, i32 0)
  %33 = inttoptr i64 %32 to i8*
  %34 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mouse_info, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  store i8* %33, i8** %35, align 8
  %36 = call i64 @HID_ReadItem(i32* @prop_b2, i32 0)
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mouse_info, i32 0, i32 0), align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* %37, i8** %39, align 8
  %40 = call i64 @HID_ReadItem(i32* @prop_b3, i32 0)
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mouse_info, i32 0, i32 0), align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @USBH_OK, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %16
  %46 = load i32, i32* @USBH_FAIL, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %27, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @fifo_read(i32*, i32*, i64) #1

declare dso_local i64 @HID_ReadItem(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
