; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_bind.c_bind_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_bind.c_bind_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev = type { i32 }
%struct.udev_device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"device with the specified bus ID does not exist\00", align 1
@USBIP_VHCI_DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"bind loop detected: device: %s is attached to %s\0A\00", align 1
@UNBIND_ST_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"could not unbind driver from device on busid %s\00", align 1
@UNBIND_ST_USBIP_HOST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"device on busid %s is already bound to %s\00", align 1
@USBIP_HOST_DRV_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"unable to bind device on %s\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"could not bind device to %s\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"bind device on busid %s: complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bind_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_device(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udev*, align 8
  %6 = alloca %struct.udev_device*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = call %struct.udev* (...) @udev_new()
  store %struct.udev* %8, %struct.udev** %5, align 8
  %9 = load %struct.udev*, %struct.udev** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.udev_device* @udev_device_new_from_subsystem_sysname(%struct.udev* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %10)
  store %struct.udev_device* %11, %struct.udev_device** %6, align 8
  %12 = load %struct.udev_device*, %struct.udev_device** %6, align 8
  %13 = icmp ne %struct.udev_device* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %68

16:                                               ; preds = %1
  %17 = load %struct.udev_device*, %struct.udev_device** %6, align 8
  %18 = call i8* @udev_device_get_devpath(%struct.udev_device* %17)
  store i8* %18, i8** %7, align 8
  %19 = load %struct.udev*, %struct.udev** %5, align 8
  %20 = call i32 @udev_unref(%struct.udev* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @USBIP_VHCI_DRV_NAME, align 4
  %23 = call i64 @strstr(i8* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @USBIP_VHCI_DRV_NAME, align 4
  %28 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %26, i32 %27)
  store i32 -1, i32* %2, align 4
  br label %68

29:                                               ; preds = %16
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @unbind_other(i8* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @UNBIND_ST_FAILED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  store i32 -1, i32* %2, align 4
  br label %68

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @UNBIND_ST_USBIP_HOST, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** %3, align 8
  %44 = load i8*, i8** @USBIP_HOST_DRV_NAME, align 8
  %45 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %43, i8* %44)
  store i32 -1, i32* %2, align 4
  br label %68

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @modify_match_busid(i8* %48, i32 1)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  store i32 -1, i32* %2, align 4
  br label %68

55:                                               ; preds = %47
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @bind_usbip(i8* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** @USBIP_HOST_DRV_NAME, align 8
  %62 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @modify_match_busid(i8* %63, i32 0)
  store i32 -1, i32* %2, align 4
  br label %68

65:                                               ; preds = %55
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %60, %52, %42, %35, %25, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.udev* @udev_new(...) #1

declare dso_local %struct.udev_device* @udev_device_new_from_subsystem_sysname(%struct.udev*, i8*, i8*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i8* @udev_device_get_devpath(%struct.udev_device*) #1

declare dso_local i32 @udev_unref(%struct.udev*) #1

declare dso_local i64 @strstr(i8*, i32) #1

declare dso_local i32 @unbind_other(i8*) #1

declare dso_local i32 @modify_match_busid(i8*, i32) #1

declare dso_local i32 @bind_usbip(i8*) #1

declare dso_local i32 @info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
