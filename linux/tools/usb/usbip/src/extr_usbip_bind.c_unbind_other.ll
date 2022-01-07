; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_bind.c_unbind_other.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_bind.c_unbind_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev = type { i32 }
%struct.udev_device = type { i32 }

@UNBIND_ST_OK = common dso_local global i32 0, align 4
@__const.unbind_other.attr_name = private unnamed_addr constant [7 x i8] c"unbind\00", align 1
@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to find device with bus ID %s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bDeviceClass\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"unable to get bDevClass device attribute\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"09\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"skip unbinding of hub\00", align 1
@USBIP_HOST_DRV_NAME = common dso_local global i8* null, align 8
@UNBIND_ST_USBIP_HOST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"%s/%s/%s/%s/%s/%s\00", align 1
@SYSFS_MNT_PATH = common dso_local global i8* null, align 8
@SYSFS_BUS_NAME = common dso_local global i8* null, align 8
@SYSFS_BUS_TYPE = common dso_local global i8* null, align 8
@SYSFS_DRIVERS_NAME = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"error unbinding device %s from driver\00", align 1
@UNBIND_ST_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @unbind_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unbind_other(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [7 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.udev*, align 8
  %9 = alloca %struct.udev_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @UNBIND_ST_OK, align 4
  store i32 %12, i32* %3, align 4
  %13 = bitcast [7 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.unbind_other.attr_name, i32 0, i32 0), i64 7, i1 false)
  %14 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  store i32 -1, i32* %7, align 4
  %18 = call %struct.udev* (...) @udev_new()
  store %struct.udev* %18, %struct.udev** %8, align 8
  %19 = load %struct.udev*, %struct.udev** %8, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call %struct.udev_device* @udev_device_new_from_subsystem_sysname(%struct.udev* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  store %struct.udev_device* %21, %struct.udev_device** %9, align 8
  %22 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %23 = icmp ne %struct.udev_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %76

27:                                               ; preds = %1
  %28 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %29 = call i8* @udev_device_get_sysattr_value(%struct.udev_device* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %76

34:                                               ; preds = %27
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %76

42:                                               ; preds = %34
  %43 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %44 = call i8* @udev_device_get_driver(%struct.udev_device* %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %78

48:                                               ; preds = %42
  %49 = load i8*, i8** @USBIP_HOST_DRV_NAME, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** @USBIP_HOST_DRV_NAME, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call i32 @strncmp(i8* %49, i8* %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @UNBIND_ST_USBIP_HOST, align 4
  store i32 %56, i32* %3, align 4
  br label %78

57:                                               ; preds = %48
  %58 = trunc i64 %15 to i32
  %59 = load i8*, i8** @SYSFS_MNT_PATH, align 8
  %60 = load i8*, i8** @SYSFS_BUS_NAME, align 8
  %61 = load i8*, i8** @SYSFS_BUS_TYPE, align 8
  %62 = load i8*, i8** @SYSFS_DRIVERS_NAME, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %65 = call i32 @snprintf(i8* %17, i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %59, i8* %60, i8* %61, i8* %62, i8* %63, i8* %64)
  %66 = load i8*, i8** %2, align 8
  %67 = load i8*, i8** %2, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = call i32 @write_sysfs_attribute(i8* %17, i8* %66, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load i8*, i8** %2, align 8
  %74 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %73)
  br label %76

75:                                               ; preds = %57
  br label %78

76:                                               ; preds = %72, %40, %32, %24
  %77 = load i32, i32* @UNBIND_ST_FAILED, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %75, %55, %47
  %79 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %80 = call i32 @udev_device_unref(%struct.udev_device* %79)
  %81 = load %struct.udev*, %struct.udev** %8, align 8
  %82 = call i32 @udev_unref(%struct.udev* %81)
  %83 = load i32, i32* %3, align 4
  %84 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %84)
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.udev* @udev_new(...) #3

declare dso_local %struct.udev_device* @udev_device_new_from_subsystem_sysname(%struct.udev*, i8*, i8*) #3

declare dso_local i32 @dbg(i8*, ...) #3

declare dso_local i8* @udev_device_get_sysattr_value(%struct.udev_device*, i8*) #3

declare dso_local i32 @strncmp(i8*, i8*, i32) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i8* @udev_device_get_driver(%struct.udev_device*) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #3

declare dso_local i32 @write_sysfs_attribute(i8*, i8*, i32) #3

declare dso_local i32 @err(i8*, i8*) #3

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
