; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_tx_dma_map_skb.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_tx_dma_map_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_tx_ring = type { i32 }
%struct.fe_map_state = type { i32 }
%struct.sk_buff = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fe_tx_ring*, %struct.fe_map_state*, %struct.sk_buff*)* @fe_tx_dma_map_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_tx_dma_map_skb(%struct.fe_tx_ring* %0, %struct.fe_map_state* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.fe_tx_ring*, align 8
  %5 = alloca %struct.fe_map_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fe_tx_ring* %0, %struct.fe_tx_ring** %4, align 8
  store %struct.fe_map_state* %1, %struct.fe_map_state** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.page* @virt_to_page(i32 %12)
  store %struct.page* %13, %struct.page** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @offset_in_page(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i64 @skb_headlen(%struct.sk_buff* %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %4, align 8
  %21 = load %struct.fe_map_state*, %struct.fe_map_state** %5, align 8
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @fe_tx_dma_map_page(%struct.fe_tx_ring* %20, %struct.fe_map_state* %21, %struct.page* %22, i64 %23, i64 %24)
  ret i32 %25
}

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @fe_tx_dma_map_page(%struct.fe_tx_ring*, %struct.fe_map_state*, %struct.page*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
