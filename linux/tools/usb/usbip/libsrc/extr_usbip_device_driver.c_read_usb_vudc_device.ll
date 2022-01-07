; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_device_driver.c_read_usb_vudc_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_device_driver.c_read_usb_vudc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.udev_device = type { i32 }
%struct.usbip_usb_device = type { i8*, i8*, i64, i64, i64, i32 }
%struct.usb_device_descriptor = type { i32 }

@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@VUDC_DEVICE_DESCR_FILE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot read vudc device descr file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@bDeviceClass = common dso_local global i32 0, align 4
@bDeviceSubClass = common dso_local global i32 0, align 4
@bDeviceProtocol = common dso_local global i32 0, align 4
@bNumConfigurations = common dso_local global i32 0, align 4
@idVendor = common dso_local global i32 0, align 4
@idProduct = common dso_local global i32 0, align 4
@bcdDevice = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"current_speed\00", align 1
@speed_names = common dso_local global %struct.TYPE_3__* null, align 8
@SYSFS_BUS_ID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udev_device*, %struct.usbip_usb_device*)* @read_usb_vudc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_usb_vudc_device(%struct.udev_device* %0, %struct.usbip_usb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.udev_device*, align 8
  %5 = alloca %struct.usbip_usb_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_device_descriptor, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.udev_device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.udev_device* %0, %struct.udev_device** %4, align 8
  store %struct.usbip_usb_device* %1, %struct.usbip_usb_device** %5, align 8
  %17 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32* null, i32** %12, align 8
  %21 = load %struct.udev_device*, %struct.udev_device** %4, align 8
  %22 = call %struct.udev_device* @udev_device_get_parent(%struct.udev_device* %21)
  store %struct.udev_device* %22, %struct.udev_device** %13, align 8
  %23 = load %struct.udev_device*, %struct.udev_device** %13, align 8
  %24 = call i8* @udev_device_get_syspath(%struct.udev_device* %23)
  store i8* %24, i8** %6, align 8
  %25 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** @VUDC_DEVICE_DESCR_FILE, align 8
  %28 = call i32 @snprintf(i8* %20, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  %29 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %144

33:                                               ; preds = %2
  %34 = bitcast %struct.usb_device_descriptor* %10 to i8*
  %35 = load i32*, i32** %12, align 8
  %36 = call i64 @fread(i8* %34, i32 4, i32 1, i32* %35)
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %141

43:                                               ; preds = %33
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %47 = load i32, i32* @bDeviceClass, align 4
  %48 = call i32 @copy_descr_attr(%struct.usbip_usb_device* %46, %struct.usb_device_descriptor* %10, i32 %47)
  %49 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %50 = load i32, i32* @bDeviceSubClass, align 4
  %51 = call i32 @copy_descr_attr(%struct.usbip_usb_device* %49, %struct.usb_device_descriptor* %10, i32 %50)
  %52 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %53 = load i32, i32* @bDeviceProtocol, align 4
  %54 = call i32 @copy_descr_attr(%struct.usbip_usb_device* %52, %struct.usb_device_descriptor* %10, i32 %53)
  %55 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %56 = load i32, i32* @bNumConfigurations, align 4
  %57 = call i32 @copy_descr_attr(%struct.usbip_usb_device* %55, %struct.usb_device_descriptor* %10, i32 %56)
  %58 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %59 = load i32, i32* @idVendor, align 4
  %60 = call i32 @copy_descr_attr16(%struct.usbip_usb_device* %58, %struct.usb_device_descriptor* %10, i32 %59)
  %61 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %62 = load i32, i32* @idProduct, align 4
  %63 = call i32 @copy_descr_attr16(%struct.usbip_usb_device* %61, %struct.usb_device_descriptor* %10, i32 %62)
  %64 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %65 = load i32, i32* @bcdDevice, align 4
  %66 = call i32 @copy_descr_attr16(%struct.usbip_usb_device* %64, %struct.usb_device_descriptor* %10, i32 %65)
  %67 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %68 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @strncpy(i8* %69, i8* %70, i32 %72)
  %74 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %75 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %82 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %83 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.udev_device*, %struct.udev_device** %4, align 8
  %85 = call i8* @udev_device_get_sysattr_value(%struct.udev_device* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i8* %85, i8** %14, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %118

88:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %114, %88
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @speed_names, align 8
  %92 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %91)
  %93 = icmp ult i32 %90, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %89
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @speed_names, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 @strcmp(i32 %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %94
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @speed_names, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %112 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  br label %117

113:                                              ; preds = %94
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %11, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %89

117:                                              ; preds = %104, %89
  br label %118

118:                                              ; preds = %117, %43
  %119 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %120 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %119, i32 0, i32 4
  store i64 0, i64* %120, align 8
  %121 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %122 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %124 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  %125 = load %struct.udev_device*, %struct.udev_device** %13, align 8
  %126 = call i8* @udev_device_get_sysname(%struct.udev_device* %125)
  store i8* %126, i8** %7, align 8
  %127 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %128 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* @SYSFS_BUS_ID_SIZE, align 4
  %132 = sub nsw i32 %131, 1
  %133 = call i32 @strncpy(i8* %129, i8* %130, i32 %132)
  %134 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %5, align 8
  %135 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @SYSFS_BUS_ID_SIZE, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8 0, i8* %140, align 1
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %144

141:                                              ; preds = %39
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @fclose(i32* %142)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %144

144:                                              ; preds = %141, %118, %32
  %145 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.udev_device* @udev_device_get_parent(%struct.udev_device*) #2

declare dso_local i8* @udev_device_get_syspath(%struct.udev_device*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @err(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @copy_descr_attr(%struct.usbip_usb_device*, %struct.usb_device_descriptor*, i32) #2

declare dso_local i32 @copy_descr_attr16(%struct.usbip_usb_device*, %struct.usb_device_descriptor*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i8* @udev_device_get_sysattr_value(%struct.udev_device*, i8*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i8* @udev_device_get_sysname(%struct.udev_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
