; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_open.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ag71xx = type { i32 }

@NET_SKB_PAD = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@AG71XX_REG_MAC_MFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ag71xx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ag71xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %7)
  store %struct.ag71xx* %8, %struct.ag71xx** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @netif_carrier_off(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ag71xx_max_frame_len(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* @NET_SKB_PAD, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @NET_IP_ALIGN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @SKB_DATA_ALIGN(i64 %20)
  %22 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %23 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %25 = load i32, i32* @AG71XX_REG_MAC_MFL, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ag71xx_wr(%struct.ag71xx* %24, i32 %25, i32 %26)
  %28 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ag71xx_hw_set_macaddr(%struct.ag71xx* %28, i32 %31)
  %33 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %34 = call i32 @ag71xx_hw_enable(%struct.ag71xx* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %40 = call i32 @ag71xx_phy_start(%struct.ag71xx* %39)
  store i32 0, i32* %2, align 4
  br label %45

41:                                               ; preds = %37
  %42 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %43 = call i32 @ag71xx_rings_cleanup(%struct.ag71xx* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ag71xx_max_frame_len(i32) #1

declare dso_local i32 @SKB_DATA_ALIGN(i64) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_hw_set_macaddr(%struct.ag71xx*, i32) #1

declare dso_local i32 @ag71xx_hw_enable(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_phy_start(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_rings_cleanup(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
