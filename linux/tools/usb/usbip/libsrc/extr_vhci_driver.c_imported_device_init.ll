; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_vhci_driver.c_imported_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_vhci_driver.c_imported_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_imported_device = type { i32 }
%struct.udev_device = type { i32 }

@udev_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"udev_device_new_from_subsystem_sysname failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usbip_imported_device* (%struct.usbip_imported_device*, i8*)* @imported_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usbip_imported_device* @imported_device_init(%struct.usbip_imported_device* %0, i8* %1) #0 {
  %3 = alloca %struct.usbip_imported_device*, align 8
  %4 = alloca %struct.usbip_imported_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.udev_device*, align 8
  store %struct.usbip_imported_device* %0, %struct.usbip_imported_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @udev_context, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.udev_device* @udev_device_new_from_subsystem_sysname(i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %8)
  store %struct.udev_device* %9, %struct.udev_device** %6, align 8
  %10 = load %struct.udev_device*, %struct.udev_device** %6, align 8
  %11 = icmp ne %struct.udev_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.udev_device*, %struct.udev_device** %6, align 8
  %17 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %4, align 8
  %18 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %17, i32 0, i32 0
  %19 = call i32 @read_usb_device(%struct.udev_device* %16, i32* %18)
  %20 = load %struct.udev_device*, %struct.udev_device** %6, align 8
  %21 = call i32 @udev_device_unref(%struct.udev_device* %20)
  %22 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %4, align 8
  store %struct.usbip_imported_device* %22, %struct.usbip_imported_device** %3, align 8
  br label %24

23:                                               ; preds = %12
  store %struct.usbip_imported_device* null, %struct.usbip_imported_device** %3, align 8
  br label %24

24:                                               ; preds = %23, %15
  %25 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %3, align 8
  ret %struct.usbip_imported_device* %25
}

declare dso_local %struct.udev_device* @udev_device_new_from_subsystem_sysname(i32, i8*, i8*) #1

declare dso_local i32 @dbg(i8*, i8*) #1

declare dso_local i32 @read_usb_device(%struct.udev_device*, i32*) #1

declare dso_local i32 @udev_device_unref(%struct.udev_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
