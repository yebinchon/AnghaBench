; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_common.c_dump_usb_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_common.c_dump_usb_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_usb_device = type { i8*, i8*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%-20s = %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"busid\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Device(C/SC/P)\00", align 1
@bcdDevice = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Vendor/Product\00", align 1
@bNumConfigurations = common dso_local global i32 0, align 4
@bNumInterfaces = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@busnum = common dso_local global i32 0, align 4
@devnum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_usb_device(%struct.usbip_usb_device* %0) #0 {
  %2 = alloca %struct.usbip_usb_device*, align 8
  %3 = alloca [100 x i8], align 16
  store %struct.usbip_usb_device* %0, %struct.usbip_usb_device** %2, align 8
  %4 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %2, align 8
  %5 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %6)
  %8 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %2, align 8
  %9 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %13 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %2, align 8
  %14 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %2, align 8
  %17 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %2, align 8
  %20 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usbip_names_get_class(i8* %12, i32 100, i32 %15, i32 %18, i32 %21)
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %24 = call i32 @dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @bcdDevice, align 4
  %26 = call i32 @DBG_UDEV_INTEGER(i32 %25)
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %28 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %2, align 8
  %29 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %2, align 8
  %32 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usbip_names_get_product(i8* %27, i32 100, i32 %30, i32 %33)
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %36 = call i32 @dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @bNumConfigurations, align 4
  %38 = call i32 @DBG_UDEV_INTEGER(i32 %37)
  %39 = load i32, i32* @bNumInterfaces, align 4
  %40 = call i32 @DBG_UDEV_INTEGER(i32 %39)
  %41 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %2, align 8
  %42 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @usbip_speed_string(i32 %43)
  %45 = call i32 @dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @busnum, align 4
  %47 = call i32 @DBG_UDEV_INTEGER(i32 %46)
  %48 = load i32, i32* @devnum, align 4
  %49 = call i32 @DBG_UDEV_INTEGER(i32 %48)
  ret void
}

declare dso_local i32 @dbg(i8*, i8*, i8*) #1

declare dso_local i32 @usbip_names_get_class(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @DBG_UDEV_INTEGER(i32) #1

declare dso_local i32 @usbip_names_get_product(i8*, i32, i32, i32) #1

declare dso_local i8* @usbip_speed_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
