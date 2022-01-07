; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.h_usbip_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.h_usbip_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_exported_device = type { i32 }
%struct.usbip_host_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usbip_exported_device* (%struct.usbip_host_driver.0*, i32)* }
%struct.usbip_host_driver.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usbip_exported_device* (%struct.usbip_host_driver*, i32)* @usbip_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usbip_exported_device* @usbip_get_device(%struct.usbip_host_driver* %0, i32 %1) #0 {
  %3 = alloca %struct.usbip_exported_device*, align 8
  %4 = alloca %struct.usbip_host_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.usbip_host_driver* %0, %struct.usbip_host_driver** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %4, align 8
  %7 = getelementptr inbounds %struct.usbip_host_driver, %struct.usbip_host_driver* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.usbip_exported_device* (%struct.usbip_host_driver.0*, i32)*, %struct.usbip_exported_device* (%struct.usbip_host_driver.0*, i32)** %8, align 8
  %10 = icmp ne %struct.usbip_exported_device* (%struct.usbip_host_driver.0*, i32)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.usbip_exported_device* null, %struct.usbip_exported_device** %3, align 8
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %4, align 8
  %14 = getelementptr inbounds %struct.usbip_host_driver, %struct.usbip_host_driver* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.usbip_exported_device* (%struct.usbip_host_driver.0*, i32)*, %struct.usbip_exported_device* (%struct.usbip_host_driver.0*, i32)** %15, align 8
  %17 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %4, align 8
  %18 = bitcast %struct.usbip_host_driver* %17 to %struct.usbip_host_driver.0*
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.usbip_exported_device* %16(%struct.usbip_host_driver.0* %18, i32 %19)
  store %struct.usbip_exported_device* %20, %struct.usbip_exported_device** %3, align 8
  br label %21

21:                                               ; preds = %12, %11
  %22 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %3, align 8
  ret %struct.usbip_exported_device* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
