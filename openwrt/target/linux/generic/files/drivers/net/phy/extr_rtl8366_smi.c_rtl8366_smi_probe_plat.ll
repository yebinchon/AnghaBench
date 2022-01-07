; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_probe_plat.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_probe_plat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtl8366_platform_data* }
%struct.rtl8366_platform_data = type { i32, i32, i32 }
%struct.rtl8366_smi = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"no platform data specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_smi_probe_plat(%struct.platform_device* %0, %struct.rtl8366_smi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca %struct.rtl8366_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.rtl8366_smi* %1, %struct.rtl8366_smi** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %9, align 8
  store %struct.rtl8366_platform_data* %10, %struct.rtl8366_platform_data** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %13, align 8
  %15 = icmp ne %struct.rtl8366_platform_data* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_2__* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %6, align 8
  %24 = getelementptr inbounds %struct.rtl8366_platform_data, %struct.rtl8366_platform_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %27 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %6, align 8
  %29 = getelementptr inbounds %struct.rtl8366_platform_data, %struct.rtl8366_platform_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %32 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %6, align 8
  %34 = getelementptr inbounds %struct.rtl8366_platform_data, %struct.rtl8366_platform_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %37 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %22, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
