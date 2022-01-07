; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_vhci_driver.c_usbip_vhci_attach_device2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_vhci_driver.c_usbip_vhci_attach_device2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@__const.usbip_vhci_attach_device2.attr_attach = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"%u %d %u %u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"writing: %s\00", align 1
@vhci_driver = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"attach attribute path: %s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"write_sysfs_attribute failed\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"attached port: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_vhci_attach_device2(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [200 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [7 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = bitcast [7 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.usbip_vhci_attach_device2.attr_attach, i32 0, i32 0), i64 7, i1 false)
  %22 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %22, i32 200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %29 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vhci_driver, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @udev_device_get_syspath(i32 %32)
  store i8* %33, i8** %14, align 8
  %34 = trunc i64 %18 to i32
  %35 = load i8*, i8** %14, align 8
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 0
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %35, i8* %36)
  %38 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  %39 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %40 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %41 = call i32 @strlen(i8* %40)
  %42 = call i32 @write_sysfs_attribute(i8* %20, i8* %39, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %4
  %46 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %50

47:                                               ; preds = %4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
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
