; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.h_usbip_driver_close.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.h_usbip_driver_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_host_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.usbip_host_driver.0*)* }
%struct.usbip_host_driver.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbip_host_driver*)* @usbip_driver_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbip_driver_close(%struct.usbip_host_driver* %0) #0 {
  %2 = alloca %struct.usbip_host_driver*, align 8
  store %struct.usbip_host_driver* %0, %struct.usbip_host_driver** %2, align 8
  %3 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %2, align 8
  %4 = getelementptr inbounds %struct.usbip_host_driver, %struct.usbip_host_driver* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (%struct.usbip_host_driver.0*)*, i32 (%struct.usbip_host_driver.0*)** %5, align 8
  %7 = icmp ne i32 (%struct.usbip_host_driver.0*)* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %2, align 8
  %11 = getelementptr inbounds %struct.usbip_host_driver, %struct.usbip_host_driver* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.usbip_host_driver.0*)*, i32 (%struct.usbip_host_driver.0*)** %12, align 8
  %14 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %2, align 8
  %15 = bitcast %struct.usbip_host_driver* %14 to %struct.usbip_host_driver.0*
  %16 = call i32 %13(%struct.usbip_host_driver.0* %15)
  br label %17

17:                                               ; preds = %9, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
