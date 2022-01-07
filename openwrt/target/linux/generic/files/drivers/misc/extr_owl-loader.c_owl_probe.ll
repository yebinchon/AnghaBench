; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/misc/extr_owl-loader.c_owl_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/misc/extr_owl-loader.c_owl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.owl_ctx = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no eeprom filename found.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to alloc device context.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@owl_fw_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to request caldata (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @owl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.owl_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i64 @pcim_enable_device(%struct.pci_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pcim_pin_device(%struct.pci_dev* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i8* @owl_get_eeprom_name(%struct.pci_dev* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %15
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.owl_ctx* @kzalloc(i32 4, i32 %29)
  store %struct.owl_ctx* %30, %struct.owl_ctx** %6, align 8
  %31 = load %struct.owl_ctx*, %struct.owl_ctx** %6, align 8
  %32 = icmp ne %struct.owl_ctx* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %28
  %40 = load %struct.owl_ctx*, %struct.owl_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.owl_ctx, %struct.owl_ctx* %40, i32 0, i32 0
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = load %struct.owl_ctx*, %struct.owl_ctx** %6, align 8
  %45 = call i32 @pci_set_drvdata(%struct.pci_dev* %43, %struct.owl_ctx* %44)
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = load i32, i32* @owl_fw_cb, align 4
  %53 = call i32 @request_firmware_nowait(i32 %46, i32 1, i8* %47, i32* %49, i32 %50, %struct.pci_dev* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %39
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.owl_ctx*, %struct.owl_ctx** %6, align 8
  %62 = call i32 @kfree(%struct.owl_ctx* %61)
  br label %63

63:                                               ; preds = %56, %39
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %33, %22, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pcim_pin_device(%struct.pci_dev*) #1

declare dso_local i8* @owl_get_eeprom_name(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.owl_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.owl_ctx*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32*, i32, %struct.pci_dev*, i32) #1

declare dso_local i32 @kfree(%struct.owl_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
