; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rx_packets.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rx_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, i32, %struct.TYPE_4__*, %struct.ag71xx_ring, %struct.net_device* }
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
  %19 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %18, i32 0, i32 4
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %5, align 8
  %21 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %22 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %21, i32 0, i32 3
  store %struct.ag71xx_ring* %22, %struct.ag71xx_ring** %6, align 8
  %23 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %24 = call i32 @ag71xx_buffer_offset(%struct.ag71xx* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %26 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %29 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @BIT(i32 %30)
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @BIT(i32 %35)
  store i32 %36, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %42 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %45 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %43, i32 %46)
  %48 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %11)
  br label %49

49:                                               ; preds = %180, %2
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %194

53:                                               ; preds = %49
  %54 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %55 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %14, align 4
  %59 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %59, i32 %60)
  store %struct.ag71xx_desc* %61, %struct.ag71xx_desc** %15, align 8
  store i32 0, i32* %17, align 4
  %62 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %15, align 8
  %63 = call i64 @ag71xx_desc_empty(%struct.ag71xx_desc* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %194

66:                                               ; preds = %53
  %67 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %68 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %73 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 @ag71xx_assert(i32 0)
  br label %194

78:                                               ; preds = %66
  %79 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %80 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %81 = load i32, i32* @RX_STATUS_PR, align 4
  %82 = call i32 @ag71xx_wr(%struct.ag71xx* %79, i32 %80, i32 %81)
  %83 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %15, align 8
  %84 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %16, align 4
  %88 = load i64, i64* @ETH_FCS_LEN, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %16, align 4
  %93 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %94 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %98 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %106 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %109 = call i32 @dma_unmap_single(i32* %96, i32 %104, i32 %107, i32 %108)
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.net_device*, %struct.net_device** %5, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %115
  store i32 %120, i32* %118, align 4
  %121 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %122 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %121, i32 0, i32 2
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %130 = call i32 @ag71xx_buffer_size(%struct.ag71xx* %129)
  %131 = call %struct.sk_buff* @build_skb(i32* %128, i32 %130)
  store %struct.sk_buff* %131, %struct.sk_buff** %12, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  br i1 %133, label %144, label %134

134:                                              ; preds = %78
  %135 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %136 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %135, i32 0, i32 2
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @skb_free_frag(i32* %142)
  br label %180

144:                                              ; preds = %78
  %145 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @skb_reserve(%struct.sk_buff* %145, i32 %146)
  %148 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @skb_put(%struct.sk_buff* %148, i32 %149)
  %151 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %152 = call i64 @ag71xx_has_ar8216(%struct.ag71xx* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %144
  %155 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %157 = load i32, i32* %16, align 4
  %158 = call i32 @ag71xx_remove_ar8216_header(%struct.ag71xx* %155, %struct.sk_buff* %156, i32 %157)
  store i32 %158, i32* %17, align 4
  br label %159

159:                                              ; preds = %154, %144
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load %struct.net_device*, %struct.net_device** %5, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %169 = call i32 @kfree_skb(%struct.sk_buff* %168)
  br label %179

170:                                              ; preds = %159
  %171 = load %struct.net_device*, %struct.net_device** %5, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 2
  store %struct.net_device* %171, %struct.net_device** %173, align 8
  %174 = load i32, i32* @CHECKSUM_NONE, align 4
  %175 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %178 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %11, %struct.sk_buff* %177)
  br label %179

179:                                              ; preds = %170, %162
  br label %180

180:                                              ; preds = %179, %134
  %181 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %182 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %181, i32 0, i32 2
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  store i32* null, i32** %187, align 8
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %13, align 4
  %190 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %191 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 8
  br label %49

194:                                              ; preds = %76, %65, %49
  %195 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %196 = call i32 @ag71xx_ring_rx_refill(%struct.ag71xx* %195)
  br label %197

197:                                              ; preds = %200, %194
  %198 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %11)
  store %struct.sk_buff* %198, %struct.sk_buff** %12, align 8
  %199 = icmp ne %struct.sk_buff* %198, null
  br i1 %199, label %200, label %208

200:                                              ; preds = %197
  %201 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %202 = load %struct.net_device*, %struct.net_device** %5, align 8
  %203 = call i32 @eth_type_trans(%struct.sk_buff* %201, %struct.net_device* %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %207 = call i32 @netif_receive_skb(%struct.sk_buff* %206)
  br label %197

208:                                              ; preds = %197
  %209 = load %struct.net_device*, %struct.net_device** %5, align 8
  %210 = getelementptr inbounds %struct.net_device, %struct.net_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %213 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %216 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %211, i32 %214, i32 %217, i32 %218)
  %220 = load i32, i32* %13, align 4
  ret i32 %220
}

declare dso_local i32 @ag71xx_buffer_offset(%struct.ag71xx*) #1

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

declare dso_local i64 @ag71xx_has_ar8216(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_remove_ar8216_header(%struct.ag71xx*, %struct.sk_buff*, i32) #1

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
