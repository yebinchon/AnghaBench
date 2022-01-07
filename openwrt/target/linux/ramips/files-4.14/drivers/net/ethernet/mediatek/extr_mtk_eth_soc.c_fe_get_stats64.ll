; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_get_stats64.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.fe_priv = type { %struct.TYPE_4__*, %struct.fe_hw_stats* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.fe_hw_stats = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@fe_reg_table = common dso_local global i32* null, align 8
@FE_REG_FE_COUNTER_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @fe_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.fe_priv*, align 8
  %6 = alloca %struct.fe_hw_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.fe_priv* %10, %struct.fe_priv** %5, align 8
  %11 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %12 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %11, i32 0, i32 1
  %13 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %12, align 8
  store %struct.fe_hw_stats* %13, %struct.fe_hw_stats** %6, align 8
  %14 = load i32*, i32** @fe_reg_table, align 8
  %15 = load i64, i64* @FE_REG_FE_COUNTER_BASE, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = call i32 @netdev_stats_to_stats64(%struct.rtnl_link_stats64* %21, i32* %23)
  br label %135

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i64 @netif_running(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i64 @netif_device_present(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %35 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %34, i32 0, i32 12
  %36 = call i64 @spin_trylock_bh(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %40 = call i32 @fe_stats_update(%struct.fe_priv* %39)
  %41 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %42 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %41, i32 0, i32 12
  %43 = call i32 @spin_unlock_bh(i32* %42)
  br label %44

44:                                               ; preds = %38, %33
  br label %45

45:                                               ; preds = %44, %29, %25
  br label %46

46:                                               ; preds = %104, %45
  %47 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %48 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %47, i32 0, i32 11
  %49 = call i32 @u64_stats_fetch_begin_irq(i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %51 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %54 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 8
  %55 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %56 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %59 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 4
  %60 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %61 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %64 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 8
  %65 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %66 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %69 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 4
  %70 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %71 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %74 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 8
  %75 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %76 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %79 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %83 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %82, i32 0, i32 7
  store i64 %81, i64* %83, align 8
  %84 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %85 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %88 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %90 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %93 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %95 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %98 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %100 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %103 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %46
  %105 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %6, align 8
  %106 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %105, i32 0, i32 11
  %107 = load i32, i32* %8, align 4
  %108 = call i64 @u64_stats_fetch_retry_irq(i32* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %46, label %110

110:                                              ; preds = %104
  %111 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %112 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %118 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %120 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %126 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %128 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %134 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %110, %20
  ret void
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_stats_to_stats64(%struct.rtnl_link_stats64*, i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_device_present(%struct.net_device*) #1

declare dso_local i64 @spin_trylock_bh(i32*) #1

declare dso_local i32 @fe_stats_update(%struct.fe_priv*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
