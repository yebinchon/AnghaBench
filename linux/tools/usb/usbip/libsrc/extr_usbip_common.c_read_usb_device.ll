; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_common.c_read_usb_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_common.c_read_usb_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_device = type { i32 }
%struct.usbip_usb_device = type { i8*, i8*, i32, i32 }

@uint8_t = common dso_local global i32 0, align 4
@bDeviceClass = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@bDeviceSubClass = common dso_local global i32 0, align 4
@bDeviceProtocol = common dso_local global i32 0, align 4
@uint16_t = common dso_local global i32 0, align 4
@idVendor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%04x\0A\00", align 1
@idProduct = common dso_local global i32 0, align 4
@bcdDevice = common dso_local global i32 0, align 4
@bConfigurationValue = common dso_local global i32 0, align 4
@bNumConfigurations = common dso_local global i32 0, align 4
@bNumInterfaces = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@SYSFS_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%u-%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_usb_device(%struct.udev_device* %0, %struct.usbip_usb_device* %1) #0 {
  %3 = alloca %struct.udev_device*, align 8
  %4 = alloca %struct.usbip_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.udev_device* %0, %struct.udev_device** %3, align 8
  store %struct.usbip_usb_device* %1, %struct.usbip_usb_device** %4, align 8
  %9 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %10 = load i32, i32* @uint8_t, align 4
  %11 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %12 = load i32, i32* @bDeviceClass, align 4
  %13 = call i32 @READ_ATTR(%struct.usbip_usb_device* %9, i32 %10, %struct.udev_device* %11, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %15 = load i32, i32* @uint8_t, align 4
  %16 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %17 = load i32, i32* @bDeviceSubClass, align 4
  %18 = call i32 @READ_ATTR(%struct.usbip_usb_device* %14, i32 %15, %struct.udev_device* %16, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %20 = load i32, i32* @uint8_t, align 4
  %21 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %22 = load i32, i32* @bDeviceProtocol, align 4
  %23 = call i32 @READ_ATTR(%struct.usbip_usb_device* %19, i32 %20, %struct.udev_device* %21, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %25 = load i32, i32* @uint16_t, align 4
  %26 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %27 = load i32, i32* @idVendor, align 4
  %28 = call i32 @READ_ATTR(%struct.usbip_usb_device* %24, i32 %25, %struct.udev_device* %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %30 = load i32, i32* @uint16_t, align 4
  %31 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %32 = load i32, i32* @idProduct, align 4
  %33 = call i32 @READ_ATTR(%struct.usbip_usb_device* %29, i32 %30, %struct.udev_device* %31, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %35 = load i32, i32* @uint16_t, align 4
  %36 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %37 = load i32, i32* @bcdDevice, align 4
  %38 = call i32 @READ_ATTR(%struct.usbip_usb_device* %34, i32 %35, %struct.udev_device* %36, i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %40 = load i32, i32* @uint8_t, align 4
  %41 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %42 = load i32, i32* @bConfigurationValue, align 4
  %43 = call i32 @READ_ATTR(%struct.usbip_usb_device* %39, i32 %40, %struct.udev_device* %41, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %45 = load i32, i32* @uint8_t, align 4
  %46 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %47 = load i32, i32* @bNumConfigurations, align 4
  %48 = call i32 @READ_ATTR(%struct.usbip_usb_device* %44, i32 %45, %struct.udev_device* %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %50 = load i32, i32* @uint8_t, align 4
  %51 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %52 = load i32, i32* @bNumInterfaces, align 4
  %53 = call i32 @READ_ATTR(%struct.usbip_usb_device* %49, i32 %50, %struct.udev_device* %51, i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %55 = load i32, i32* @uint8_t, align 4
  %56 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @READ_ATTR(%struct.usbip_usb_device* %54, i32 %55, %struct.udev_device* %56, i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %60 = call i32 @read_attr_speed(%struct.udev_device* %59)
  %61 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %62 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %64 = call i8* @udev_device_get_syspath(%struct.udev_device* %63)
  store i8* %64, i8** %7, align 8
  %65 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %66 = call i8* @udev_device_get_sysname(%struct.udev_device* %65)
  store i8* %66, i8** %8, align 8
  %67 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %68 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @strncpy(i8* %69, i8* %70, i32 %72)
  %74 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %75 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %82 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* @SYSFS_BUS_ID_SIZE, align 4
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @strncpy(i8* %83, i8* %84, i32 %86)
  %88 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %89 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* @SYSFS_BUS_ID_SIZE, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @sscanf(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %5, i32* %6)
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %4, align 8
  %99 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  ret i32 0
}

declare dso_local i32 @READ_ATTR(%struct.usbip_usb_device*, i32, %struct.udev_device*, i32, i8*) #1

declare dso_local i32 @read_attr_speed(%struct.udev_device*) #1

declare dso_local i8* @udev_device_get_syspath(%struct.udev_device*) #1

declare dso_local i8* @udev_device_get_sysname(%struct.udev_device*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
