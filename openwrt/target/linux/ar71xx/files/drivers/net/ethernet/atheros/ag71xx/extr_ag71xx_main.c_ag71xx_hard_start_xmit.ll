; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ag71xx = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.ag71xx_ring }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ag71xx_ring = type { i32, i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.sk_buff* }
%struct.ag71xx_desc = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: packet len is too small\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@AG71XX_TX_RING_DS_PER_PKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: tx queue full\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: packet injected into TX queue\0A\00", align 1
@AG71XX_REG_TX_CTRL = common dso_local global i32 0, align 4
@TX_CTRL_TXE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ag71xx_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ag71xx*, align 8
  %7 = alloca %struct.ag71xx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ag71xx_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %15)
  store %struct.ag71xx* %16, %struct.ag71xx** %6, align 8
  %17 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %18 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %17, i32 0, i32 3
  store %struct.ag71xx_ring* %18, %struct.ag71xx_ring** %7, align 8
  %19 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %20 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BIT(i32 %21)
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %25 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @BIT(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %29 = call i64 @ag71xx_has_ar8216(%struct.ag71xx* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @ag71xx_add_ar8216_header(%struct.ag71xx* %32, %struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %38, 4
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %42 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %178

47:                                               ; preds = %35
  %48 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %49 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i64 @dma_map_single(i32* %51, i32 %54, i32 %57, i32 %58)
  store i64 %59, i64* %11, align 8
  %60 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %61 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %12, align 4
  %65 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %65, i32 %66)
  store %struct.ag71xx_desc* %67, %struct.ag71xx_desc** %10, align 8
  %68 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %75 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %73, %76
  %78 = call i32 @ag71xx_fill_dma_desc(%struct.ag71xx_ring* %68, i32 %70, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %47
  br label %167

82:                                               ; preds = %47
  %83 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %84 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %85, %86
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %12, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %95 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %94, i32 0, i32 3
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 %93, i32* %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %103 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %102, i32 0, i32 3
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store %struct.sk_buff* %101, %struct.sk_buff** %108, align 8
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @netdev_sent_queue(%struct.net_device* %109, i32 %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call i32 @skb_tx_timestamp(%struct.sk_buff* %114)
  %116 = load i32, i32* @DESC_EMPTY, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %119 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %124 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = call i32 (...) @wmb()
  store i32 2, i32* %14, align 4
  %128 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %129 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %82
  %133 = load i32, i32* @AG71XX_TX_RING_DS_PER_PKT, align 4
  %134 = load i32, i32* %14, align 4
  %135 = mul nsw i32 %134, %133
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %132, %82
  %137 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %138 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %141 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %139, %142
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %14, align 4
  %146 = sub nsw i32 %144, %145
  %147 = icmp sge i32 %143, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %136
  %149 = load %struct.net_device*, %struct.net_device** %5, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  %153 = load %struct.net_device*, %struct.net_device** %5, align 8
  %154 = call i32 @netif_stop_queue(%struct.net_device* %153)
  br label %155

155:                                              ; preds = %148, %136
  %156 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %157 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %156, i32 0, i32 2
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %160)
  %162 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %163 = load i32, i32* @AG71XX_REG_TX_CTRL, align 4
  %164 = load i32, i32* @TX_CTRL_TXE, align 4
  %165 = call i32 @ag71xx_wr(%struct.ag71xx* %162, i32 %163, i32 %164)
  %166 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %166, i32* %3, align 4
  br label %187

167:                                              ; preds = %81
  %168 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %169 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %168, i32 0, i32 1
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i64, i64* %11, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @DMA_TO_DEVICE, align 4
  %177 = call i32 @dma_unmap_single(i32* %171, i64 %172, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %167, %40
  %179 = load %struct.net_device*, %struct.net_device** %5, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %185 = call i32 @dev_kfree_skb(%struct.sk_buff* %184)
  %186 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %178, %155
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ag71xx_has_ar8216(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_add_ar8216_header(%struct.ag71xx*, %struct.sk_buff*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @ag71xx_fill_dma_desc(%struct.ag71xx_ring*, i32, i32) #1

declare dso_local i32 @netdev_sent_queue(%struct.net_device*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
