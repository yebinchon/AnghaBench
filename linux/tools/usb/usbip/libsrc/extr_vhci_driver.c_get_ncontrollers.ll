; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_vhci_driver.c_get_ncontrollers.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_vhci_driver.c_get_ncontrollers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dirent = type opaque
%struct.udev_device = type { i32 }

@vhci_driver = common dso_local global %struct.TYPE_2__* null, align 8
@vhci_hcd_filter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"scandir failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_ncontrollers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ncontrollers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dirent**, align 8
  %3 = alloca %struct.udev_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vhci_driver, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.udev_device* @udev_device_get_parent(i32 %8)
  store %struct.udev_device* %9, %struct.udev_device** %3, align 8
  %10 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %11 = icmp eq %struct.udev_device* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %45

13:                                               ; preds = %0
  %14 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %15 = call i32 @udev_device_get_syspath(%struct.udev_device* %14)
  %16 = bitcast %struct.dirent*** %2 to i32*******
  %17 = load i32, i32* @vhci_hcd_filter, align 4
  %18 = call i32 @scandir(i32 %15, i32******* %16, i32 %17, i32* null)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %43

23:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.dirent**, %struct.dirent*** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dirent*, %struct.dirent** %29, i64 %31
  %33 = load %struct.dirent*, %struct.dirent** %32, align 8
  %34 = bitcast %struct.dirent* %33 to i32******
  %35 = call i32 @free(i32****** %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %24

39:                                               ; preds = %24
  %40 = load %struct.dirent**, %struct.dirent*** %2, align 8
  %41 = bitcast %struct.dirent** %40 to i32******
  %42 = call i32 @free(i32****** %41)
  br label %43

43:                                               ; preds = %39, %21
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %43, %12
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local %struct.udev_device* @udev_device_get_parent(i32) #1

declare dso_local i32 @scandir(i32, i32*******, i32, i32*) #1

declare dso_local i32 @udev_device_get_syspath(%struct.udev_device*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @free(i32******) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
