; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/misc/extr_owl-loader.c_owl_get_eeprom_name.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/misc/extr_owl-loader.c_owl_get_eeprom_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.ath9k_platform_data = type { i8* }

@.str = private unnamed_addr constant [38 x i8] c"using auto-generated eeprom filename\0A\00", align 1
@EEPROM_FILENAME_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ath9k-eeprom-pci-%s.bin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pci_dev*)* @owl_get_eeprom_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @owl_get_eeprom_name(%struct.pci_dev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ath9k_platform_data*, align 8
  %6 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.ath9k_platform_data* @dev_get_platdata(%struct.device* %9)
  store %struct.ath9k_platform_data* %10, %struct.ath9k_platform_data** %5, align 8
  %11 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %5, align 8
  %12 = icmp ne %struct.ath9k_platform_data* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %5, align 8
  %15 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %5, align 8
  %20 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %39

22:                                               ; preds = %13, %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @EEPROM_FILENAME_LEN, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @devm_kzalloc(%struct.device* %25, i32 %26, i32 %27)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store i8* null, i8** %2, align 8
  br label %39

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @EEPROM_FILENAME_LEN, align 4
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_name(%struct.device* %35)
  %37 = call i32 @scnprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %32, %31, %18
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local %struct.ath9k_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
