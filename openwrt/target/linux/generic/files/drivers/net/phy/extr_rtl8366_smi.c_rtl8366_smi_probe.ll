; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtl8366_smi* @rtl8366_smi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.rtl8366_smi*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.rtl8366_smi* @rtl8366_smi_alloc(%struct.TYPE_2__* %7)
  store %struct.rtl8366_smi* %8, %struct.rtl8366_smi** %4, align 8
  %9 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %10 = icmp ne %struct.rtl8366_smi* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.rtl8366_smi* null, %struct.rtl8366_smi** %2, align 8
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %21 = call i32 @rtl8366_smi_probe_of(%struct.platform_device* %19, %struct.rtl8366_smi* %20)
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %12
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %25 = call i32 @rtl8366_smi_probe_plat(%struct.platform_device* %23, %struct.rtl8366_smi* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %32

30:                                               ; preds = %26
  %31 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  store %struct.rtl8366_smi* %31, %struct.rtl8366_smi** %2, align 8
  br label %37

32:                                               ; preds = %29
  %33 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %34 = call i32 @kfree(%struct.rtl8366_smi* %33)
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.rtl8366_smi* @ERR_PTR(i32 %35)
  store %struct.rtl8366_smi* %36, %struct.rtl8366_smi** %2, align 8
  br label %37

37:                                               ; preds = %32, %30, %11
  %38 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  ret %struct.rtl8366_smi* %38
}

declare dso_local %struct.rtl8366_smi* @rtl8366_smi_alloc(%struct.TYPE_2__*) #1

declare dso_local i32 @rtl8366_smi_probe_of(%struct.platform_device*, %struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8366_smi_probe_plat(%struct.platform_device*, %struct.rtl8366_smi*) #1

declare dso_local i32 @kfree(%struct.rtl8366_smi*) #1

declare dso_local %struct.rtl8366_smi* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
