; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rx_packets.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rx_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, i32, i32, %struct.TYPE_4__*, %struct.ag71xx_ring, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.ag71xx_ring = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.net_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.ag71xx_desc = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s: rx packets, limit=%d, curr=%u, dirty=%u\0A\00", align 1
@AG71XX_REG_RX_STATUS = common dso_local global i32 0, align 4
@RX_STATUS_PR = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: rx finish, curr=%u, dirty=%u, done=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*, i32)* @ag71xx_rx_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_rx_packets(%struct.ag71xx* %0, i32 %1) #0 {
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ag71xx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff_head, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ag71xx_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %19 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %18, i32 0, i32 5
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %5, align 8
  %21 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %22 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %21, i32 0, i32 4
  store %struct.ag71xx_ring* %22, %struct.ag71xx_ring** %6, align 8
  %23 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %24 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %27 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %30 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @BIT(i32 %31)
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %35 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @BIT(i32 %36)
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %43 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %46 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %44, i32 %47)
  %49 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %11)
  br label %50

50:                                               ; preds = %172, %2
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %186

54:                                               ; preds = %50
  %55 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %56 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %14, align 4
  %60 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %60, i32 %61)
  store %struct.ag71xx_desc* %62, %struct.ag71xx_desc** %15, align 8
  store i32 0, i32* %17, align 4
  %63 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %15, align 8
  %64 = call i64 @ag71xx_desc_empty(%struct.ag71xx_desc* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %186

67:                                               ; preds = %54
  %68 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %69 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %74 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = call i32 @ag71xx_assert(i32 0)
  br label %186

79:                                               ; preds = %67
  %80 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %81 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %82 = load i32, i32* @RX_STATUS_PR, align 4
  %83 = call i32 @ag71xx_wr(%struct.ag71xx* %80, i32 %81, i32 %82)
  %84 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %15, align 8
  %85 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %16, align 4
  %89 = load i64, i64* @ETH_FCS_LEN, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %16, align 4
  %94 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %95 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %99 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %107 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %110 = call i32 @dma_unmap_single(i32* %97, i32 %105, i32 %108, i32 %109)
  %111 = load %struct.net_device*, %struct.net_device** %5, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %123 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %122, i32 0, i32 2
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %131 = call i32 @ag71xx_buffer_size(%struct.ag71xx* %130)
  %132 = call %struct.sk_buff* @build_skb(i32* %129, i32 %131)
  store %struct.sk_buff* %132, %struct.sk_buff** %12, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %134 = icmp ne %struct.sk_buff* %133, null
  br i1 %134, label %145, label %135

135:                                              ; preds = %79
  %136 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %137 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @skb_free_frag(i32* %143)
  br label %172

145:                                              ; preds = %79
  %146 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @skb_reserve(%struct.sk_buff* %146, i32 %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @skb_put(%struct.sk_buff* %149, i32 %150)
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %145
  %155 = load %struct.net_device*, %struct.net_device** %5, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %161 = call i32 @kfree_skb(%struct.sk_buff* %160)
  br label %171

162:                                              ; preds = %145
  %163 = load %struct.net_device*, %struct.net_device** %5, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 2
  store %struct.net_device* %163, %struct.net_device** %165, align 8
  %166 = load i32, i32* @CHECKSUM_NONE, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %170 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %11, %struct.sk_buff* %169)
  br label %171

171:                                              ; preds = %162, %154
  br label %172

172:                                              ; preds = %171, %135
  %173 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %174 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %173, i32 0, i32 2
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i32* null, i32** %179, align 8
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %13, align 4
  %182 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %183 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  br label %50

186:                                              ; preds = %77, %66, %50
  %187 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %188 = call i32 @ag71xx_ring_rx_refill(%struct.ag71xx* %187)
  br label %189

189:                                              ; preds = %192, %186
  %190 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %11)
  store %struct.sk_buff* %190, %struct.sk_buff** %12, align 8
  %191 = icmp ne %struct.sk_buff* %190, null
  br i1 %191, label %192, label %200

192:                                              ; preds = %189
  %193 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %194 = load %struct.net_device*, %struct.net_device** %5, align 8
  %195 = call i32 @eth_type_trans(%struct.sk_buff* %193, %struct.net_device* %194)
  %196 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %199 = call i32 @netif_receive_skb(%struct.sk_buff* %198)
  br label %189

200:                                              ; preds = %189
  %201 = load %struct.net_device*, %struct.net_device** %5, align 8
  %202 = getelementptr inbounds %struct.net_device, %struct.net_device* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %205 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %208 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %203, i32 %206, i32 %209, i32 %210)
  %212 = load i32, i32* %13, align 4
  ret i32 %212
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i64 @ag71xx_desc_empty(%struct.ag71xx_desc*) #1

declare dso_local i32 @ag71xx_assert(i32) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @build_skb(i32*, i32) #1

declare dso_local i32 @ag71xx_buffer_size(%struct.ag71xx*) #1

declare dso_local i32 @skb_free_frag(i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @ag71xx_ring_rx_refill(%struct.ag71xx*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
