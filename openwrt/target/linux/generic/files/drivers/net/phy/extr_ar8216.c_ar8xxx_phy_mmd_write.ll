; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_mmd_write.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_mmd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.mii_bus* }
%struct.mii_bus = type { i32, i32 (%struct.mii_bus*, i32, i32, i32)* }

@MII_ATH_MMD_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar8xxx_phy_mmd_write(%struct.ar8xxx_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ar8xxx_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mii_bus*, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %6, align 8
  %13 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %12, i32 0, i32 0
  %14 = load %struct.mii_bus*, %struct.mii_bus** %13, align 8
  store %struct.mii_bus* %14, %struct.mii_bus** %11, align 8
  %15 = load %struct.mii_bus*, %struct.mii_bus** %11, align 8
  %16 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mii_bus*, %struct.mii_bus** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ar8xxx_phy_mmd_prep(%struct.mii_bus* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.mii_bus*, %struct.mii_bus** %11, align 8
  %24 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %23, i32 0, i32 1
  %25 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %24, align 8
  %26 = load %struct.mii_bus*, %struct.mii_bus** %11, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MII_ATH_MMD_DATA, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 %25(%struct.mii_bus* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.mii_bus*, %struct.mii_bus** %11, align 8
  %32 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ar8xxx_phy_mmd_prep(%struct.mii_bus*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
