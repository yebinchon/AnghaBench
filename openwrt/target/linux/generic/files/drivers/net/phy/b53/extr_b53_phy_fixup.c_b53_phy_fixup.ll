; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_phy_fixup.c_b53_phy_fixup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_phy_fixup.c_b53_phy_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@B53_PSEUDO_PHY = common dso_local global i64 0, align 8
@B53_BRCM_OUI_1 = common dso_local global i32 0, align 4
@B53_BRCM_OUI_2 = common dso_local global i32 0, align 4
@B53_BRCM_OUI_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @b53_phy_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_phy_fixup(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  store %struct.mii_bus* %9, %struct.mii_bus** %4, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @B53_PSEUDO_PHY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %19 = call i32 @mdiobus_read(%struct.mii_bus* %18, i32 0, i32 2)
  %20 = shl i32 %19, 16
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %22 = call i32 @mdiobus_read(%struct.mii_bus* %21, i32 0, i32 3)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, -1024
  %27 = load i32, i32* @B53_BRCM_OUI_1, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, -1024
  %32 = load i32, i32* @B53_BRCM_OUI_2, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, -1024
  %37 = load i32, i32* @B53_BRCM_OUI_3, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %29, %17
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %34
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @mdiobus_read(%struct.mii_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
