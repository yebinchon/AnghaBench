; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_poll_rx.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_poll_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.fe_priv = type { i32, %struct.fe_rx_ring, %struct.fe_soc_data*, %struct.net_device* }
%struct.fe_rx_ring = type { i32, i32, i32**, i32, i32, %struct.fe_rx_dma* }
%struct.fe_rx_dma = type { i32, i32, i32, i32 }
%struct.fe_soc_data = type { i32 }
%struct.net_device = type { i32, i32, %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@FE_FLAG_RX_2B_OFFSET = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@RX_DMA_DONE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@FE_FLAG_RX_SG_DMA = common dso_local global i32 0, align 4
@RX_DMA_LSO = common dso_local global i32 0, align 4
@FE_REG_RX_CALC_IDX0 = common dso_local global i32 0, align 4
@FE_REG_FE_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32, %struct.fe_priv*, i32)* @fe_poll_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_poll_rx(%struct.napi_struct* %0, i32 %1, %struct.fe_priv* %2, i32 %3) #0 {
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fe_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device_stats*, align 8
  %11 = alloca %struct.fe_soc_data*, align 8
  %12 = alloca %struct.fe_rx_ring*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.fe_rx_dma*, align 8
  %19 = alloca %struct.fe_rx_dma, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fe_priv* %2, %struct.fe_priv** %7, align 8
  store i32 %3, i32* %8, align 4
  %24 = load %struct.fe_priv*, %struct.fe_priv** %7, align 8
  %25 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %24, i32 0, i32 3
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %9, align 8
  %27 = load %struct.net_device*, %struct.net_device** %9, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 2
  store %struct.net_device_stats* %28, %struct.net_device_stats** %10, align 8
  %29 = load %struct.fe_priv*, %struct.fe_priv** %7, align 8
  %30 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %29, i32 0, i32 2
  %31 = load %struct.fe_soc_data*, %struct.fe_soc_data** %30, align 8
  store %struct.fe_soc_data* %31, %struct.fe_soc_data** %11, align 8
  %32 = load %struct.fe_priv*, %struct.fe_priv** %7, align 8
  %33 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %32, i32 0, i32 1
  store %struct.fe_rx_ring* %33, %struct.fe_rx_ring** %12, align 8
  %34 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %35 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  store i32 0, i32* %20, align 4
  %37 = load %struct.net_device*, %struct.net_device** %9, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %4
  %44 = load %struct.fe_soc_data*, %struct.fe_soc_data** %11, align 8
  %45 = getelementptr inbounds %struct.fe_soc_data, %struct.fe_soc_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  br label %48

47:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load %struct.fe_priv*, %struct.fe_priv** %7, align 8
  %50 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FE_FLAG_RX_2B_OFFSET, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %21, align 4
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @NET_IP_ALIGN, align 4
  store i32 %57, i32* %21, align 4
  br label %58

58:                                               ; preds = %56, %55
  br label %59

59:                                               ; preds = %248, %58
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %260

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @NEXT_RX_DESP_IDX(i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %67 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %66, i32 0, i32 5
  %68 = load %struct.fe_rx_dma*, %struct.fe_rx_dma** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.fe_rx_dma, %struct.fe_rx_dma* %68, i64 %70
  store %struct.fe_rx_dma* %71, %struct.fe_rx_dma** %18, align 8
  %72 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %73 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %72, i32 0, i32 2
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %16, align 8
  %79 = load %struct.fe_rx_dma*, %struct.fe_rx_dma** %18, align 8
  %80 = call i32 @fe_get_rxd(%struct.fe_rx_dma* %19, %struct.fe_rx_dma* %79)
  %81 = getelementptr inbounds %struct.fe_rx_dma, %struct.fe_rx_dma* %19, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @RX_DMA_DONE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %63
  br label %260

87:                                               ; preds = %63
  %88 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %89 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %88, i32 0, i32 4
  %90 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %91 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @GFP_ATOMIC, align 4
  %94 = call i32* @page_frag_alloc(i32* %89, i32 %92, i32 %93)
  store i32* %94, i32** %17, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = icmp ne i32* %95, null
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %87
  %102 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %103 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %230

106:                                              ; preds = %87
  %107 = load %struct.net_device*, %struct.net_device** %9, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 1
  %109 = load i32*, i32** %17, align 8
  %110 = load i32, i32* @NET_SKB_PAD, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %21, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %117 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %120 = call i64 @dma_map_single(i32* %108, i32* %115, i32 %118, i32 %119)
  store i64 %120, i64* %23, align 8
  %121 = load %struct.net_device*, %struct.net_device** %9, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 1
  %123 = load i64, i64* %23, align 8
  %124 = call i32 @dma_mapping_error(i32* %122, i64 %123)
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %106
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @skb_free_frag(i32* %128)
  br label %230

130:                                              ; preds = %106
  %131 = load i32*, i32** %16, align 8
  %132 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %133 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call %struct.sk_buff* @build_skb(i32* %131, i32 %134)
  store %struct.sk_buff* %135, %struct.sk_buff** %15, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %137 = icmp ne %struct.sk_buff* %136, null
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %130
  %143 = load i32*, i32** %17, align 8
  %144 = call i32 @skb_free_frag(i32* %143)
  br label %230

145:                                              ; preds = %130
  %146 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %147 = load i32, i32* @NET_SKB_PAD, align 4
  %148 = load i32, i32* @NET_IP_ALIGN, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @skb_reserve(%struct.sk_buff* %146, i32 %149)
  %151 = load %struct.net_device*, %struct.net_device** %9, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.fe_rx_dma, %struct.fe_rx_dma* %19, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %156 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %159 = call i32 @dma_unmap_single(i32* %152, i32 %154, i32 %157, i32 %158)
  %160 = getelementptr inbounds %struct.fe_rx_dma, %struct.fe_rx_dma* %19, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @RX_DMA_GET_PLEN0(i32 %161)
  store i32 %162, i32* %22, align 4
  %163 = load %struct.net_device*, %struct.net_device** %9, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 2
  store %struct.net_device* %163, %struct.net_device** %165, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %167 = load i32, i32* %22, align 4
  %168 = call i32 @skb_put(%struct.sk_buff* %166, i32 %167)
  %169 = getelementptr inbounds %struct.fe_rx_dma, %struct.fe_rx_dma* %19, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %14, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %145
  %175 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %176 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %181

178:                                              ; preds = %145
  %179 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %180 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %179)
  br label %181

181:                                              ; preds = %178, %174
  %182 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %183 = load %struct.net_device*, %struct.net_device** %9, align 8
  %184 = call i32 @eth_type_trans(%struct.sk_buff* %182, %struct.net_device* %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.net_device*, %struct.net_device** %9, align 8
  %188 = getelementptr inbounds %struct.net_device, %struct.net_device* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %181
  %194 = getelementptr inbounds %struct.fe_rx_dma, %struct.fe_rx_dma* %19, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @RX_DMA_VID(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %200 = load i32, i32* @ETH_P_8021Q, align 4
  %201 = call i32 @htons(i32 %200)
  %202 = getelementptr inbounds %struct.fe_rx_dma, %struct.fe_rx_dma* %19, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @RX_DMA_VID(i32 %203)
  %205 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %199, i32 %201, i64 %204)
  br label %206

206:                                              ; preds = %198, %193, %181
  %207 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %208 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* %22, align 4
  %212 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %213 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = add i32 %214, %211
  store i32 %215, i32* %213, align 4
  %216 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %217 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %218 = call i32 @napi_gro_receive(%struct.napi_struct* %216, %struct.sk_buff* %217)
  %219 = load i32*, i32** %17, align 8
  %220 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %221 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %220, i32 0, i32 2
  %222 = load i32**, i32*** %221, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32*, i32** %222, i64 %224
  store i32* %219, i32** %225, align 8
  %226 = load i64, i64* %23, align 8
  %227 = trunc i64 %226 to i32
  %228 = load %struct.fe_rx_dma*, %struct.fe_rx_dma** %18, align 8
  %229 = getelementptr inbounds %struct.fe_rx_dma, %struct.fe_rx_dma* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %206, %142, %127, %101
  %231 = load %struct.fe_priv*, %struct.fe_priv** %7, align 8
  %232 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @FE_FLAG_RX_SG_DMA, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %239 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @RX_DMA_PLEN0(i32 %240)
  %242 = load %struct.fe_rx_dma*, %struct.fe_rx_dma** %18, align 8
  %243 = getelementptr inbounds %struct.fe_rx_dma, %struct.fe_rx_dma* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 4
  br label %248

244:                                              ; preds = %230
  %245 = load i32, i32* @RX_DMA_LSO, align 4
  %246 = load %struct.fe_rx_dma*, %struct.fe_rx_dma** %18, align 8
  %247 = getelementptr inbounds %struct.fe_rx_dma, %struct.fe_rx_dma* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %244, %237
  %249 = load i32, i32* %13, align 4
  %250 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %251 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  %252 = call i32 (...) @wmb()
  %253 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %12, align 8
  %254 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @FE_REG_RX_CALC_IDX0, align 4
  %257 = call i32 @fe_reg_w32(i32 %255, i32 %256)
  %258 = load i32, i32* %20, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %20, align 4
  br label %59

260:                                              ; preds = %86, %59
  %261 = load i32, i32* %20, align 4
  %262 = load i32, i32* %6, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = load i32, i32* %8, align 4
  %266 = load i32, i32* @FE_REG_FE_INT_STATUS, align 4
  %267 = call i32 @fe_reg_w32(i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %264, %260
  %269 = load i32, i32* %20, align 4
  ret i32 %269
}

declare dso_local i32 @NEXT_RX_DESP_IDX(i32) #1

declare dso_local i32 @fe_get_rxd(%struct.fe_rx_dma*, %struct.fe_rx_dma*) #1

declare dso_local i32* @page_frag_alloc(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dma_map_single(i32*, i32*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @skb_free_frag(i32*) #1

declare dso_local %struct.sk_buff* @build_skb(i32*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @RX_DMA_GET_PLEN0(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @RX_DMA_VID(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local i32 @RX_DMA_PLEN0(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @fe_reg_w32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
