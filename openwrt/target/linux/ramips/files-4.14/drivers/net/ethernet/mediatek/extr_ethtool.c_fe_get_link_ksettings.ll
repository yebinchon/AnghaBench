; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_ethtool.c_fe_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_ethtool.c_fe_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { i32 }
%struct.fe_priv = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@FE_PHY_FLAG_ATTACH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @fe_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.fe_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.fe_priv* %8, %struct.fe_priv** %6, align 8
  %9 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %10 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %18 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FE_PHY_FLAG_ATTACH, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %24 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @phy_read_status(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %37 = call i32 @phy_ethtool_ksettings_get(i32 %35, %struct.ethtool_link_ksettings* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %28, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @phy_read_status(i32) #1

declare dso_local i32 @phy_ethtool_ksettings_get(i32, %struct.ethtool_link_ksettings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
