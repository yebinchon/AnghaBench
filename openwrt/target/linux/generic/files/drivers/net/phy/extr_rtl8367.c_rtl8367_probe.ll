; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rtl8366_smi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@rtl8367_smi_ops = common dso_local global i32 0, align 4
@RTL8367_CPU_PORT_NUM = common dso_local global i32 0, align 4
@RTL8367_NUM_PORTS = common dso_local global i32 0, align 4
@RTL8367_NUM_VLANS = common dso_local global i32 0, align 4
@rtl8367_mib_counters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtl8367_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.rtl8366_smi* @rtl8366_smi_probe(%struct.platform_device* %6)
  store %struct.rtl8366_smi* %7, %struct.rtl8366_smi** %4, align 8
  %8 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %9 = call i64 @IS_ERR(%struct.rtl8366_smi* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.rtl8366_smi* %12)
  store i32 %13, i32* %2, align 4
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %16 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %15, i32 0, i32 0
  store i32 1500, i32* %16, align 8
  %17 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %18 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %17, i32 0, i32 1
  store i32 185, i32* %18, align 4
  %19 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %20 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %19, i32 0, i32 2
  store i32 184, i32* %20, align 8
  %21 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %22 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %21, i32 0, i32 8
  store i32* @rtl8367_smi_ops, i32** %22, align 8
  %23 = load i32, i32* @RTL8367_CPU_PORT_NUM, align 4
  %24 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %25 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @RTL8367_NUM_PORTS, align 4
  %27 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %28 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @RTL8367_NUM_VLANS, align 4
  %30 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %31 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @rtl8367_mib_counters, align 4
  %33 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %34 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @rtl8367_mib_counters, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %38 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %40 = call i32 @rtl8366_smi_init(%struct.rtl8366_smi* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %14
  br label %59

44:                                               ; preds = %14
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.rtl8366_smi* %46)
  %48 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %49 = call i32 @rtl8367_switch_init(%struct.rtl8366_smi* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %54

53:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %63

54:                                               ; preds = %52
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i32 @platform_set_drvdata(%struct.platform_device* %55, %struct.rtl8366_smi* null)
  %57 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %58 = call i32 @rtl8366_smi_cleanup(%struct.rtl8366_smi* %57)
  br label %59

59:                                               ; preds = %54, %43
  %60 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %61 = call i32 @kfree(%struct.rtl8366_smi* %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %53, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.rtl8366_smi* @rtl8366_smi_probe(%struct.platform_device*) #1

declare dso_local i64 @IS_ERR(%struct.rtl8366_smi*) #1

declare dso_local i32 @PTR_ERR(%struct.rtl8366_smi*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @rtl8366_smi_init(%struct.rtl8366_smi*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8367_switch_init(%struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8366_smi_cleanup(%struct.rtl8366_smi*) #1

declare dso_local i32 @kfree(%struct.rtl8366_smi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
