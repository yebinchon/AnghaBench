; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_start_xmit.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.fe_priv = type { %struct.fe_tx_ring }
%struct.fe_tx_ring = type { i32 }

@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"tx padding failed!\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@tx_queued = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Tx Ring full when queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @fe_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fe_priv*, align 8
  %7 = alloca %struct.fe_tx_ring*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.fe_priv* %12, %struct.fe_priv** %6, align 8
  %13 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %14 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %13, i32 0, i32 0
  store %struct.fe_tx_ring* %14, %struct.fe_tx_ring** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store %struct.net_device_stats* %16, %struct.net_device_stats** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %22 = call i64 @fe_skb_padto(%struct.sk_buff* %20, %struct.fe_priv* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %26 = load i32, i32* @tx_err, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @netif_warn(%struct.fe_priv* %25, i32 %26, %struct.net_device* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @fe_cal_txd_req(%struct.sk_buff* %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %7, align 8
  %34 = call i32 @fe_empty_txd(%struct.fe_tx_ring* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp sle i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call i32 @netif_stop_queue(%struct.net_device* %41)
  %43 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %44 = load i32, i32* @tx_queued, align 4
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 @netif_err(%struct.fe_priv* %43, i32 %44, %struct.net_device* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %47, i32* %3, align 4
  br label %72

48:                                               ; preds = %30
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %7, align 8
  %53 = call i64 @fe_tx_map_dma(%struct.sk_buff* %49, %struct.net_device* %50, i32 %51, %struct.fe_tx_ring* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %57 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %70

60:                                               ; preds = %48
  %61 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %62 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %67 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %60, %55
  %71 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %40, %24
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @fe_skb_padto(%struct.sk_buff*, %struct.fe_priv*) #1

declare dso_local i32 @netif_warn(%struct.fe_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @fe_cal_txd_req(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fe_empty_txd(%struct.fe_tx_ring*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.fe_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i64 @fe_tx_map_dma(%struct.sk_buff*, %struct.net_device*, i32, %struct.fe_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
