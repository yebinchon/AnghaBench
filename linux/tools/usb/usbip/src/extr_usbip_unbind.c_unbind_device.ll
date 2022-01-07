; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_unbind.c_unbind_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_unbind.c_unbind_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev = type { i32 }
%struct.udev_device = type { i32 }

@__const.unbind_device.bus_type = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@__const.unbind_device.unbind_attr_name = private unnamed_addr constant [7 x i8] c"unbind\00", align 1
@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@__const.unbind_device.rebind_attr_name = private unnamed_addr constant [7 x i8] c"rebind\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"device with the specified bus ID does not exist\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"usbip-host\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"device is not bound to usbip-host driver\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s/%s/%s/%s/%s/%s\00", align 1
@SYSFS_MNT_PATH = common dso_local global i8* null, align 8
@SYSFS_BUS_NAME = common dso_local global i8* null, align 8
@SYSFS_DRIVERS_NAME = common dso_local global i8* null, align 8
@USBIP_HOST_DRV_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"error unbinding device %s from driver\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unable to unbind device on %s\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"error rebinding\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"unbind device on busid %s: complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @unbind_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unbind_device(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [7 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [7 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca %struct.udev*, align 8
  %12 = alloca %struct.udev_device*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %14 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.unbind_device.bus_type, i32 0, i32 0), i64 4, i1 false)
  store i32 -1, i32* %5, align 4
  %15 = bitcast [7 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.unbind_device.unbind_attr_name, i32 0, i32 0), i64 7, i1 false)
  %16 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = bitcast [7 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.unbind_device.rebind_attr_name, i32 0, i32 0), i64 7, i1 false)
  %21 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = call %struct.udev* (...) @udev_new()
  store %struct.udev* %24, %struct.udev** %11, align 8
  %25 = load %struct.udev*, %struct.udev** %11, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = call %struct.udev_device* @udev_device_new_from_subsystem_sysname(%struct.udev* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26)
  store %struct.udev_device* %27, %struct.udev_device** %12, align 8
  %28 = load %struct.udev_device*, %struct.udev_device** %12, align 8
  %29 = icmp ne %struct.udev_device* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %89

32:                                               ; preds = %1
  %33 = load %struct.udev_device*, %struct.udev_device** %12, align 8
  %34 = call i8* @udev_device_get_driver(%struct.udev_device* %33)
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i8*, i8** %13, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %32
  %42 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %89

43:                                               ; preds = %37
  %44 = trunc i64 %17 to i32
  %45 = load i8*, i8** @SYSFS_MNT_PATH, align 8
  %46 = load i8*, i8** @SYSFS_BUS_NAME, align 8
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %48 = load i8*, i8** @SYSFS_DRIVERS_NAME, align 8
  %49 = load i8*, i8** @USBIP_HOST_DRV_NAME, align 8
  %50 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %51 = call i32 @snprintf(i8* %19, i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %45, i8* %46, i8* %47, i8* %48, i8* %49, i8* %50)
  %52 = load i8*, i8** %2, align 8
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i32 @write_sysfs_attribute(i8* %19, i8* %52, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  br label %89

61:                                               ; preds = %43
  %62 = load i8*, i8** %2, align 8
  %63 = call i32 @modify_match_busid(i8* %62, i32 0)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %2, align 8
  %68 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %67)
  br label %89

69:                                               ; preds = %61
  %70 = trunc i64 %17 to i32
  %71 = load i8*, i8** @SYSFS_MNT_PATH, align 8
  %72 = load i8*, i8** @SYSFS_BUS_NAME, align 8
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %74 = load i8*, i8** @SYSFS_DRIVERS_NAME, align 8
  %75 = load i8*, i8** @USBIP_HOST_DRV_NAME, align 8
  %76 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %77 = call i32 @snprintf(i8* %23, i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %71, i8* %72, i8* %73, i8* %74, i8* %75, i8* %76)
  %78 = load i8*, i8** %2, align 8
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = call i32 @write_sysfs_attribute(i8* %23, i8* %78, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %69
  %85 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %89

86:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  %87 = load i8*, i8** %2, align 8
  %88 = call i32 @info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86, %84, %66, %58, %41, %30
  %90 = load %struct.udev_device*, %struct.udev_device** %12, align 8
  %91 = call i32 @udev_device_unref(%struct.udev_device* %90)
  %92 = load %struct.udev*, %struct.udev** %11, align 8
  %93 = call i32 @udev_unref(%struct.udev* %92)
  %94 = load i32, i32* %5, align 4
  %95 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %95)
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.udev* @udev_new(...) #3

declare dso_local %struct.udev_device* @udev_device_new_from_subsystem_sysname(%struct.udev*, i8*, i8*) #3

declare dso_local i32 @err(i8*, ...) #3

declare dso_local i8* @udev_device_get_driver(%struct.udev_device*) #3

declare dso_local i64 @strcmp(i8*, i8*) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #3

declare dso_local i32 @write_sysfs_attribute(i8*, i8*, i32) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @modify_match_busid(i8*, i32) #3

declare dso_local i32 @info(i8*, i8*) #3

declare dso_local i32 @udev_device_unref(%struct.udev_device*) #3

declare dso_local i32 @udev_unref(%struct.udev*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
