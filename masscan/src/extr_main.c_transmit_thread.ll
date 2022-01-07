; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main.c_transmit_thread.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main.c_transmit_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ThreadPair = type { i64*, i32, i32, i32, i32, i64, %struct.Adapter*, i32, %struct.Throttler*, %struct.Masscan* }
%struct.Adapter = type { i32 }
%struct.Throttler = type { i32 }
%struct.Masscan = type { i64, i64, i32, i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.BlackRock = type { i32 }
%struct.TemplateSet = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"THREAD: xmit: starting thread #%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"THREAD: xmit: starting main loop: [%llu..%llu]\0A\00", align 1
@is_tx_done = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"THREAD: xmit done, waiting for receive thread to realize this\0A\00", align 1
@is_rx_done = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"THREAD: xmit: stopping thread #%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @transmit_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ThreadPair*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Masscan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.BlackRock, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.Throttler*, align 8
  %15 = alloca %struct.TemplateSet, align 4
  %16 = alloca %struct.Adapter*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = bitcast i8* %37 to %struct.ThreadPair*
  store %struct.ThreadPair* %38, %struct.ThreadPair** %3, align 8
  %39 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %40 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %39, i32 0, i32 9
  %41 = load %struct.Masscan*, %struct.Masscan** %40, align 8
  store %struct.Masscan* %41, %struct.Masscan** %7, align 8
  %42 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %43 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  %45 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %46 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  %50 = add i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %52 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %51, i32 0, i32 6
  %53 = call i64 @rangelist_count(i32* %52)
  store i64 %53, i64* %13, align 8
  %54 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %55 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %54, i32 0, i32 8
  %56 = load %struct.Throttler*, %struct.Throttler** %55, align 8
  store %struct.Throttler* %56, %struct.Throttler** %14, align 8
  %57 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %58 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @templ_copy(i32 %59)
  %61 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %15, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %63 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %62, i32 0, i32 6
  %64 = load %struct.Adapter*, %struct.Adapter** %63, align 8
  store %struct.Adapter* %64, %struct.Adapter** %16, align 8
  store i64 0, i64* %17, align 8
  %65 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %66 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %65, i32 0, i32 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %71 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %69, %72
  store i32 %73, i32* %18, align 4
  %74 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %75 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %77 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %78 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %26, align 8
  %80 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %81 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = call i64* @MALLOC(i32 8)
  store i64* %84, i64** %25, align 8
  %85 = load i64*, i64** %25, align 8
  store i64 0, i64* %85, align 8
  %86 = load i64*, i64** %25, align 8
  %87 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %88 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %87, i32 0, i32 0
  store i64* %86, i64** %88, align 8
  %89 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %90 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %91 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @get_sources(%struct.Masscan* %89, i32 %92, i32* %19, i32* %20, i32* %21, i32* %22)
  %94 = load %struct.Throttler*, %struct.Throttler** %14, align 8
  %95 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %96 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %99 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = sdiv i64 %97, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32 @throttler_start(%struct.Throttler* %94, i32 %103)
  br label %105

105:                                              ; preds = %326, %1
  %106 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %107 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %106, i32 0, i32 6
  %108 = call i64 @rangelist_count(i32* %107)
  %109 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %110 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %109, i32 0, i32 5
  %111 = call i64 @rangelist_count(i32* %110)
  %112 = mul nsw i64 %108, %111
  store i64 %112, i64* %11, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %23, align 8
  %115 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %116 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @blackrock_init(%struct.BlackRock* %12, i64 %113, i64 %114, i32 %117)
  %119 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %120 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %124 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %123, i32 0, i32 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = add nsw i32 %122, %127
  %129 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %130 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %128, %131
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %5, align 8
  %134 = load i64, i64* %11, align 8
  store i64 %134, i64* %6, align 8
  %135 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %136 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %135, i32 0, i32 7
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %105
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* %5, align 8
  %143 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %144 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %142, %146
  %148 = icmp sgt i64 %141, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %140
  %150 = load i64, i64* %5, align 8
  %151 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %152 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %150, %154
  store i64 %155, i64* %6, align 8
  br label %156

156:                                              ; preds = %149, %140, %105
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* %9, align 8
  %159 = mul nsw i64 %157, %158
  %160 = load i64, i64* %6, align 8
  %161 = add nsw i64 %160, %159
  store i64 %161, i64* %6, align 8
  %162 = load i64, i64* %5, align 8
  %163 = load i64, i64* %6, align 8
  %164 = call i32 (i32, i8*, ...) @LOG(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %162, i64 %163)
  %165 = load i64, i64* %5, align 8
  store i64 %165, i64* %4, align 8
  br label %166

166:                                              ; preds = %317, %156
  %167 = load i64, i64* %4, align 8
  %168 = load i64, i64* %6, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %318

170:                                              ; preds = %166
  %171 = load %struct.Throttler*, %struct.Throttler** %14, align 8
  %172 = load i64, i64* %17, align 8
  %173 = call i64 @throttler_next_batch(%struct.Throttler* %171, i64 %172)
  store i64 %173, i64* %27, align 8
  %174 = load %struct.Adapter*, %struct.Adapter** %16, align 8
  %175 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %176 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %179 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @flush_packets(%struct.Adapter* %174, i32 %177, i32 %180, i64* %17, i64* %27)
  br label %182

182:                                              ; preds = %309, %170
  %183 = load i64, i64* %27, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i64, i64* %4, align 8
  %187 = load i64, i64* %6, align 8
  %188 = icmp slt i64 %186, %187
  br label %189

189:                                              ; preds = %185, %182
  %190 = phi i1 [ false, %182 ], [ %188, %185 ]
  br i1 %190, label %191, label %310

191:                                              ; preds = %189
  %192 = load i64, i64* %4, align 8
  %193 = load i32, i32* %10, align 4
  %194 = add i32 %193, -1
  store i32 %194, i32* %10, align 4
  %195 = zext i32 %193 to i64
  %196 = load i64, i64* %9, align 8
  %197 = mul nsw i64 %195, %196
  %198 = add nsw i64 %192, %197
  store i64 %198, i64* %28, align 8
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* %11, align 8
  %201 = icmp sgt i64 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %191
  %203 = load i64, i64* %11, align 8
  %204 = load i64, i64* %28, align 8
  %205 = srem i64 %204, %203
  store i64 %205, i64* %28, align 8
  br label %216

206:                                              ; preds = %191
  br label %207

207:                                              ; preds = %211, %206
  %208 = load i64, i64* %28, align 8
  %209 = load i64, i64* %11, align 8
  %210 = icmp sge i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i64, i64* %11, align 8
  %213 = load i64, i64* %28, align 8
  %214 = sub nsw i64 %213, %212
  store i64 %214, i64* %28, align 8
  br label %207

215:                                              ; preds = %207
  br label %216

216:                                              ; preds = %215, %202
  %217 = load i64, i64* %28, align 8
  %218 = call i64 @blackrock_shuffle(%struct.BlackRock* %12, i64 %217)
  store i64 %218, i64* %28, align 8
  %219 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %220 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %219, i32 0, i32 6
  %221 = load i64, i64* %28, align 8
  %222 = load i64, i64* %13, align 8
  %223 = srem i64 %221, %222
  %224 = call i32 @rangelist_pick(i32* %220, i64 %223)
  store i32 %224, i32* %29, align 4
  %225 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %226 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %225, i32 0, i32 5
  %227 = load i64, i64* %28, align 8
  %228 = load i64, i64* %13, align 8
  %229 = sdiv i64 %227, %228
  %230 = call i32 @rangelist_pick(i32* %226, i64 %229)
  store i32 %230, i32* %30, align 4
  %231 = load i32, i32* %20, align 4
  %232 = icmp ugt i32 %231, 1
  br i1 %232, label %236, label %233

233:                                              ; preds = %216
  %234 = load i32, i32* %22, align 4
  %235 = icmp ugt i32 %234, 1
  br i1 %235, label %236, label %270

236:                                              ; preds = %233, %216
  %237 = load i64, i64* %4, align 8
  %238 = load i64, i64* %24, align 8
  %239 = add nsw i64 %237, %238
  %240 = trunc i64 %239 to i32
  %241 = load i64, i64* %4, align 8
  %242 = load i64, i64* %24, align 8
  %243 = add nsw i64 %241, %242
  %244 = ashr i64 %243, 32
  %245 = trunc i64 %244 to i32
  %246 = load i64, i64* %28, align 8
  %247 = trunc i64 %246 to i32
  %248 = load i64, i64* %28, align 8
  %249 = ashr i64 %248, 32
  %250 = trunc i64 %249 to i32
  %251 = load i64, i64* %26, align 8
  %252 = call i64 @syn_cookie(i32 %240, i32 %245, i32 %247, i32 %250, i64 %251)
  store i64 %252, i64* %34, align 8
  %253 = load i32, i32* %21, align 4
  %254 = zext i32 %253 to i64
  %255 = load i64, i64* %34, align 8
  %256 = load i32, i32* %22, align 4
  %257 = zext i32 %256 to i64
  %258 = and i64 %255, %257
  %259 = add nsw i64 %254, %258
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %32, align 4
  %261 = load i32, i32* %19, align 4
  %262 = zext i32 %261 to i64
  %263 = load i64, i64* %34, align 8
  %264 = ashr i64 %263, 16
  %265 = load i32, i32* %20, align 4
  %266 = zext i32 %265 to i64
  %267 = and i64 %264, %266
  %268 = add nsw i64 %262, %267
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %31, align 4
  br label %273

270:                                              ; preds = %233
  %271 = load i32, i32* %19, align 4
  store i32 %271, i32* %31, align 4
  %272 = load i32, i32* %21, align 4
  store i32 %272, i32* %32, align 4
  br label %273

273:                                              ; preds = %270, %236
  %274 = load i32, i32* %29, align 4
  %275 = load i32, i32* %30, align 4
  %276 = load i32, i32* %31, align 4
  %277 = load i32, i32* %32, align 4
  %278 = load i64, i64* %26, align 8
  %279 = call i64 @syn_cookie(i32 %274, i32 %275, i32 %276, i32 %277, i64 %278)
  store i64 %279, i64* %33, align 8
  %280 = load %struct.Adapter*, %struct.Adapter** %16, align 8
  %281 = load i32, i32* %29, align 4
  %282 = load i32, i32* %30, align 4
  %283 = load i32, i32* %31, align 4
  %284 = load i32, i32* %32, align 4
  %285 = load i64, i64* %33, align 8
  %286 = trunc i64 %285 to i32
  %287 = load i64, i64* %27, align 8
  %288 = icmp ne i64 %287, 0
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i32
  %291 = call i32 @rawsock_send_probe(%struct.Adapter* %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %286, i32 %290, %struct.TemplateSet* %15)
  %292 = load i64, i64* %27, align 8
  %293 = add nsw i64 %292, -1
  store i64 %293, i64* %27, align 8
  %294 = load i64, i64* %17, align 8
  %295 = add nsw i64 %294, 1
  store i64 %295, i64* %17, align 8
  %296 = load i64*, i64** %25, align 8
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %297, 1
  store i64 %298, i64* %296, align 8
  %299 = load i32, i32* %10, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %309

301:                                              ; preds = %273
  %302 = load i32, i32* %18, align 4
  %303 = zext i32 %302 to i64
  %304 = load i64, i64* %4, align 8
  %305 = add nsw i64 %304, %303
  store i64 %305, i64* %4, align 8
  %306 = load i64, i64* %8, align 8
  %307 = trunc i64 %306 to i32
  %308 = add i32 %307, 1
  store i32 %308, i32* %10, align 4
  br label %309

309:                                              ; preds = %301, %273
  br label %182

310:                                              ; preds = %189
  %311 = load i64, i64* %4, align 8
  %312 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %313 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %312, i32 0, i32 5
  store i64 %311, i64* %313, align 8
  %314 = load i64, i64* @is_tx_done, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %310
  br label %318

317:                                              ; preds = %310
  br label %166

318:                                              ; preds = %316, %166
  %319 = load %struct.Masscan*, %struct.Masscan** %7, align 8
  %320 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %319, i32 0, i32 4
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %318
  %324 = load i64, i64* @is_tx_done, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %331, label %326

326:                                              ; preds = %323
  %327 = load i64, i64* %23, align 8
  %328 = add nsw i64 %327, 1
  store i64 %328, i64* %23, align 8
  %329 = load i64, i64* %24, align 8
  %330 = add nsw i64 %329, 1
  store i64 %330, i64* %24, align 8
  br label %105

331:                                              ; preds = %323, %318
  %332 = load %struct.Adapter*, %struct.Adapter** %16, align 8
  %333 = call i32 @rawsock_flush(%struct.Adapter* %332)
  %334 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %335

335:                                              ; preds = %361, %331
  %336 = load i32, i32* @is_rx_done, align 4
  %337 = icmp ne i32 %336, 0
  %338 = xor i1 %337, true
  br i1 %338, label %339, label %362

339:                                              ; preds = %335
  store i32 0, i32* %35, align 4
  br label %340

340:                                              ; preds = %358, %339
  %341 = load i32, i32* %35, align 4
  %342 = icmp ult i32 %341, 1000
  br i1 %342, label %343, label %361

343:                                              ; preds = %340
  %344 = load %struct.Throttler*, %struct.Throttler** %14, align 8
  %345 = load i64, i64* %17, align 8
  %346 = call i64 @throttler_next_batch(%struct.Throttler* %344, i64 %345)
  store i64 %346, i64* %36, align 8
  %347 = load %struct.Adapter*, %struct.Adapter** %16, align 8
  %348 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %349 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %352 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @flush_packets(%struct.Adapter* %347, i32 %350, i32 %353, i64* %17, i64* %36)
  %355 = load %struct.Adapter*, %struct.Adapter** %16, align 8
  %356 = call i32 @rawsock_flush(%struct.Adapter* %355)
  %357 = call i32 @pixie_usleep(i32 100)
  br label %358

358:                                              ; preds = %343
  %359 = load i32, i32* %35, align 4
  %360 = add i32 %359, 1
  store i32 %360, i32* %35, align 4
  br label %340

361:                                              ; preds = %340
  br label %335

362:                                              ; preds = %335
  %363 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %364 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %363, i32 0, i32 1
  store i32 1, i32* %364, align 8
  %365 = load %struct.ThreadPair*, %struct.ThreadPair** %3, align 8
  %366 = getelementptr inbounds %struct.ThreadPair, %struct.ThreadPair* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %367)
  ret void
}

declare dso_local i64 @rangelist_count(i32*) #1

declare dso_local i32 @templ_copy(i32) #1

declare dso_local i32 @LOG(i32, i8*, ...) #1

declare dso_local i64* @MALLOC(i32) #1

declare dso_local i32 @get_sources(%struct.Masscan*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @throttler_start(%struct.Throttler*, i32) #1

declare dso_local i32 @blackrock_init(%struct.BlackRock*, i64, i64, i32) #1

declare dso_local i64 @throttler_next_batch(%struct.Throttler*, i64) #1

declare dso_local i32 @flush_packets(%struct.Adapter*, i32, i32, i64*, i64*) #1

declare dso_local i64 @blackrock_shuffle(%struct.BlackRock*, i64) #1

declare dso_local i32 @rangelist_pick(i32*, i64) #1

declare dso_local i64 @syn_cookie(i32, i32, i32, i32, i64) #1

declare dso_local i32 @rawsock_send_probe(%struct.Adapter*, i32, i32, i32, i32, i32, i32, %struct.TemplateSet*) #1

declare dso_local i32 @rawsock_flush(%struct.Adapter*) #1

declare dso_local i32 @pixie_usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
