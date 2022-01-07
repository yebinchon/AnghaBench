; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.c_usbip_generic_driver_close.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.c_usbip_generic_driver_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_host_driver = type { i32 }

@udev_context = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbip_generic_driver_close(%struct.usbip_host_driver* %0) #0 {
  %2 = alloca %struct.usbip_host_driver*, align 8
  store %struct.usbip_host_driver* %0, %struct.usbip_host_driver** %2, align 8
  %3 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %2, align 8
  %4 = icmp ne %struct.usbip_host_driver* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %12

6:                                                ; preds = %1
  %7 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %2, align 8
  %8 = getelementptr inbounds %struct.usbip_host_driver, %struct.usbip_host_driver* %7, i32 0, i32 0
  %9 = call i32 @usbip_exported_device_destroy(i32* %8)
  %10 = load i32, i32* @udev_context, align 4
  %11 = call i32 @udev_unref(i32 %10)
  br label %12

12:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @usbip_exported_device_destroy(i32*) #1

declare dso_local i32 @udev_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
