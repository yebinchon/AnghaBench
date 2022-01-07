; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_mailbox_aal_rx_handler.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_mailbox_aal_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.rx_descriptor*, i32, i32, %struct.TYPE_7__* }
%struct.rx_descriptor = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, %struct.atm_vcc* }
%struct.atm_vcc = type { %struct.TYPE_9__*, %struct.TYPE_8__, i32 (%struct.atm_vcc*, %struct.sk_buff*)* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.sk_buff = type { i32, i64 }
%struct.rx_inband_trailer = type { i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.atm_vcc* }

@RX_DMA_CH_AAL = common dso_local global i32 0, align 4
@g_atm_priv_data = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [53 x i8] c"loop_count = %u, own = %d, c = %d, aal_desc_pos = %u\00", align 1
@ATM_AAL5 = common dso_local global i64 0, align 8
@MAX_RX_PACKET_PADDING_BYTES = common dso_local global i32 0, align 4
@RX_DMA_CH_AAL_BUF_SIZE = common dso_local global i64 0, align 8
@dma_rx_descriptor_length = common dso_local global i64 0, align 8
@LESS_CACHE_INV_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mailbox_aal_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mailbox_aal_rx_handler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rx_descriptor, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rx_inband_trailer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @RX_DMA_CH_AAL, align 4
  %11 = call %struct.TYPE_11__* @WRX_DMA_CHANNEL_CONFIG(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %1, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %281, %0
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %284

18:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load %struct.rx_descriptor*, %struct.rx_descriptor** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 1), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %20, i64 %21
  %23 = bitcast %struct.rx_descriptor* %2 to i8*
  %24 = bitcast %struct.rx_descriptor* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 40, i1 false)
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = icmp eq i32 %26, 1000
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %41

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i1 [ true, %30 ], [ %38, %34 ]
  br i1 %40, label %19, label %41

41:                                               ; preds = %39, %28
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 0), align 8
  %52 = call i32 @ASSERT(i32 %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47, i32 %50, i64 %51)
  %53 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %3, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 4), align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load %struct.atm_vcc*, %struct.atm_vcc** %59, align 8
  %61 = icmp ne %struct.atm_vcc* %60, null
  br i1 %61, label %62, label %258

62:                                               ; preds = %41
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 4), align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load %struct.atm_vcc*, %struct.atm_vcc** %67, align 8
  store %struct.atm_vcc* %68, %struct.atm_vcc** %4, align 8
  %69 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.sk_buff* @get_skb_rx_pointer(i32 %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %146

75:                                               ; preds = %62
  %76 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %77 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ATM_AAL5, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %128

82:                                               ; preds = %75
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = add i32 %88, %90
  %92 = load i32, i32* @MAX_RX_PACKET_PADDING_BYTES, align 4
  %93 = add i32 %91, %92
  %94 = load i32, i32* @MAX_RX_PACKET_PADDING_BYTES, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = add i32 %86, %96
  %98 = zext i32 %97 to i64
  %99 = inttoptr i64 %98 to %struct.rx_inband_trailer*
  store %struct.rx_inband_trailer* %99, %struct.rx_inband_trailer** %7, align 8
  %100 = load %struct.rx_inband_trailer*, %struct.rx_inband_trailer** %7, align 8
  %101 = getelementptr inbounds %struct.rx_inband_trailer, %struct.rx_inband_trailer* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %82
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 4), align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %104, %82
  %113 = load %struct.rx_inband_trailer*, %struct.rx_inband_trailer** %7, align 8
  %114 = getelementptr inbounds %struct.rx_inband_trailer, %struct.rx_inband_trailer* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 4), align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %117, %112
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 2), align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 2), align 8
  br label %128

128:                                              ; preds = %125, %75
  %129 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %130 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = icmp ne %struct.TYPE_9__* %131, null
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %135 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = call i32 @atomic_inc(i32* %137)
  %139 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %140 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %139, i32 0, i32 0
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = call i32 @atomic_inc(i32* %142)
  br label %144

144:                                              ; preds = %133, %128
  %145 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 6
  store i64 0, i64* %145, align 8
  br label %257

146:                                              ; preds = %62
  %147 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @atm_charge(%struct.atm_vcc* %147, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %234

153:                                              ; preds = %146
  %154 = call %struct.sk_buff* (...) @alloc_skb_rx()
  store %struct.sk_buff* %154, %struct.sk_buff** %6, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = icmp ne %struct.sk_buff* %155, null
  br i1 %156, label %157, label %206

157:                                              ; preds = %153
  %158 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %159 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %160 to i64
  %162 = call i32 @skb_reserve(%struct.sk_buff* %158, i64 %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = zext i32 %165 to i64
  %167 = call i32 @skb_put(%struct.sk_buff* %163, i64 %166)
  %168 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = call %struct.TYPE_12__* @ATM_SKB(%struct.sk_buff* %169)
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  store %struct.atm_vcc* %168, %struct.atm_vcc** %171, align 8
  %172 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %173 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %172, i32 0, i32 2
  %174 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %173, align 8
  %175 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = call i32 %174(%struct.atm_vcc* %175, %struct.sk_buff* %176)
  %178 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %179 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @ATM_AAL5, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %157
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 3), align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 3), align 4
  br label %187

187:                                              ; preds = %184, %157
  %188 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %189 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %188, i32 0, i32 0
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = icmp ne %struct.TYPE_9__* %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %194 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %193, i32 0, i32 0
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = call i32 @atomic_inc(i32* %196)
  br label %198

198:                                              ; preds = %192, %187
  %199 = call i32 (...) @adsl_led_flash()
  %200 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = lshr i32 %203, 2
  %205 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 2
  store i32 %204, i32* %205, align 8
  br label %233

206:                                              ; preds = %153
  %207 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @atm_return(%struct.atm_vcc* %207, i32 %210)
  %212 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %213 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @ATM_AAL5, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %206
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 2), align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 2), align 8
  br label %221

221:                                              ; preds = %218, %206
  %222 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %223 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %222, i32 0, i32 0
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = icmp ne %struct.TYPE_9__* %224, null
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %228 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %227, i32 0, i32 0
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = call i32 @atomic_inc(i32* %230)
  br label %232

232:                                              ; preds = %226, %221
  br label %233

233:                                              ; preds = %232, %198
  br label %256

234:                                              ; preds = %146
  %235 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %236 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @ATM_AAL5, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %234
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 2), align 8
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 2), align 8
  br label %244

244:                                              ; preds = %241, %234
  %245 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %246 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %245, i32 0, i32 0
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %246, align 8
  %248 = icmp ne %struct.TYPE_9__* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %251 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %250, i32 0, i32 0
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = call i32 @atomic_inc(i32* %253)
  br label %255

255:                                              ; preds = %249, %244
  br label %256

256:                                              ; preds = %255, %233
  br label %257

257:                                              ; preds = %256, %144
  br label %261

258:                                              ; preds = %41
  %259 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 2), align 8
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 2), align 8
  br label %261

261:                                              ; preds = %258, %257
  %262 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 3
  store i32 0, i32* %262, align 4
  %263 = load i64, i64* @RX_DMA_CH_AAL_BUF_SIZE, align 8
  %264 = trunc i64 %263 to i32
  %265 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 4
  store i32 %264, i32* %265, align 8
  %266 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 0
  store i32 1, i32* %266, align 8
  %267 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %2, i32 0, i32 5
  store i64 0, i64* %267, align 8
  %268 = load %struct.rx_descriptor*, %struct.rx_descriptor** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 1), align 8
  %269 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 0), align 8
  %270 = getelementptr inbounds %struct.rx_descriptor, %struct.rx_descriptor* %268, i64 %269
  %271 = bitcast %struct.rx_descriptor* %270 to i8*
  %272 = bitcast %struct.rx_descriptor* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %271, i8* align 8 %272, i64 40, i1 false)
  %273 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 0), align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 0), align 8
  %275 = load i64, i64* @dma_rx_descriptor_length, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %261
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @g_atm_priv_data, i32 0, i32 0), align 8
  br label %278

278:                                              ; preds = %277, %261
  %279 = load i32, i32* @RX_DMA_CH_AAL, align 4
  %280 = call i32 @mailbox_signal(i32 %279, i32 0)
  br label %281

281:                                              ; preds = %278
  %282 = load i32, i32* %8, align 4
  %283 = add i32 %282, 1
  store i32 %283, i32* %8, align 4
  br label %14

284:                                              ; preds = %14
  ret void
}

declare dso_local %struct.TYPE_11__* @WRX_DMA_CHANNEL_CONFIG(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ASSERT(i32, i8*, i32, i32, i32, i64) #1

declare dso_local %struct.sk_buff* @get_skb_rx_pointer(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atm_charge(%struct.atm_vcc*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb_rx(...) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_12__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @adsl_led_flash(...) #1

declare dso_local i32 @atm_return(%struct.atm_vcc*, i32) #1

declare dso_local i32 @mailbox_signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
