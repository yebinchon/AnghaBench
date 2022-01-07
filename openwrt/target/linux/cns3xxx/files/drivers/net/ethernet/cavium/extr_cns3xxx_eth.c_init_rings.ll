; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_init_rings.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw = type { %struct.TYPE_2__*, i32, %struct._tx_ring, %struct._rx_ring }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._tx_ring = type { i32, i64*, %struct.tx_desc* }
%struct.tx_desc = type { i32, i32, i32, i32, i32, i32 }
%struct._rx_ring = type { i32, i32*, i8**, %struct.tx_desc* }
%struct.rx_desc = type { i32, i32, i32, i32, i32, i32 }

@TS_SUSPEND = common dso_local global i32 0, align 4
@FS_SUSPEND = common dso_local global i32 0, align 4
@QUEUE_THRESHOLD = common dso_local global i32 0, align 4
@CLR_FS_STATE = common dso_local global i32 0, align 4
@RX_POOL_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RX_DESCS = common dso_local global i32 0, align 4
@RX_SEGMENT_ALLOC_SIZE = common dso_local global i32 0, align 4
@RX_SEGMENT_MRU = common dso_local global i32 0, align 4
@SKB_HEAD_ALIGN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TX_POOL_ALLOC_SIZE = common dso_local global i32 0, align 4
@TX_DESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw*)* @init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rings(%struct.sw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._rx_ring*, align 8
  %6 = alloca %struct._tx_ring*, align 8
  %7 = alloca %struct.rx_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tx_desc*, align 8
  store %struct.sw* %0, %struct.sw** %3, align 8
  %10 = load %struct.sw*, %struct.sw** %3, align 8
  %11 = getelementptr inbounds %struct.sw, %struct.sw* %10, i32 0, i32 3
  store %struct._rx_ring* %11, %struct._rx_ring** %5, align 8
  %12 = load %struct.sw*, %struct.sw** %3, align 8
  %13 = getelementptr inbounds %struct.sw, %struct.sw* %12, i32 0, i32 2
  store %struct._tx_ring* %13, %struct._tx_ring** %6, align 8
  %14 = load %struct.sw*, %struct.sw** %3, align 8
  %15 = getelementptr inbounds %struct.sw, %struct.sw* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  %18 = call i32 @__raw_writel(i32 0, i32* %17)
  %19 = load i32, i32* @TS_SUSPEND, align 4
  %20 = load i32, i32* @FS_SUSPEND, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.sw*, %struct.sw** %3, align 8
  %23 = getelementptr inbounds %struct.sw, %struct.sw* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  %26 = call i32 @__raw_writel(i32 %21, i32* %25)
  %27 = load i32, i32* @QUEUE_THRESHOLD, align 4
  %28 = load %struct.sw*, %struct.sw** %3, align 8
  %29 = getelementptr inbounds %struct.sw, %struct.sw* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = call i32 @__raw_writel(i32 %27, i32* %31)
  %33 = load i32, i32* @CLR_FS_STATE, align 4
  %34 = load i32, i32* @QUEUE_THRESHOLD, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.sw*, %struct.sw** %3, align 8
  %37 = getelementptr inbounds %struct.sw, %struct.sw* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = call i32 @__raw_writel(i32 %35, i32* %39)
  %41 = load i32, i32* @QUEUE_THRESHOLD, align 4
  %42 = load %struct.sw*, %struct.sw** %3, align 8
  %43 = getelementptr inbounds %struct.sw, %struct.sw* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = call i32 @__raw_writel(i32 %41, i32* %45)
  %47 = load %struct.sw*, %struct.sw** %3, align 8
  %48 = getelementptr inbounds %struct.sw, %struct.sw* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RX_POOL_ALLOC_SIZE, align 4
  %51 = load %struct._rx_ring*, %struct._rx_ring** %5, align 8
  %52 = getelementptr inbounds %struct._rx_ring, %struct._rx_ring* %51, i32 0, i32 0
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @dmam_alloc_coherent(i32 %49, i32 %50, i32* %52, i32 %53)
  %55 = bitcast i8* %54 to %struct.tx_desc*
  %56 = load %struct._rx_ring*, %struct._rx_ring** %5, align 8
  %57 = getelementptr inbounds %struct._rx_ring, %struct._rx_ring* %56, i32 0, i32 3
  store %struct.tx_desc* %55, %struct.tx_desc** %57, align 8
  %58 = load %struct._rx_ring*, %struct._rx_ring** %5, align 8
  %59 = getelementptr inbounds %struct._rx_ring, %struct._rx_ring* %58, i32 0, i32 3
  %60 = load %struct.tx_desc*, %struct.tx_desc** %59, align 8
  %61 = icmp ne %struct.tx_desc* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %1
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %239

65:                                               ; preds = %1
  %66 = load %struct._rx_ring*, %struct._rx_ring** %5, align 8
  %67 = getelementptr inbounds %struct._rx_ring, %struct._rx_ring* %66, i32 0, i32 3
  %68 = load %struct.tx_desc*, %struct.tx_desc** %67, align 8
  %69 = load i32, i32* @RX_POOL_ALLOC_SIZE, align 4
  %70 = call i32 @memset(%struct.tx_desc* %68, i32 0, i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %148, %65
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @RX_DESCS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %151

75:                                               ; preds = %71
  %76 = load %struct._rx_ring*, %struct._rx_ring** %5, align 8
  %77 = getelementptr inbounds %struct._rx_ring, %struct._rx_ring* %76, i32 0, i32 3
  %78 = load %struct.tx_desc*, %struct.tx_desc** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %78, i64 %80
  %82 = bitcast %struct.tx_desc* %81 to %struct.rx_desc*
  store %struct.rx_desc* %82, %struct.rx_desc** %7, align 8
  %83 = load i32, i32* @RX_SEGMENT_ALLOC_SIZE, align 4
  %84 = call i8* @netdev_alloc_frag(i32 %83)
  store i8* %84, i8** %8, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %75
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %239

90:                                               ; preds = %75
  %91 = load i32, i32* @RX_SEGMENT_MRU, align 4
  %92 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %93 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @RX_DESCS, align 4
  %96 = sub nsw i32 %95, 1
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %100 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %90
  %102 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %103 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %105 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %104, i32 0, i32 2
  store i32 1, i32* %105, align 4
  %106 = load %struct.sw*, %struct.sw** %3, align 8
  %107 = getelementptr inbounds %struct.sw, %struct.sw* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* @SKB_HEAD_ALIGN, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr i8, i8* %109, i64 %111
  %113 = load i32, i32* @RX_SEGMENT_MRU, align 4
  %114 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %115 = call i32 @dma_map_single(i32 %108, i8* %112, i32 %113, i32 %114)
  %116 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %117 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  %118 = load %struct.sw*, %struct.sw** %3, align 8
  %119 = getelementptr inbounds %struct.sw, %struct.sw* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %122 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @dma_mapping_error(i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %101
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %239

129:                                              ; preds = %101
  %130 = load i8*, i8** %8, align 8
  %131 = load %struct._rx_ring*, %struct._rx_ring** %5, align 8
  %132 = getelementptr inbounds %struct._rx_ring, %struct._rx_ring* %131, i32 0, i32 2
  %133 = load i8**, i8*** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  store i8* %130, i8** %136, align 8
  %137 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %138 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct._rx_ring*, %struct._rx_ring** %5, align 8
  %141 = getelementptr inbounds %struct._rx_ring, %struct._rx_ring* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  %146 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %147 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %146, i32 0, i32 3
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %129
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %71

151:                                              ; preds = %71
  %152 = load %struct._rx_ring*, %struct._rx_ring** %5, align 8
  %153 = getelementptr inbounds %struct._rx_ring, %struct._rx_ring* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.sw*, %struct.sw** %3, align 8
  %156 = getelementptr inbounds %struct.sw, %struct.sw* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  %159 = call i32 @__raw_writel(i32 %154, i32* %158)
  %160 = load %struct._rx_ring*, %struct._rx_ring** %5, align 8
  %161 = getelementptr inbounds %struct._rx_ring, %struct._rx_ring* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.sw*, %struct.sw** %3, align 8
  %164 = getelementptr inbounds %struct.sw, %struct.sw* %163, i32 0, i32 0
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 2
  %167 = call i32 @__raw_writel(i32 %162, i32* %166)
  %168 = load %struct.sw*, %struct.sw** %3, align 8
  %169 = getelementptr inbounds %struct.sw, %struct.sw* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @TX_POOL_ALLOC_SIZE, align 4
  %172 = load %struct._tx_ring*, %struct._tx_ring** %6, align 8
  %173 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %172, i32 0, i32 0
  %174 = load i32, i32* @GFP_KERNEL, align 4
  %175 = call i8* @dmam_alloc_coherent(i32 %170, i32 %171, i32* %173, i32 %174)
  %176 = bitcast i8* %175 to %struct.tx_desc*
  %177 = load %struct._tx_ring*, %struct._tx_ring** %6, align 8
  %178 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %177, i32 0, i32 2
  store %struct.tx_desc* %176, %struct.tx_desc** %178, align 8
  %179 = load %struct._tx_ring*, %struct._tx_ring** %6, align 8
  %180 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %179, i32 0, i32 2
  %181 = load %struct.tx_desc*, %struct.tx_desc** %180, align 8
  %182 = icmp ne %struct.tx_desc* %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %151
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %2, align 4
  br label %239

186:                                              ; preds = %151
  %187 = load %struct._tx_ring*, %struct._tx_ring** %6, align 8
  %188 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %187, i32 0, i32 2
  %189 = load %struct.tx_desc*, %struct.tx_desc** %188, align 8
  %190 = load i32, i32* @TX_POOL_ALLOC_SIZE, align 4
  %191 = call i32 @memset(%struct.tx_desc* %189, i32 0, i32 %190)
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %219, %186
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* @TX_DESCS, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %222

196:                                              ; preds = %192
  %197 = load %struct._tx_ring*, %struct._tx_ring** %6, align 8
  %198 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %197, i32 0, i32 2
  %199 = load %struct.tx_desc*, %struct.tx_desc** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %199, i64 %201
  store %struct.tx_desc* %202, %struct.tx_desc** %9, align 8
  %203 = load %struct._tx_ring*, %struct._tx_ring** %6, align 8
  %204 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %203, i32 0, i32 1
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  store i64 0, i64* %208, align 8
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @TX_DESCS, align 4
  %211 = sub nsw i32 %210, 1
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %196
  %214 = load %struct.tx_desc*, %struct.tx_desc** %9, align 8
  %215 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %214, i32 0, i32 0
  store i32 1, i32* %215, align 4
  br label %216

216:                                              ; preds = %213, %196
  %217 = load %struct.tx_desc*, %struct.tx_desc** %9, align 8
  %218 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %217, i32 0, i32 3
  store i32 1, i32* %218, align 4
  br label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %4, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %4, align 4
  br label %192

222:                                              ; preds = %192
  %223 = load %struct._tx_ring*, %struct._tx_ring** %6, align 8
  %224 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.sw*, %struct.sw** %3, align 8
  %227 = getelementptr inbounds %struct.sw, %struct.sw* %226, i32 0, i32 0
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  %230 = call i32 @__raw_writel(i32 %225, i32* %229)
  %231 = load %struct._tx_ring*, %struct._tx_ring** %6, align 8
  %232 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.sw*, %struct.sw** %3, align 8
  %235 = getelementptr inbounds %struct.sw, %struct.sw* %234, i32 0, i32 0
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = call i32 @__raw_writel(i32 %233, i32* %237)
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %222, %183, %126, %87, %62
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i8* @dmam_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.tx_desc*, i32, i32) #1

declare dso_local i8* @netdev_alloc_frag(i32) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
