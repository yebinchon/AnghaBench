; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_attach.c_import_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_attach.c_import_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_usb_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"open vhci_driver\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"no free port\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"got free port %d\00", align 1
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"import device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.usbip_usb_device*)* @import_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @import_device(i32 %0, %struct.usbip_usb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbip_usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.usbip_usb_device* %1, %struct.usbip_usb_device** %5, align 8
  %9 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %10 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i32 (...) @usbip_vhci_driver_open()
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %57

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %49, %17
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @usbip_vhci_get_free_port(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %55

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %31 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %34 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %37 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usbip_vhci_attach_device(i32 %28, i32 %29, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %25
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @EBUSY, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %55

48:                                               ; preds = %42, %25
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %18, label %52

52:                                               ; preds = %49
  %53 = call i32 (...) @usbip_vhci_driver_close()
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %58

55:                                               ; preds = %46, %23
  %56 = call i32 (...) @usbip_vhci_driver_close()
  br label %57

57:                                               ; preds = %55, %15
  store i32 -1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @usbip_vhci_driver_open(...) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usbip_vhci_get_free_port(i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @usbip_vhci_attach_device(i32, i32, i32, i32, i32) #1

declare dso_local i32 @usbip_vhci_driver_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
