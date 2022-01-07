; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_fill_arc.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_fill_arc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_color = type { i32 }
%struct.nk_vec2i = type { i16, i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, i16, i16, i16, i16, i16, i32)* @nk_rawfb_fill_arc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_fill_arc(%struct.rawfb_context* %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5, i32 %6) #0 {
  %8 = alloca %struct.nk_color, align 4
  %9 = alloca %struct.rawfb_context*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [3 x %struct.nk_vec2i], align 2
  %23 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  store i32 %6, i32* %23, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %9, align 8
  store i16 %1, i16* %10, align 2
  store i16 %2, i16* %11, align 2
  store i16 %3, i16* %12, align 2
  store i16 %4, i16* %13, align 2
  store i16 %5, i16* %14, align 2
  %24 = load i16, i16* %12, align 2
  %25 = sext i16 %24 to i32
  %26 = load i16, i16* %12, align 2
  %27 = sext i16 %26 to i32
  %28 = mul nsw i32 %25, %27
  %29 = sdiv i32 %28, 4
  store i32 %29, i32* %15, align 4
  %30 = load i16, i16* %13, align 2
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* %13, align 2
  %33 = sext i16 %32 to i32
  %34 = mul nsw i32 %31, %33
  %35 = sdiv i32 %34, 4
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %15, align 4
  %37 = mul nsw i32 4, %36
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %16, align 4
  %39 = mul nsw i32 4, %38
  store i32 %39, i32* %18, align 4
  %40 = load i16, i16* %12, align 2
  %41 = sext i16 %40 to i32
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %47, label %43

43:                                               ; preds = %7
  %44 = load i16, i16* %13, align 2
  %45 = sext i16 %44 to i32
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %7
  br label %361

48:                                               ; preds = %43
  %49 = load i16, i16* %14, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i16, i16* %14, align 2
  %54 = sext i16 %53 to i32
  %55 = icmp ne i32 %54, 90
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i16, i16* %14, align 2
  %58 = sext i16 %57 to i32
  %59 = icmp ne i32 %58, 180
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i16, i16* %14, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp ne i32 %62, 270
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %361

65:                                               ; preds = %60, %56, %52, %48
  %66 = load i16, i16* %13, align 2
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 %67, 1
  %69 = sdiv i32 %68, 2
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %13, align 2
  %71 = load i16, i16* %12, align 2
  %72 = sext i16 %71 to i32
  %73 = add nsw i32 %72, 1
  %74 = sdiv i32 %73, 2
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %12, align 2
  %76 = load i16, i16* %12, align 2
  %77 = sext i16 %76 to i32
  %78 = load i16, i16* %10, align 2
  %79 = sext i16 %78 to i32
  %80 = add nsw i32 %79, %77
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %10, align 2
  %82 = load i16, i16* %13, align 2
  %83 = sext i16 %82 to i32
  %84 = load i16, i16* %11, align 2
  %85 = sext i16 %84 to i32
  %86 = add nsw i32 %85, %83
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %11, align 2
  %88 = load i16, i16* %10, align 2
  %89 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 0
  %90 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %89, i32 0, i32 0
  store i16 %88, i16* %90, align 2
  %91 = load i16, i16* %11, align 2
  %92 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 0
  %93 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %92, i32 0, i32 1
  store i16 %91, i16* %93, align 2
  %94 = load i16, i16* %10, align 2
  %95 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 2
  %96 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %95, i32 0, i32 0
  store i16 %94, i16* %96, align 2
  %97 = load i16, i16* %11, align 2
  %98 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 2
  %99 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %98, i32 0, i32 1
  store i16 %97, i16* %99, align 2
  store i32 0, i32* %19, align 4
  %100 = load i16, i16* %13, align 2
  %101 = sext i16 %100 to i32
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* %16, align 4
  %103 = mul nsw i32 2, %102
  %104 = load i32, i32* %15, align 4
  %105 = load i16, i16* %13, align 2
  %106 = sext i16 %105 to i32
  %107 = mul nsw i32 2, %106
  %108 = sub nsw i32 1, %107
  %109 = mul nsw i32 %104, %108
  %110 = add nsw i32 %103, %109
  store i32 %110, i32* %21, align 4
  br label %111

111:                                              ; preds = %227, %65
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %19, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %20, align 4
  %117 = mul nsw i32 %115, %116
  %118 = icmp sle i32 %114, %117
  br i1 %118, label %119, label %230

119:                                              ; preds = %111
  %120 = load i16, i16* %14, align 2
  %121 = sext i16 %120 to i32
  %122 = icmp eq i32 %121, 180
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load i16, i16* %10, align 2
  %125 = sext i16 %124 to i32
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %125, %126
  %128 = trunc i32 %127 to i16
  %129 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %130 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %129, i32 0, i32 0
  store i16 %128, i16* %130, align 2
  %131 = load i16, i16* %11, align 2
  %132 = sext i16 %131 to i32
  %133 = load i32, i32* %20, align 4
  %134 = add nsw i32 %132, %133
  %135 = trunc i32 %134 to i16
  %136 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %137 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %136, i32 0, i32 1
  store i16 %135, i16* %137, align 2
  br label %198

138:                                              ; preds = %119
  %139 = load i16, i16* %14, align 2
  %140 = sext i16 %139 to i32
  %141 = icmp eq i32 %140, 270
  br i1 %141, label %142, label %157

142:                                              ; preds = %138
  %143 = load i16, i16* %10, align 2
  %144 = sext i16 %143 to i32
  %145 = load i32, i32* %19, align 4
  %146 = sub nsw i32 %144, %145
  %147 = trunc i32 %146 to i16
  %148 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %149 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %148, i32 0, i32 0
  store i16 %147, i16* %149, align 2
  %150 = load i16, i16* %11, align 2
  %151 = sext i16 %150 to i32
  %152 = load i32, i32* %20, align 4
  %153 = add nsw i32 %151, %152
  %154 = trunc i32 %153 to i16
  %155 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %156 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %155, i32 0, i32 1
  store i16 %154, i16* %156, align 2
  br label %197

157:                                              ; preds = %138
  %158 = load i16, i16* %14, align 2
  %159 = sext i16 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load i16, i16* %10, align 2
  %163 = sext i16 %162 to i32
  %164 = load i32, i32* %19, align 4
  %165 = add nsw i32 %163, %164
  %166 = trunc i32 %165 to i16
  %167 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %168 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %167, i32 0, i32 0
  store i16 %166, i16* %168, align 2
  %169 = load i16, i16* %11, align 2
  %170 = sext i16 %169 to i32
  %171 = load i32, i32* %20, align 4
  %172 = sub nsw i32 %170, %171
  %173 = trunc i32 %172 to i16
  %174 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %175 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %174, i32 0, i32 1
  store i16 %173, i16* %175, align 2
  br label %196

176:                                              ; preds = %157
  %177 = load i16, i16* %14, align 2
  %178 = sext i16 %177 to i32
  %179 = icmp eq i32 %178, 90
  br i1 %179, label %180, label %195

180:                                              ; preds = %176
  %181 = load i16, i16* %10, align 2
  %182 = sext i16 %181 to i32
  %183 = load i32, i32* %19, align 4
  %184 = sub nsw i32 %182, %183
  %185 = trunc i32 %184 to i16
  %186 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %187 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %186, i32 0, i32 0
  store i16 %185, i16* %187, align 2
  %188 = load i16, i16* %11, align 2
  %189 = sext i16 %188 to i32
  %190 = load i32, i32* %20, align 4
  %191 = sub nsw i32 %189, %190
  %192 = trunc i32 %191 to i16
  %193 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %194 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %193, i32 0, i32 1
  store i16 %192, i16* %194, align 2
  br label %195

195:                                              ; preds = %180, %176
  br label %196

196:                                              ; preds = %195, %161
  br label %197

197:                                              ; preds = %196, %142
  br label %198

198:                                              ; preds = %197, %123
  %199 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %200 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 0
  %201 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @nk_rawfb_fill_polygon(%struct.rawfb_context* %199, %struct.nk_vec2i* %200, i32 3, i32 %202)
  %204 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 2
  %205 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %206 = bitcast %struct.nk_vec2i* %204 to i8*
  %207 = bitcast %struct.nk_vec2i* %205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %206, i8* align 2 %207, i64 4, i1 false)
  %208 = load i32, i32* %21, align 4
  %209 = icmp sge i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %198
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* %20, align 4
  %213 = sub nsw i32 1, %212
  %214 = mul nsw i32 %211, %213
  %215 = load i32, i32* %21, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %21, align 4
  %217 = load i32, i32* %20, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %20, align 4
  br label %219

219:                                              ; preds = %210, %198
  %220 = load i32, i32* %16, align 4
  %221 = load i32, i32* %19, align 4
  %222 = mul nsw i32 4, %221
  %223 = add nsw i32 %222, 6
  %224 = mul nsw i32 %220, %223
  %225 = load i32, i32* %21, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %21, align 4
  br label %227

227:                                              ; preds = %219
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  br label %111

230:                                              ; preds = %111
  %231 = load i16, i16* %12, align 2
  %232 = sext i16 %231 to i32
  store i32 %232, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %233 = load i32, i32* %15, align 4
  %234 = mul nsw i32 2, %233
  %235 = load i32, i32* %16, align 4
  %236 = load i16, i16* %12, align 2
  %237 = sext i16 %236 to i32
  %238 = mul nsw i32 2, %237
  %239 = sub nsw i32 1, %238
  %240 = mul nsw i32 %235, %239
  %241 = add nsw i32 %234, %240
  store i32 %241, i32* %21, align 4
  br label %242

242:                                              ; preds = %358, %230
  %243 = load i32, i32* %15, align 4
  %244 = load i32, i32* %20, align 4
  %245 = mul nsw i32 %243, %244
  %246 = load i32, i32* %16, align 4
  %247 = load i32, i32* %19, align 4
  %248 = mul nsw i32 %246, %247
  %249 = icmp sle i32 %245, %248
  br i1 %249, label %250, label %361

250:                                              ; preds = %242
  %251 = load i16, i16* %14, align 2
  %252 = sext i16 %251 to i32
  %253 = icmp eq i32 %252, 180
  br i1 %253, label %254, label %269

254:                                              ; preds = %250
  %255 = load i16, i16* %10, align 2
  %256 = sext i16 %255 to i32
  %257 = load i32, i32* %19, align 4
  %258 = add nsw i32 %256, %257
  %259 = trunc i32 %258 to i16
  %260 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %261 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %260, i32 0, i32 0
  store i16 %259, i16* %261, align 2
  %262 = load i16, i16* %11, align 2
  %263 = sext i16 %262 to i32
  %264 = load i32, i32* %20, align 4
  %265 = add nsw i32 %263, %264
  %266 = trunc i32 %265 to i16
  %267 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %268 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %267, i32 0, i32 1
  store i16 %266, i16* %268, align 2
  br label %329

269:                                              ; preds = %250
  %270 = load i16, i16* %14, align 2
  %271 = sext i16 %270 to i32
  %272 = icmp eq i32 %271, 270
  br i1 %272, label %273, label %288

273:                                              ; preds = %269
  %274 = load i16, i16* %10, align 2
  %275 = sext i16 %274 to i32
  %276 = load i32, i32* %19, align 4
  %277 = sub nsw i32 %275, %276
  %278 = trunc i32 %277 to i16
  %279 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %280 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %279, i32 0, i32 0
  store i16 %278, i16* %280, align 2
  %281 = load i16, i16* %11, align 2
  %282 = sext i16 %281 to i32
  %283 = load i32, i32* %20, align 4
  %284 = add nsw i32 %282, %283
  %285 = trunc i32 %284 to i16
  %286 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %287 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %286, i32 0, i32 1
  store i16 %285, i16* %287, align 2
  br label %328

288:                                              ; preds = %269
  %289 = load i16, i16* %14, align 2
  %290 = sext i16 %289 to i32
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %307

292:                                              ; preds = %288
  %293 = load i16, i16* %10, align 2
  %294 = sext i16 %293 to i32
  %295 = load i32, i32* %19, align 4
  %296 = add nsw i32 %294, %295
  %297 = trunc i32 %296 to i16
  %298 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %299 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %298, i32 0, i32 0
  store i16 %297, i16* %299, align 2
  %300 = load i16, i16* %11, align 2
  %301 = sext i16 %300 to i32
  %302 = load i32, i32* %20, align 4
  %303 = sub nsw i32 %301, %302
  %304 = trunc i32 %303 to i16
  %305 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %306 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %305, i32 0, i32 1
  store i16 %304, i16* %306, align 2
  br label %327

307:                                              ; preds = %288
  %308 = load i16, i16* %14, align 2
  %309 = sext i16 %308 to i32
  %310 = icmp eq i32 %309, 90
  br i1 %310, label %311, label %326

311:                                              ; preds = %307
  %312 = load i16, i16* %10, align 2
  %313 = sext i16 %312 to i32
  %314 = load i32, i32* %19, align 4
  %315 = sub nsw i32 %313, %314
  %316 = trunc i32 %315 to i16
  %317 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %318 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %317, i32 0, i32 0
  store i16 %316, i16* %318, align 2
  %319 = load i16, i16* %11, align 2
  %320 = sext i16 %319 to i32
  %321 = load i32, i32* %20, align 4
  %322 = sub nsw i32 %320, %321
  %323 = trunc i32 %322 to i16
  %324 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %325 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %324, i32 0, i32 1
  store i16 %323, i16* %325, align 2
  br label %326

326:                                              ; preds = %311, %307
  br label %327

327:                                              ; preds = %326, %292
  br label %328

328:                                              ; preds = %327, %273
  br label %329

329:                                              ; preds = %328, %254
  %330 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %331 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 0
  %332 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @nk_rawfb_fill_polygon(%struct.rawfb_context* %330, %struct.nk_vec2i* %331, i32 3, i32 %333)
  %335 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 2
  %336 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %22, i64 0, i64 1
  %337 = bitcast %struct.nk_vec2i* %335 to i8*
  %338 = bitcast %struct.nk_vec2i* %336 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %337, i8* align 2 %338, i64 4, i1 false)
  %339 = load i32, i32* %21, align 4
  %340 = icmp sge i32 %339, 0
  br i1 %340, label %341, label %350

341:                                              ; preds = %329
  %342 = load i32, i32* %18, align 4
  %343 = load i32, i32* %19, align 4
  %344 = sub nsw i32 1, %343
  %345 = mul nsw i32 %342, %344
  %346 = load i32, i32* %21, align 4
  %347 = add nsw i32 %346, %345
  store i32 %347, i32* %21, align 4
  %348 = load i32, i32* %19, align 4
  %349 = add nsw i32 %348, -1
  store i32 %349, i32* %19, align 4
  br label %350

350:                                              ; preds = %341, %329
  %351 = load i32, i32* %15, align 4
  %352 = load i32, i32* %20, align 4
  %353 = mul nsw i32 4, %352
  %354 = add nsw i32 %353, 6
  %355 = mul nsw i32 %351, %354
  %356 = load i32, i32* %21, align 4
  %357 = add nsw i32 %356, %355
  store i32 %357, i32* %21, align 4
  br label %358

358:                                              ; preds = %350
  %359 = load i32, i32* %20, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %20, align 4
  br label %242

361:                                              ; preds = %47, %64, %242
  ret void
}

declare dso_local i32 @nk_rawfb_fill_polygon(%struct.rawfb_context*, %struct.nk_vec2i*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
