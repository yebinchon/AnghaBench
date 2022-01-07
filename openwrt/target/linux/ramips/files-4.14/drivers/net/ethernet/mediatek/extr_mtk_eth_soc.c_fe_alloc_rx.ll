; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_alloc_rx.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_alloc_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32, %struct.fe_rx_ring, %struct.net_device* }
%struct.fe_rx_ring = type { i32, i32, i32, %struct.TYPE_2__*, i32, i64*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@FE_FLAG_RX_2B_OFFSET = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@FE_FLAG_RX_SG_DMA = common dso_local global i32 0, align 4
@RX_DMA_LSO = common dso_local global i32 0, align 4
@FE_REG_RX_BASE_PTR0 = common dso_local global i32 0, align 4
@FE_REG_RX_MAX_CNT0 = common dso_local global i32 0, align 4
@FE_REG_RX_CALC_IDX0 = common dso_local global i32 0, align 4
@FE_PST_DRX_IDX0 = common dso_local global i32 0, align 4
@FE_REG_PDMA_RST_CFG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fe_priv*)* @fe_alloc_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_alloc_rx(%struct.fe_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fe_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %3, align 8
  %9 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %10 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %13 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %12, i32 0, i32 1
  store %struct.fe_rx_ring* %13, %struct.fe_rx_ring** %5, align 8
  %14 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %15 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64* @kcalloc(i32 %16, i32 8, i32 %17)
  %19 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %20 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %19, i32 0, i32 5
  store i64* %18, i64** %20, align 8
  %21 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %22 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %21, i32 0, i32 5
  %23 = load i64*, i64** %22, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %193

26:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %57, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %30 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %27
  %34 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %34, i32 0, i32 7
  %36 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %37 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i64 @page_frag_alloc(i32* %35, i32 %38, i32 %39)
  %41 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %42 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %41, i32 0, i32 5
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %40, i64* %46, align 8
  %47 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %48 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %47, i32 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %33
  br label %193

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %27

60:                                               ; preds = %27
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %64 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %70 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %69, i32 0, i32 1
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = load i32, i32* @__GFP_ZERO, align 4
  %73 = or i32 %71, %72
  %74 = call %struct.TYPE_2__* @dma_alloc_coherent(i32* %62, i32 %68, i32* %70, i32 %73)
  %75 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %76 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %75, i32 0, i32 3
  store %struct.TYPE_2__* %74, %struct.TYPE_2__** %76, align 8
  %77 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %78 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = icmp ne %struct.TYPE_2__* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %60
  br label %193

82:                                               ; preds = %60
  %83 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %84 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FE_FLAG_RX_2B_OFFSET, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @NET_IP_ALIGN, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %90, %89
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %164, %92
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %96 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %167

99:                                               ; preds = %93
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %103 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %102, i32 0, i32 5
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NET_SKB_PAD, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %115 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %118 = call i64 @dma_map_single(i32* %101, i64 %113, i32 %116, i32 %117)
  store i64 %118, i64* %8, align 8
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @dma_mapping_error(i32* %120, i64 %121)
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %99
  br label %193

126:                                              ; preds = %99
  %127 = load i64, i64* %8, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %130 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %129, i32 0, i32 3
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 %128, i32* %135, align 4
  %136 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %137 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @FE_FLAG_RX_SG_DMA, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %126
  %143 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %144 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @RX_DMA_PLEN0(i32 %145)
  %147 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %148 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %147, i32 0, i32 3
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  store i32 %146, i32* %153, align 4
  br label %163

154:                                              ; preds = %126
  %155 = load i32, i32* @RX_DMA_LSO, align 4
  %156 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %157 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %156, i32 0, i32 3
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  store i32 %155, i32* %162, align 4
  br label %163

163:                                              ; preds = %154, %142
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %93

167:                                              ; preds = %93
  %168 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %169 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  %172 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %173 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = call i32 (...) @wmb()
  %175 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %176 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @FE_REG_RX_BASE_PTR0, align 4
  %179 = call i32 @fe_reg_w32(i32 %177, i32 %178)
  %180 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %181 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @FE_REG_RX_MAX_CNT0, align 4
  %184 = call i32 @fe_reg_w32(i32 %182, i32 %183)
  %185 = load %struct.fe_rx_ring*, %struct.fe_rx_ring** %5, align 8
  %186 = getelementptr inbounds %struct.fe_rx_ring, %struct.fe_rx_ring* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @FE_REG_RX_CALC_IDX0, align 4
  %189 = call i32 @fe_reg_w32(i32 %187, i32 %188)
  %190 = load i32, i32* @FE_PST_DRX_IDX0, align 4
  %191 = load i32, i32* @FE_REG_PDMA_RST_CFG, align 4
  %192 = call i32 @fe_reg_w32(i32 %190, i32 %191)
  store i32 0, i32* %2, align 4
  br label %196

193:                                              ; preds = %125, %81, %55, %25
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %193, %167
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @page_frag_alloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @RX_DMA_PLEN0(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @fe_reg_w32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
