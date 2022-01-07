; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.c_usbip_generic_driver_open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.c_usbip_generic_driver_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_host_driver = type { i32 }

@udev_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"udev_new failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_generic_driver_open(%struct.usbip_host_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbip_host_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.usbip_host_driver* %0, %struct.usbip_host_driver** %3, align 8
  %5 = call i32 (...) @udev_new()
  store i32 %5, i32* @udev_context, align 4
  %6 = load i32, i32* @udev_context, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %3, align 8
  %12 = call i32 @refresh_exported_devices(%struct.usbip_host_driver* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %17

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %20

17:                                               ; preds = %15
  %18 = load i32, i32* @udev_context, align 4
  %19 = call i32 @udev_unref(i32 %18)
  store i32 -1, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %16, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @udev_new(...) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @refresh_exported_devices(%struct.usbip_host_driver*) #1

declare dso_local i32 @udev_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
