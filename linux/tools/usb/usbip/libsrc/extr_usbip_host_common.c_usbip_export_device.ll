; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.c_usbip_export_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.c_usbip_export_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_exported_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@__const.usbip_export_device.attr_name = private unnamed_addr constant [13 x i8] c"usbip_sockfd\00", align 1
@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@SDEV_ST_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"device not available: %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"status SDEV_ST_ERROR\00", align 1
@ST_DEV_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"status SDEV_ST_USED\00", align 1
@ST_DEV_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"status unknown: 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"exported device path length %i >= %lu or < 0\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"socket length %i >= %lu or < 0\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"write_sysfs_attribute failed: sockfd %s to %s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"connect: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_export_device(%struct.usbip_exported_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbip_exported_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [13 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [30 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usbip_exported_device* %0, %struct.usbip_exported_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = bitcast [13 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.usbip_export_device.attr_name, i32 0, i32 0), i64 13, i1 false)
  %14 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %4, align 8
  %19 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SDEV_ST_AVAILABLE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %2
  %24 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %4, align 8
  %25 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %4, align 8
  %30 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %38 [
    i32 129, label %32
    i32 128, label %35
  ]

32:                                               ; preds = %23
  %33 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ST_DEV_ERR, align 4
  store i32 %34, i32* %11, align 4
  br label %43

35:                                               ; preds = %23
  %36 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ST_DEV_BUSY, align 4
  store i32 %37, i32* %11, align 4
  br label %43

38:                                               ; preds = %23
  %39 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %4, align 8
  %40 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  store i32 -1, i32* %11, align 4
  br label %43

43:                                               ; preds = %38, %35, %32
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

45:                                               ; preds = %2
  %46 = trunc i64 %15 to i32
  %47 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %4, align 8
  %48 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 0
  %52 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %50, i8* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = icmp uge i64 %57, %15
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %45
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %60, i64 %15)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

62:                                               ; preds = %55
  %63 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %63, i32 30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = icmp uge i64 %70, 30
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %62
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %73, i64 30)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

75:                                               ; preds = %68
  %76 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %77 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %78 = call i32 @strlen(i8* %77)
  %79 = call i32 @write_sysfs_attribute(i8* %17, i8* %76, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %84 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i8* %83, i8* %17)
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

86:                                               ; preds = %75
  %87 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %4, align 8
  %88 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

93:                                               ; preds = %86, %82, %72, %59, %43
  %94 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dbg(i8*, ...) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #3

declare dso_local i32 @err(i8*, ...) #3

declare dso_local i32 @write_sysfs_attribute(i8*, i8*, i32) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @info(i8*, i32) #3

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
