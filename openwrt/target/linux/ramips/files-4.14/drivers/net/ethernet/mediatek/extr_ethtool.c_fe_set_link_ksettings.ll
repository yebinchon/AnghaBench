; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_ethtool.c_fe_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_ethtool.c_fe_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.fe_priv = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__**, i64* }

@FE_PHY_FLAG_PORT = common dso_local global i32 0, align 4
@FE_PHY_FLAG_ATTACH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @fe_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
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
  %10 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %94

14:                                               ; preds = %2
  %15 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %20 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %18, %24
  br i1 %25, label %26, label %88

26:                                               ; preds = %14
  %27 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %28 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %31, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %26
  %40 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %41 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %43, align 8
  %45 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %44, i64 %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %52 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %51, i32 0, i32 2
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %52, align 8
  %53 = load i32, i32* @FE_PHY_FLAG_PORT, align 4
  %54 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %55 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %87

56:                                               ; preds = %26
  %57 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %58 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %56
  %62 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %63 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.TYPE_8__* @mdiobus_get_phy(i64 %64, i64 %68)
  %70 = icmp ne %struct.TYPE_8__* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %61
  %72 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %73 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call %struct.TYPE_8__* @mdiobus_get_phy(i64 %74, i64 %78)
  %80 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %81 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %80, i32 0, i32 2
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %81, align 8
  %82 = load i32, i32* @FE_PHY_FLAG_ATTACH, align 4
  %83 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %84 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %86

85:                                               ; preds = %61, %56
  br label %94

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %39
  br label %88

88:                                               ; preds = %87, %14
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %93 = call i32 @phy_ethtool_ksettings_set(i32 %91, %struct.ethtool_link_ksettings* %92)
  store i32 %93, i32* %3, align 4
  br label %97

94:                                               ; preds = %85, %13
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %88
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_8__* @mdiobus_get_phy(i64, i64) #1

declare dso_local i32 @phy_ethtool_ksettings_set(i32, %struct.ethtool_link_ksettings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
