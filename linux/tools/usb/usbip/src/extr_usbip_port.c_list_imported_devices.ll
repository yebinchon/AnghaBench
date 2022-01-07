; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_port.c_list_imported_devices.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_port.c_list_imported_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.usbip_imported_device* }
%struct.usbip_imported_device = type { i32 }

@USBIDS_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"open vhci_driver\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Imported USB devices\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"====================\0A\00", align 1
@vhci_driver = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @list_imported_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_imported_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbip_imported_device*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @USBIDS_FILE, align 4
  %6 = call i64 @usbip_names_init(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @USBIDS_FILE, align 4
  %10 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = call i32 (...) @usbip_vhci_driver_open()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %47

17:                                               ; preds = %11
  %18 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %38, %17
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vhci_driver, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vhci_driver, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %29, i64 %31
  store %struct.usbip_imported_device* %32, %struct.usbip_imported_device** %3, align 8
  %33 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %3, align 8
  %34 = call i64 @usbip_vhci_imported_device_dump(%struct.usbip_imported_device* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %45

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %20

41:                                               ; preds = %20
  %42 = call i32 (...) @usbip_vhci_driver_close()
  %43 = call i32 (...) @usbip_names_free()
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %1, align 4
  br label %49

45:                                               ; preds = %36
  %46 = call i32 (...) @usbip_vhci_driver_close()
  br label %47

47:                                               ; preds = %45, %15
  %48 = call i32 (...) @usbip_names_free()
  store i32 -1, i32* %1, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i64 @usbip_names_init(i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @usbip_vhci_driver_open(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @usbip_vhci_imported_device_dump(%struct.usbip_imported_device*) #1

declare dso_local i32 @usbip_vhci_driver_close(...) #1

declare dso_local i32 @usbip_names_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
