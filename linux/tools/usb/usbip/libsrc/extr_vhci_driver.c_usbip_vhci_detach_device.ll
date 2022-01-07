; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_vhci_driver.c_usbip_vhci_detach_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_vhci_driver.c_usbip_vhci_detach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@__const.usbip_vhci_detach_device.attr_detach = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"writing: %s\00", align 1
@vhci_driver = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"detach attribute path: %s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"write_sysfs_attribute failed\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"detached port: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_vhci_detach_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca [200 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = bitcast [7 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.usbip_vhci_detach_device.attr_detach, i32 0, i32 0), i64 7, i1 false)
  %16 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %16, i32 200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %20 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vhci_driver, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @udev_device_get_syspath(i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = trunc i64 %12 to i32
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %28 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %14, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %26, i8* %27)
  %29 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  %30 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %31 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @write_sysfs_attribute(i8* %14, i8* %30, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %41

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %36
  %42 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #3

declare dso_local i32 @dbg(i8*, ...) #3

declare dso_local i8* @udev_device_get_syspath(i32) #3

declare dso_local i32 @write_sysfs_attribute(i8*, i8*, i32) #3

declare dso_local i32 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
