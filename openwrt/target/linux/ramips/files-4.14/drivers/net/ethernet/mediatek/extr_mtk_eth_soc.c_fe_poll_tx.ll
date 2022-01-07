; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_poll_tx.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_poll_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { %struct.fe_tx_ring, %struct.net_device* }
%struct.fe_tx_ring = type { i64, i64, %struct.fe_tx_buf* }
%struct.fe_tx_buf = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.device }
%struct.device = type { i32 }

@FE_REG_TX_DTX_IDX0 = common dso_local global i32 0, align 4
@DMA_DUMMY_DESC = common dso_local global i64 0, align 8
@FE_REG_FE_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fe_priv*, i32, i64, i32*)* @fe_poll_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_poll_tx(%struct.fe_priv* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.fe_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.fe_tx_buf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.fe_tx_ring*, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %19 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %18, i32 0, i32 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %9, align 8
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %24 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %23, i32 0, i32 0
  store %struct.fe_tx_ring* %24, %struct.fe_tx_ring** %17, align 8
  %25 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %17, align 8
  %26 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %15, align 8
  %28 = load i32, i32* @FE_REG_TX_DTX_IDX0, align 4
  %29 = call i64 @fe_reg_r32(i32 %28)
  store i64 %29, i64* %16, align 8
  br label %30

30:                                               ; preds = %68, %4
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* %16, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i1 [ false, %30 ], [ %36, %34 ]
  br i1 %38, label %39, label %74

39:                                               ; preds = %37
  %40 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %17, align 8
  %41 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %40, i32 0, i32 2
  %42 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %41, align 8
  %43 = load i64, i64* %15, align 8
  %44 = getelementptr inbounds %struct.fe_tx_buf, %struct.fe_tx_buf* %42, i64 %43
  store %struct.fe_tx_buf* %44, %struct.fe_tx_buf** %13, align 8
  %45 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %13, align 8
  %46 = getelementptr inbounds %struct.fe_tx_buf, %struct.fe_tx_buf* %45, i32 0, i32 0
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %12, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %74

51:                                               ; preds = %39
  %52 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %53 = load i64, i64* @DMA_DUMMY_DESC, align 8
  %54 = inttoptr i64 %53 to %struct.sk_buff*
  %55 = icmp ne %struct.sk_buff* %52, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %56, %51
  %69 = load %struct.device*, %struct.device** %10, align 8
  %70 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %13, align 8
  %71 = call i32 @fe_txd_unmap(%struct.device* %69, %struct.fe_tx_buf* %70)
  %72 = load i64, i64* %15, align 8
  %73 = call i64 @NEXT_TX_DESP_IDX(i64 %72)
  store i64 %73, i64* %15, align 8
  br label %30

74:                                               ; preds = %50, %37
  %75 = load i64, i64* %15, align 8
  %76 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %17, align 8
  %77 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* %16, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load i32, i32* @FE_REG_TX_DTX_IDX0, align 4
  %83 = call i64 @fe_reg_r32(i32 %82)
  store i64 %83, i64* %16, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %16, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i64, i64* %7, align 8
  %89 = load i32, i32* @FE_REG_FE_INT_STATUS, align 4
  %90 = call i32 @fe_reg_w32(i64 %88, i32 %89)
  br label %93

91:                                               ; preds = %81
  %92 = load i32*, i32** %8, align 8
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %91, %87
  br label %96

94:                                               ; preds = %74
  %95 = load i32*, i32** %8, align 8
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %96
  %100 = load %struct.net_device*, %struct.net_device** %9, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @netdev_completed_queue(%struct.net_device* %100, i32 %101, i32 %102)
  %104 = call i32 (...) @smp_mb()
  %105 = load %struct.net_device*, %struct.net_device** %9, align 8
  %106 = call i64 @netif_queue_stopped(%struct.net_device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %99
  %109 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %17, align 8
  %110 = call i64 @fe_empty_txd(%struct.fe_tx_ring* %109)
  %111 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %17, align 8
  %112 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %110, %113
  br label %115

115:                                              ; preds = %108, %99
  %116 = phi i1 [ false, %99 ], [ %114, %108 ]
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.net_device*, %struct.net_device** %9, align 8
  %122 = call i32 @netif_wake_queue(%struct.net_device* %121)
  br label %123

123:                                              ; preds = %120, %115
  br label %124

124:                                              ; preds = %123, %96
  %125 = load i32, i32* %14, align 4
  ret i32 %125
}

declare dso_local i64 @fe_reg_r32(i32) #1

declare dso_local i32 @fe_txd_unmap(%struct.device*, %struct.fe_tx_buf*) #1

declare dso_local i64 @NEXT_TX_DESP_IDX(i64) #1

declare dso_local i32 @fe_reg_w32(i64, i32) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @fe_empty_txd(%struct.fe_tx_ring*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
