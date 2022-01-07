; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.c_read_attr_usbip_status.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.c_read_attr_usbip_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_usb_device = type { i8* }

@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s/usbip_status\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"usbip_status path length %i >= %lu or < 0\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"error opening attribute %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"error reading attribute %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbip_usb_device*)* @read_attr_usbip_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_attr_usbip_status(%struct.usbip_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbip_usb_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usbip_usb_device* %0, %struct.usbip_usb_device** %3, align 8
  %12 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = bitcast [2 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %16, i8 0, i64 2, i1 false)
  store i32 0, i32* %10, align 4
  %17 = trunc i64 %13 to i32
  %18 = load %struct.usbip_usb_device*, %struct.usbip_usb_device** %3, align 8
  %19 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @snprintf(i8* %15, i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp uge i64 %26, %13
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %1
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %13)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %52

31:                                               ; preds = %24
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = call i32 @open(i8* %15, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %52

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %41 = call i32 @read(i32 %39, i8* %40, i32 1)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @close(i32 %46)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %52

48:                                               ; preds = %38
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %50 = call i32 @atoi(i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %44, %36, %28
  %53 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #3

declare dso_local i32 @err(i8*, ...) #3

declare dso_local i32 @open(i8*, i32) #3

declare dso_local i32 @read(i32, i8*, i32) #3

declare dso_local i32 @close(i32) #3

declare dso_local i32 @atoi(i8*) #3

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
