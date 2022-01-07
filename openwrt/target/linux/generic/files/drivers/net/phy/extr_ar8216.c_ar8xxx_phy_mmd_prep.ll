; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_mmd_prep.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_mmd_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32, i32)* }

@MII_ATH_MMD_ADDR = common dso_local global i32 0, align 4
@MII_ATH_MMD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_bus*, i32, i32, i32)* @ar8xxx_phy_mmd_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8xxx_phy_mmd_prep(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %10 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %9, i32 0, i32 0
  %11 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %10, align 8
  %12 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MII_ATH_MMD_ADDR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 %11(%struct.mii_bus* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %18 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %17, i32 0, i32 0
  %19 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %18, align 8
  %20 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MII_ATH_MMD_DATA, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 %19(%struct.mii_bus* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %26 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %25, i32 0, i32 0
  %27 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %26, align 8
  %28 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MII_ATH_MMD_ADDR, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, 16384
  %33 = call i32 %27(%struct.mii_bus* %28, i32 %29, i32 %30, i32 %32)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
