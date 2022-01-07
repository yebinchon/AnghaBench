; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mppc.c_mppc_expand.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mppc.c_mppc_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@RDP_MPPC_BIG = common dso_local global i32 0, align 4
@True = common dso_local global i64 0, align 8
@False = common dso_local global i64 0, align 8
@g_mppc_dict = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RDP_MPPC_COMPRESSED = common dso_local global i32 0, align 4
@RDP_MPPC_RESET = common dso_local global i32 0, align 4
@RDP_MPPC_FLUSH = common dso_local global i32 0, align 4
@RDP_MPPC_DICT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mppc_expand(i32* %0, i64 %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %15, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @RDP_MPPC_BIG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* @True, align 8
  br label %31

29:                                               ; preds = %5
  %30 = load i64, i64* @False, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i64 [ %28, %27 ], [ %30, %29 ]
  store i64 %32, i64* %21, align 8
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mppc_dict, i32 0, i32 0), align 8
  store i32* %33, i32** %22, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @RDP_MPPC_COMPRESSED, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i64*, i64** %10, align 8
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64*, i64** %11, align 8
  store i64 %40, i64* %41, align 8
  store i32 0, i32* %6, align 4
  br label %642

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @RDP_MPPC_RESET, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mppc_dict, i32 0, i32 1), align 8
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @RDP_MPPC_FLUSH, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32*, i32** %22, align 8
  %55 = load i32, i32* @RDP_MPPC_DICT_SIZE, align 4
  %56 = call i32 @memset(i32* %54, i32 0, i32 %55)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mppc_dict, i32 0, i32 1), align 8
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i64*, i64** %10, align 8
  store i64 0, i64* %58, align 8
  %59 = load i64*, i64** %11, align 8
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mppc_dict, i32 0, i32 1), align 8
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64*, i64** %10, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %642

69:                                               ; preds = %57
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %631, %69
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %632

81:                                               ; preds = %76
  %82 = load i32*, i32** %7, align 8
  %83 = load i64, i64* %15, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %15, align 8
  %85 = getelementptr inbounds i32, i32* %82, i64 %83
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 24
  store i32 %87, i32* %14, align 4
  store i32 8, i32* %13, align 4
  br label %88

88:                                               ; preds = %81, %73
  %89 = load i32, i32* %14, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %136

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp sge i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 -1, i32* %6, align 4
  br label %642

102:                                              ; preds = %98
  br label %632

103:                                              ; preds = %94
  %104 = load i32*, i32** %7, align 8
  %105 = load i64, i64* %15, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %15, align 8
  %107 = getelementptr inbounds i32, i32* %104, i64 %105
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 255
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 24, %110
  %112 = shl i32 %109, %111
  %113 = load i32, i32* %14, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 8
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %103, %91
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @RDP_MPPC_DICT_SIZE, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 -1, i32* %6, align 4
  br label %642

122:                                              ; preds = %117
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = ashr i64 %124, 24
  %126 = trunc i64 %125 to i32
  %127 = load i32*, i32** %22, align 8
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %126, i32* %131, align 4
  %132 = load i32, i32* %14, align 4
  %133 = shl i32 %132, 8
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %13, align 4
  %135 = sub nsw i32 %134, 8
  store i32 %135, i32* %13, align 4
  br label %631

136:                                              ; preds = %88
  %137 = load i32, i32* %14, align 4
  %138 = shl i32 %137, 1
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %13, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %8, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 -1, i32* %6, align 4
  br label %642

147:                                              ; preds = %142
  %148 = load i32*, i32** %7, align 8
  %149 = load i64, i64* %15, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %15, align 8
  %151 = getelementptr inbounds i32, i32* %148, i64 %149
  %152 = load i32, i32* %151, align 4
  %153 = shl i32 %152, 24
  store i32 %153, i32* %14, align 4
  store i32 8, i32* %13, align 4
  br label %154

154:                                              ; preds = %147, %136
  %155 = load i32, i32* %14, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %197

157:                                              ; preds = %154
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %158, 8
  br i1 %159, label %160, label %179

160:                                              ; preds = %157
  %161 = load i64, i64* %15, align 8
  %162 = load i64, i64* %8, align 8
  %163 = icmp sge i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 -1, i32* %6, align 4
  br label %642

165:                                              ; preds = %160
  %166 = load i32*, i32** %7, align 8
  %167 = load i64, i64* %15, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %15, align 8
  %169 = getelementptr inbounds i32, i32* %166, i64 %167
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 255
  %172 = load i32, i32* %13, align 4
  %173 = sub nsw i32 24, %172
  %174 = shl i32 %171, %173
  %175 = load i32, i32* %14, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 8
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %165, %157
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* @RDP_MPPC_DICT_SIZE, align 4
  %182 = icmp sge i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  store i32 -1, i32* %6, align 4
  br label %642

184:                                              ; preds = %179
  %185 = load i32, i32* %14, align 4
  %186 = ashr i32 %185, 24
  %187 = or i32 %186, 128
  %188 = load i32*, i32** %22, align 8
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %16, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  store i32 %187, i32* %192, align 4
  %193 = load i32, i32* %14, align 4
  %194 = shl i32 %193, 8
  store i32 %194, i32* %14, align 4
  %195 = load i32, i32* %13, align 4
  %196 = sub nsw i32 %195, 8
  store i32 %196, i32* %13, align 4
  br label %631

197:                                              ; preds = %154
  %198 = load i32, i32* %14, align 4
  %199 = shl i32 %198, 1
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %13, align 4
  %202 = load i64, i64* %21, align 8
  %203 = icmp ne i64 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i32 3, i32 2
  %206 = icmp slt i32 %201, %205
  br i1 %206, label %207, label %226

207:                                              ; preds = %197
  %208 = load i64, i64* %15, align 8
  %209 = load i64, i64* %8, align 8
  %210 = icmp sge i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  store i32 -1, i32* %6, align 4
  br label %642

212:                                              ; preds = %207
  %213 = load i32*, i32** %7, align 8
  %214 = load i64, i64* %15, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %15, align 8
  %216 = getelementptr inbounds i32, i32* %213, i64 %214
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, 255
  %219 = load i32, i32* %13, align 4
  %220 = sub nsw i32 24, %219
  %221 = shl i32 %218, %220
  %222 = load i32, i32* %14, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, 8
  store i32 %225, i32* %13, align 4
  br label %226

226:                                              ; preds = %212, %197
  %227 = load i64, i64* %21, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %377

229:                                              ; preds = %226
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = ashr i64 %231, 29
  switch i64 %232, label %340 [
    i64 7, label %233
    i64 6, label %268
    i64 5, label %304
    i64 4, label %304
  ]

233:                                              ; preds = %229
  br label %234

234:                                              ; preds = %254, %233
  %235 = load i32, i32* %13, align 4
  %236 = icmp slt i32 %235, 9
  br i1 %236, label %237, label %257

237:                                              ; preds = %234
  %238 = load i64, i64* %15, align 8
  %239 = load i64, i64* %8, align 8
  %240 = icmp sge i64 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  store i32 -1, i32* %6, align 4
  br label %642

242:                                              ; preds = %237
  %243 = load i32*, i32** %7, align 8
  %244 = load i64, i64* %15, align 8
  %245 = add nsw i64 %244, 1
  store i64 %245, i64* %15, align 8
  %246 = getelementptr inbounds i32, i32* %243, i64 %244
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, 255
  %249 = load i32, i32* %13, align 4
  %250 = sub nsw i32 24, %249
  %251 = shl i32 %248, %250
  %252 = load i32, i32* %14, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %14, align 4
  br label %254

254:                                              ; preds = %242
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, 8
  store i32 %256, i32* %13, align 4
  br label %234

257:                                              ; preds = %234
  %258 = load i32, i32* %14, align 4
  %259 = shl i32 %258, 3
  store i32 %259, i32* %14, align 4
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = ashr i64 %261, 26
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %17, align 4
  %264 = load i32, i32* %14, align 4
  %265 = shl i32 %264, 6
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %13, align 4
  %267 = sub nsw i32 %266, 9
  store i32 %267, i32* %13, align 4
  br label %376

268:                                              ; preds = %229
  br label %269

269:                                              ; preds = %289, %268
  %270 = load i32, i32* %13, align 4
  %271 = icmp slt i32 %270, 11
  br i1 %271, label %272, label %292

272:                                              ; preds = %269
  %273 = load i64, i64* %15, align 8
  %274 = load i64, i64* %8, align 8
  %275 = icmp sge i64 %273, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  store i32 -1, i32* %6, align 4
  br label %642

277:                                              ; preds = %272
  %278 = load i32*, i32** %7, align 8
  %279 = load i64, i64* %15, align 8
  %280 = add nsw i64 %279, 1
  store i64 %280, i64* %15, align 8
  %281 = getelementptr inbounds i32, i32* %278, i64 %279
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, 255
  %284 = load i32, i32* %13, align 4
  %285 = sub nsw i32 24, %284
  %286 = shl i32 %283, %285
  %287 = load i32, i32* %14, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %14, align 4
  br label %289

289:                                              ; preds = %277
  %290 = load i32, i32* %13, align 4
  %291 = add nsw i32 %290, 8
  store i32 %291, i32* %13, align 4
  br label %269

292:                                              ; preds = %269
  %293 = load i32, i32* %14, align 4
  %294 = shl i32 %293, 3
  store i32 %294, i32* %14, align 4
  %295 = load i32, i32* %14, align 4
  %296 = sext i32 %295 to i64
  %297 = ashr i64 %296, 24
  %298 = add nsw i64 %297, 64
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %17, align 4
  %300 = load i32, i32* %14, align 4
  %301 = shl i32 %300, 8
  store i32 %301, i32* %14, align 4
  %302 = load i32, i32* %13, align 4
  %303 = sub nsw i32 %302, 11
  store i32 %303, i32* %13, align 4
  br label %376

304:                                              ; preds = %229, %229
  br label %305

305:                                              ; preds = %325, %304
  %306 = load i32, i32* %13, align 4
  %307 = icmp slt i32 %306, 13
  br i1 %307, label %308, label %328

308:                                              ; preds = %305
  %309 = load i64, i64* %15, align 8
  %310 = load i64, i64* %8, align 8
  %311 = icmp sge i64 %309, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %308
  store i32 -1, i32* %6, align 4
  br label %642

313:                                              ; preds = %308
  %314 = load i32*, i32** %7, align 8
  %315 = load i64, i64* %15, align 8
  %316 = add nsw i64 %315, 1
  store i64 %316, i64* %15, align 8
  %317 = getelementptr inbounds i32, i32* %314, i64 %315
  %318 = load i32, i32* %317, align 4
  %319 = and i32 %318, 255
  %320 = load i32, i32* %13, align 4
  %321 = sub nsw i32 24, %320
  %322 = shl i32 %319, %321
  %323 = load i32, i32* %14, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %14, align 4
  br label %325

325:                                              ; preds = %313
  %326 = load i32, i32* %13, align 4
  %327 = add nsw i32 %326, 8
  store i32 %327, i32* %13, align 4
  br label %305

328:                                              ; preds = %305
  %329 = load i32, i32* %14, align 4
  %330 = shl i32 %329, 2
  store i32 %330, i32* %14, align 4
  %331 = load i32, i32* %14, align 4
  %332 = sext i32 %331 to i64
  %333 = ashr i64 %332, 21
  %334 = add nsw i64 %333, 320
  %335 = trunc i64 %334 to i32
  store i32 %335, i32* %17, align 4
  %336 = load i32, i32* %14, align 4
  %337 = shl i32 %336, 11
  store i32 %337, i32* %14, align 4
  %338 = load i32, i32* %13, align 4
  %339 = sub nsw i32 %338, 13
  store i32 %339, i32* %13, align 4
  br label %376

340:                                              ; preds = %229
  br label %341

341:                                              ; preds = %361, %340
  %342 = load i32, i32* %13, align 4
  %343 = icmp slt i32 %342, 17
  br i1 %343, label %344, label %364

344:                                              ; preds = %341
  %345 = load i64, i64* %15, align 8
  %346 = load i64, i64* %8, align 8
  %347 = icmp sge i64 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %344
  store i32 -1, i32* %6, align 4
  br label %642

349:                                              ; preds = %344
  %350 = load i32*, i32** %7, align 8
  %351 = load i64, i64* %15, align 8
  %352 = add nsw i64 %351, 1
  store i64 %352, i64* %15, align 8
  %353 = getelementptr inbounds i32, i32* %350, i64 %351
  %354 = load i32, i32* %353, align 4
  %355 = and i32 %354, 255
  %356 = load i32, i32* %13, align 4
  %357 = sub nsw i32 24, %356
  %358 = shl i32 %355, %357
  %359 = load i32, i32* %14, align 4
  %360 = or i32 %359, %358
  store i32 %360, i32* %14, align 4
  br label %361

361:                                              ; preds = %349
  %362 = load i32, i32* %13, align 4
  %363 = add nsw i32 %362, 8
  store i32 %363, i32* %13, align 4
  br label %341

364:                                              ; preds = %341
  %365 = load i32, i32* %14, align 4
  %366 = shl i32 %365, 1
  store i32 %366, i32* %14, align 4
  %367 = load i32, i32* %14, align 4
  %368 = sext i32 %367 to i64
  %369 = ashr i64 %368, 16
  %370 = add nsw i64 %369, 2368
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %17, align 4
  %372 = load i32, i32* %14, align 4
  %373 = shl i32 %372, 16
  store i32 %373, i32* %14, align 4
  %374 = load i32, i32* %13, align 4
  %375 = sub nsw i32 %374, 17
  store i32 %375, i32* %13, align 4
  br label %376

376:                                              ; preds = %364, %328, %292, %257
  br label %483

377:                                              ; preds = %226
  %378 = load i32, i32* %14, align 4
  %379 = sext i32 %378 to i64
  %380 = ashr i64 %379, 30
  switch i64 %380, label %450 [
    i64 3, label %381
    i64 2, label %414
  ]

381:                                              ; preds = %377
  %382 = load i32, i32* %13, align 4
  %383 = icmp slt i32 %382, 8
  br i1 %383, label %384, label %403

384:                                              ; preds = %381
  %385 = load i64, i64* %15, align 8
  %386 = load i64, i64* %8, align 8
  %387 = icmp sge i64 %385, %386
  br i1 %387, label %388, label %389

388:                                              ; preds = %384
  store i32 -1, i32* %6, align 4
  br label %642

389:                                              ; preds = %384
  %390 = load i32*, i32** %7, align 8
  %391 = load i64, i64* %15, align 8
  %392 = add nsw i64 %391, 1
  store i64 %392, i64* %15, align 8
  %393 = getelementptr inbounds i32, i32* %390, i64 %391
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, 255
  %396 = load i32, i32* %13, align 4
  %397 = sub nsw i32 24, %396
  %398 = shl i32 %395, %397
  %399 = load i32, i32* %14, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %14, align 4
  %401 = load i32, i32* %13, align 4
  %402 = add nsw i32 %401, 8
  store i32 %402, i32* %13, align 4
  br label %403

403:                                              ; preds = %389, %381
  %404 = load i32, i32* %14, align 4
  %405 = shl i32 %404, 2
  store i32 %405, i32* %14, align 4
  %406 = load i32, i32* %14, align 4
  %407 = sext i32 %406 to i64
  %408 = ashr i64 %407, 26
  %409 = trunc i64 %408 to i32
  store i32 %409, i32* %17, align 4
  %410 = load i32, i32* %14, align 4
  %411 = shl i32 %410, 6
  store i32 %411, i32* %14, align 4
  %412 = load i32, i32* %13, align 4
  %413 = sub nsw i32 %412, 8
  store i32 %413, i32* %13, align 4
  br label %482

414:                                              ; preds = %377
  br label %415

415:                                              ; preds = %435, %414
  %416 = load i32, i32* %13, align 4
  %417 = icmp slt i32 %416, 10
  br i1 %417, label %418, label %438

418:                                              ; preds = %415
  %419 = load i64, i64* %15, align 8
  %420 = load i64, i64* %8, align 8
  %421 = icmp sge i64 %419, %420
  br i1 %421, label %422, label %423

422:                                              ; preds = %418
  store i32 -1, i32* %6, align 4
  br label %642

423:                                              ; preds = %418
  %424 = load i32*, i32** %7, align 8
  %425 = load i64, i64* %15, align 8
  %426 = add nsw i64 %425, 1
  store i64 %426, i64* %15, align 8
  %427 = getelementptr inbounds i32, i32* %424, i64 %425
  %428 = load i32, i32* %427, align 4
  %429 = and i32 %428, 255
  %430 = load i32, i32* %13, align 4
  %431 = sub nsw i32 24, %430
  %432 = shl i32 %429, %431
  %433 = load i32, i32* %14, align 4
  %434 = or i32 %433, %432
  store i32 %434, i32* %14, align 4
  br label %435

435:                                              ; preds = %423
  %436 = load i32, i32* %13, align 4
  %437 = add nsw i32 %436, 8
  store i32 %437, i32* %13, align 4
  br label %415

438:                                              ; preds = %415
  %439 = load i32, i32* %14, align 4
  %440 = shl i32 %439, 2
  store i32 %440, i32* %14, align 4
  %441 = load i32, i32* %14, align 4
  %442 = sext i32 %441 to i64
  %443 = ashr i64 %442, 24
  %444 = add nsw i64 %443, 64
  %445 = trunc i64 %444 to i32
  store i32 %445, i32* %17, align 4
  %446 = load i32, i32* %14, align 4
  %447 = shl i32 %446, 8
  store i32 %447, i32* %14, align 4
  %448 = load i32, i32* %13, align 4
  %449 = sub nsw i32 %448, 10
  store i32 %449, i32* %13, align 4
  br label %482

450:                                              ; preds = %377
  br label %451

451:                                              ; preds = %471, %450
  %452 = load i32, i32* %13, align 4
  %453 = icmp slt i32 %452, 14
  br i1 %453, label %454, label %474

454:                                              ; preds = %451
  %455 = load i64, i64* %15, align 8
  %456 = load i64, i64* %8, align 8
  %457 = icmp sge i64 %455, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %454
  store i32 -1, i32* %6, align 4
  br label %642

459:                                              ; preds = %454
  %460 = load i32*, i32** %7, align 8
  %461 = load i64, i64* %15, align 8
  %462 = add nsw i64 %461, 1
  store i64 %462, i64* %15, align 8
  %463 = getelementptr inbounds i32, i32* %460, i64 %461
  %464 = load i32, i32* %463, align 4
  %465 = and i32 %464, 255
  %466 = load i32, i32* %13, align 4
  %467 = sub nsw i32 24, %466
  %468 = shl i32 %465, %467
  %469 = load i32, i32* %14, align 4
  %470 = or i32 %469, %468
  store i32 %470, i32* %14, align 4
  br label %471

471:                                              ; preds = %459
  %472 = load i32, i32* %13, align 4
  %473 = add nsw i32 %472, 8
  store i32 %473, i32* %13, align 4
  br label %451

474:                                              ; preds = %451
  %475 = load i32, i32* %14, align 4
  %476 = ashr i32 %475, 18
  %477 = add nsw i32 %476, 320
  store i32 %477, i32* %17, align 4
  %478 = load i32, i32* %14, align 4
  %479 = shl i32 %478, 14
  store i32 %479, i32* %14, align 4
  %480 = load i32, i32* %13, align 4
  %481 = sub nsw i32 %480, 14
  store i32 %481, i32* %13, align 4
  br label %482

482:                                              ; preds = %474, %438, %403
  br label %483

483:                                              ; preds = %482, %376
  %484 = load i32, i32* %13, align 4
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %498

486:                                              ; preds = %483
  %487 = load i64, i64* %15, align 8
  %488 = load i64, i64* %8, align 8
  %489 = icmp sge i64 %487, %488
  br i1 %489, label %490, label %491

490:                                              ; preds = %486
  store i32 -1, i32* %6, align 4
  br label %642

491:                                              ; preds = %486
  %492 = load i32*, i32** %7, align 8
  %493 = load i64, i64* %15, align 8
  %494 = add nsw i64 %493, 1
  store i64 %494, i64* %15, align 8
  %495 = getelementptr inbounds i32, i32* %492, i64 %493
  %496 = load i32, i32* %495, align 4
  %497 = shl i32 %496, 24
  store i32 %497, i32* %14, align 4
  store i32 8, i32* %13, align 4
  br label %498

498:                                              ; preds = %491, %483
  store i32 0, i32* %18, align 4
  %499 = load i32, i32* %14, align 4
  %500 = icmp sge i32 %499, 0
  br i1 %500, label %501, label %506

501:                                              ; preds = %498
  store i32 3, i32* %18, align 4
  %502 = load i32, i32* %14, align 4
  %503 = shl i32 %502, 1
  store i32 %503, i32* %14, align 4
  %504 = load i32, i32* %13, align 4
  %505 = add nsw i32 %504, -1
  store i32 %505, i32* %13, align 4
  br label %598

506:                                              ; preds = %498
  %507 = load i64, i64* %21, align 8
  %508 = icmp ne i64 %507, 0
  %509 = zext i1 %508 to i64
  %510 = select i1 %508, i32 14, i32 11
  store i32 %510, i32* %20, align 4
  br label %511

511:                                              ; preds = %539, %506
  %512 = load i32, i32* %14, align 4
  %513 = shl i32 %512, 1
  store i32 %513, i32* %14, align 4
  %514 = load i32, i32* %13, align 4
  %515 = add nsw i32 %514, -1
  store i32 %515, i32* %13, align 4
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %529

517:                                              ; preds = %511
  %518 = load i64, i64* %15, align 8
  %519 = load i64, i64* %8, align 8
  %520 = icmp sge i64 %518, %519
  br i1 %520, label %521, label %522

521:                                              ; preds = %517
  store i32 -1, i32* %6, align 4
  br label %642

522:                                              ; preds = %517
  %523 = load i32*, i32** %7, align 8
  %524 = load i64, i64* %15, align 8
  %525 = add nsw i64 %524, 1
  store i64 %525, i64* %15, align 8
  %526 = getelementptr inbounds i32, i32* %523, i64 %524
  %527 = load i32, i32* %526, align 4
  %528 = shl i32 %527, 24
  store i32 %528, i32* %14, align 4
  store i32 8, i32* %13, align 4
  br label %529

529:                                              ; preds = %522, %511
  %530 = load i32, i32* %14, align 4
  %531 = icmp sge i32 %530, 0
  br i1 %531, label %532, label %533

532:                                              ; preds = %529
  br label %540

533:                                              ; preds = %529
  %534 = load i32, i32* %20, align 4
  %535 = add nsw i32 %534, -1
  store i32 %535, i32* %20, align 4
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %538

537:                                              ; preds = %533
  store i32 -1, i32* %6, align 4
  br label %642

538:                                              ; preds = %533
  br label %539

539:                                              ; preds = %538
  br i1 true, label %511, label %540

540:                                              ; preds = %539, %532
  %541 = load i64, i64* %21, align 8
  %542 = icmp ne i64 %541, 0
  %543 = zext i1 %542 to i64
  %544 = select i1 %542, i32 16, i32 13
  %545 = load i32, i32* %20, align 4
  %546 = sub nsw i32 %544, %545
  store i32 %546, i32* %18, align 4
  %547 = load i32, i32* %14, align 4
  %548 = shl i32 %547, 1
  store i32 %548, i32* %14, align 4
  %549 = load i32, i32* %13, align 4
  %550 = add nsw i32 %549, -1
  store i32 %550, i32* %13, align 4
  %551 = load i32, i32* %18, align 4
  %552 = icmp slt i32 %550, %551
  br i1 %552, label %553, label %579

553:                                              ; preds = %540
  br label %554

554:                                              ; preds = %575, %553
  %555 = load i32, i32* %13, align 4
  %556 = load i32, i32* %18, align 4
  %557 = icmp slt i32 %555, %556
  br i1 %557, label %558, label %578

558:                                              ; preds = %554
  %559 = load i64, i64* %15, align 8
  %560 = load i64, i64* %8, align 8
  %561 = icmp sge i64 %559, %560
  br i1 %561, label %562, label %563

562:                                              ; preds = %558
  store i32 -1, i32* %6, align 4
  br label %642

563:                                              ; preds = %558
  %564 = load i32*, i32** %7, align 8
  %565 = load i64, i64* %15, align 8
  %566 = add nsw i64 %565, 1
  store i64 %566, i64* %15, align 8
  %567 = getelementptr inbounds i32, i32* %564, i64 %565
  %568 = load i32, i32* %567, align 4
  %569 = and i32 %568, 255
  %570 = load i32, i32* %13, align 4
  %571 = sub nsw i32 24, %570
  %572 = shl i32 %569, %571
  %573 = load i32, i32* %14, align 4
  %574 = or i32 %573, %572
  store i32 %574, i32* %14, align 4
  br label %575

575:                                              ; preds = %563
  %576 = load i32, i32* %13, align 4
  %577 = add nsw i32 %576, 8
  store i32 %577, i32* %13, align 4
  br label %554

578:                                              ; preds = %554
  br label %579

579:                                              ; preds = %578, %540
  %580 = load i32, i32* %18, align 4
  store i32 %580, i32* %20, align 4
  %581 = load i32, i32* %14, align 4
  %582 = load i32, i32* %20, align 4
  %583 = sub nsw i32 32, %582
  %584 = ashr i32 %581, %583
  %585 = load i32, i32* %20, align 4
  %586 = shl i32 -1, %585
  %587 = xor i32 %586, -1
  %588 = and i32 %584, %587
  %589 = load i32, i32* %20, align 4
  %590 = shl i32 1, %589
  %591 = or i32 %588, %590
  store i32 %591, i32* %18, align 4
  %592 = load i32, i32* %20, align 4
  %593 = load i32, i32* %14, align 4
  %594 = shl i32 %593, %592
  store i32 %594, i32* %14, align 4
  %595 = load i32, i32* %20, align 4
  %596 = load i32, i32* %13, align 4
  %597 = sub nsw i32 %596, %595
  store i32 %597, i32* %13, align 4
  br label %598

598:                                              ; preds = %579, %501
  %599 = load i32, i32* %16, align 4
  %600 = load i32, i32* %18, align 4
  %601 = add nsw i32 %599, %600
  %602 = load i32, i32* @RDP_MPPC_DICT_SIZE, align 4
  %603 = icmp sge i32 %601, %602
  br i1 %603, label %604, label %605

604:                                              ; preds = %598
  store i32 -1, i32* %6, align 4
  br label %642

605:                                              ; preds = %598
  %606 = load i32, i32* %16, align 4
  %607 = load i32, i32* %17, align 4
  %608 = sub nsw i32 %606, %607
  %609 = load i64, i64* %21, align 8
  %610 = icmp ne i64 %609, 0
  %611 = zext i1 %610 to i64
  %612 = select i1 %610, i32 65535, i32 8191
  %613 = and i32 %608, %612
  store i32 %613, i32* %12, align 4
  br label %614

614:                                              ; preds = %626, %605
  %615 = load i32*, i32** %22, align 8
  %616 = load i32, i32* %12, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %12, align 4
  %618 = sext i32 %616 to i64
  %619 = getelementptr inbounds i32, i32* %615, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = load i32*, i32** %22, align 8
  %622 = load i32, i32* %16, align 4
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %16, align 4
  %624 = sext i32 %622 to i64
  %625 = getelementptr inbounds i32, i32* %621, i64 %624
  store i32 %620, i32* %625, align 4
  br label %626

626:                                              ; preds = %614
  %627 = load i32, i32* %18, align 4
  %628 = add nsw i32 %627, -1
  store i32 %628, i32* %18, align 4
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %614, label %630

630:                                              ; preds = %626
  br label %631

631:                                              ; preds = %630, %184, %122
  br i1 true, label %73, label %632

632:                                              ; preds = %631, %102, %80
  %633 = load i32, i32* %16, align 4
  store i32 %633, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mppc_dict, i32 0, i32 1), align 8
  %634 = load i32, i32* %19, align 4
  %635 = sext i32 %634 to i64
  %636 = load i64*, i64** %10, align 8
  store i64 %635, i64* %636, align 8
  %637 = load i32, i32* %16, align 4
  %638 = load i32, i32* %19, align 4
  %639 = sub nsw i32 %637, %638
  %640 = sext i32 %639 to i64
  %641 = load i64*, i64** %11, align 8
  store i64 %640, i64* %641, align 8
  store i32 0, i32* %6, align 4
  br label %642

642:                                              ; preds = %632, %604, %562, %537, %521, %490, %458, %422, %388, %348, %312, %276, %241, %211, %183, %164, %146, %121, %101, %68, %38
  %643 = load i32, i32* %6, align 4
  ret i32 %643
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
