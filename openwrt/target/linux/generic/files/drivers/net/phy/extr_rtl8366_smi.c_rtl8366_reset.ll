; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_reset.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { %struct.TYPE_2__*, i32 (%struct.rtl8366_smi*, i32)* }
%struct.TYPE_2__ = type { {}* }

@RTL8366_SMI_HW_STOP_DELAY = common dso_local global i32 0, align 4
@RTL8366_SMI_HW_START_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8366_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366_reset(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366_smi*, align 8
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  %4 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %5 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %4, i32 0, i32 1
  %6 = load i32 (%struct.rtl8366_smi*, i32)*, i32 (%struct.rtl8366_smi*, i32)** %5, align 8
  %7 = icmp ne i32 (%struct.rtl8366_smi*, i32)* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %10 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %9, i32 0, i32 1
  %11 = load i32 (%struct.rtl8366_smi*, i32)*, i32 (%struct.rtl8366_smi*, i32)** %10, align 8
  %12 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %13 = call i32 %11(%struct.rtl8366_smi* %12, i32 1)
  %14 = load i32, i32* @RTL8366_SMI_HW_STOP_DELAY, align 4
  %15 = call i32 @msleep(i32 %14)
  %16 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %17 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %16, i32 0, i32 1
  %18 = load i32 (%struct.rtl8366_smi*, i32)*, i32 (%struct.rtl8366_smi*, i32)** %17, align 8
  %19 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %20 = call i32 %18(%struct.rtl8366_smi* %19, i32 0)
  %21 = load i32, i32* @RTL8366_SMI_HW_START_DELAY, align 4
  %22 = call i32 @msleep(i32 %21)
  store i32 0, i32* %2, align 4
  br label %32

23:                                               ; preds = %1
  %24 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %25 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.rtl8366_smi*)**
  %29 = load i32 (%struct.rtl8366_smi*)*, i32 (%struct.rtl8366_smi*)** %28, align 8
  %30 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %31 = call i32 %29(%struct.rtl8366_smi* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %23, %8
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
