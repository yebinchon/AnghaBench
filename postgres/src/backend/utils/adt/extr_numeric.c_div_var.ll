; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_div_var.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_div_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64*, i32, i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DIVISION_BY_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@NUMERIC_POS = common dso_local global i32 0, align 4
@NUMERIC_NEG = common dso_local global i32 0, align 4
@DEC_DIGITS = common dso_local global i32 0, align 4
@NBASE = common dso_local global i32 0, align 4
@HALF_NBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32)* @div_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @div_var(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %24, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %25, align 4
  %35 = load i32, i32* %25, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %5
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37, %5
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* @ERRCODE_DIVISION_BY_ZERO, align 4
  %47 = call i32 @errcode(i32 %46)
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @ereport(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  %51 = load i32, i32* %24, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = call i32 @zero_var(%struct.TYPE_10__* %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %486

59:                                               ; preds = %50
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @NUMERIC_POS, align 4
  store i32 %68, i32* %13, align 4
  br label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @NUMERIC_NEG, align 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @DEC_DIGITS, align 4
  %83 = add nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* @DEC_DIGITS, align 4
  %86 = sdiv i32 %84, %85
  %87 = add nsw i32 %80, %86
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @Max(i32 %88, i32 1)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %71
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %71
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %25, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %24, align 4
  %101 = call i32 @Max(i32 %99, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %25, align 4
  %104 = add nsw i32 %102, %103
  %105 = add nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i64 @palloc0(i32 %108)
  %110 = inttoptr i64 %109 to i32*
  store i32* %110, i32** %19, align 8
  %111 = load i32*, i32** %19, align 8
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32* %115, i32** %20, align 8
  %116 = load i32*, i32** %19, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %24, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = call i32 @memcpy(i32* %117, i64* %120, i32 %124)
  %126 = load i32*, i32** %20, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %25, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = call i32 @memcpy(i32* %127, i64* %130, i32 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @alloc_var(%struct.TYPE_10__* %136, i32 %137)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = bitcast i64* %141 to i32*
  store i32* %142, i32** %21, align 8
  %143 = load i32, i32* %25, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %178

145:                                              ; preds = %95
  %146 = load i32*, i32** %20, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %17, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %22, align 4
  br label %149

149:                                              ; preds = %174, %145
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %149
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @NBASE, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32*, i32** %19, align 8
  %158 = load i32, i32* %22, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %156, %162
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %17, align 4
  %166 = sdiv i32 %164, %165
  %167 = load i32*, i32** %21, align 8
  %168 = load i32, i32* %22, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %166, i32* %170, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %17, align 4
  %173 = srem i32 %171, %172
  store i32 %173, i32* %15, align 4
  br label %174

174:                                              ; preds = %153
  %175 = load i32, i32* %22, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %22, align 4
  br label %149

177:                                              ; preds = %149
  br label %463

178:                                              ; preds = %95
  %179 = load i32*, i32** %20, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @HALF_NBASE, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %262

184:                                              ; preds = %178
  %185 = load i32, i32* @NBASE, align 4
  %186 = load i32*, i32** %20, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  %190 = sdiv i32 %185, %189
  store i32 %190, i32* %26, align 4
  store i32 0, i32* %15, align 4
  %191 = load i32, i32* %25, align 4
  store i32 %191, i32* %22, align 4
  br label %192

192:                                              ; preds = %215, %184
  %193 = load i32, i32* %22, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %218

195:                                              ; preds = %192
  %196 = load i32*, i32** %20, align 8
  %197 = load i32, i32* %22, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %26, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* @NBASE, align 4
  %207 = srem i32 %205, %206
  %208 = load i32*, i32** %20, align 8
  %209 = load i32, i32* %22, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %207, i32* %211, align 4
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* @NBASE, align 4
  %214 = sdiv i32 %212, %213
  store i32 %214, i32* %15, align 4
  br label %215

215:                                              ; preds = %195
  %216 = load i32, i32* %22, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %22, align 4
  br label %192

218:                                              ; preds = %192
  %219 = load i32, i32* %15, align 4
  %220 = icmp eq i32 %219, 0
  %221 = zext i1 %220 to i32
  %222 = call i32 @Assert(i32 %221)
  store i32 0, i32* %15, align 4
  %223 = load i32, i32* %24, align 4
  store i32 %223, i32* %22, align 4
  br label %224

224:                                              ; preds = %247, %218
  %225 = load i32, i32* %22, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %250

227:                                              ; preds = %224
  %228 = load i32*, i32** %19, align 8
  %229 = load i32, i32* %22, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %26, align 4
  %234 = mul nsw i32 %232, %233
  %235 = load i32, i32* %15, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* @NBASE, align 4
  %239 = srem i32 %237, %238
  %240 = load i32*, i32** %19, align 8
  %241 = load i32, i32* %22, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 %239, i32* %243, align 4
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* @NBASE, align 4
  %246 = sdiv i32 %244, %245
  store i32 %246, i32* %15, align 4
  br label %247

247:                                              ; preds = %227
  %248 = load i32, i32* %22, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %22, align 4
  br label %224

250:                                              ; preds = %224
  %251 = load i32, i32* %15, align 4
  %252 = icmp eq i32 %251, 0
  %253 = zext i1 %252 to i32
  %254 = call i32 @Assert(i32 %253)
  %255 = load i32*, i32** %20, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @HALF_NBASE, align 4
  %259 = icmp sge i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @Assert(i32 %260)
  br label %262

262:                                              ; preds = %250, %178
  %263 = load i32*, i32** %20, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %17, align 4
  %266 = load i32*, i32** %20, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 2
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %18, align 4
  store i32 0, i32* %23, align 4
  br label %269

269:                                              ; preds = %459, %262
  %270 = load i32, i32* %23, align 4
  %271 = load i32, i32* %12, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %462

273:                                              ; preds = %269
  %274 = load i32*, i32** %19, align 8
  %275 = load i32, i32* %23, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @NBASE, align 4
  %280 = mul nsw i32 %278, %279
  %281 = load i32*, i32** %19, align 8
  %282 = load i32, i32* %23, align 4
  %283 = add nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %280, %286
  store i32 %287, i32* %27, align 4
  %288 = load i32, i32* %27, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %273
  %291 = load i32*, i32** %21, align 8
  %292 = load i32, i32* %23, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 0, i32* %294, align 4
  br label %459

295:                                              ; preds = %273
  %296 = load i32*, i32** %19, align 8
  %297 = load i32, i32* %23, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %17, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %295
  %304 = load i32, i32* @NBASE, align 4
  %305 = sub nsw i32 %304, 1
  store i32 %305, i32* %28, align 4
  br label %310

306:                                              ; preds = %295
  %307 = load i32, i32* %27, align 4
  %308 = load i32, i32* %17, align 4
  %309 = sdiv i32 %307, %308
  store i32 %309, i32* %28, align 4
  br label %310

310:                                              ; preds = %306, %303
  br label %311

311:                                              ; preds = %330, %310
  %312 = load i32, i32* %18, align 4
  %313 = load i32, i32* %28, align 4
  %314 = mul nsw i32 %312, %313
  %315 = load i32, i32* %27, align 4
  %316 = load i32, i32* %28, align 4
  %317 = load i32, i32* %17, align 4
  %318 = mul nsw i32 %316, %317
  %319 = sub nsw i32 %315, %318
  %320 = load i32, i32* @NBASE, align 4
  %321 = mul nsw i32 %319, %320
  %322 = load i32*, i32** %19, align 8
  %323 = load i32, i32* %23, align 4
  %324 = add nsw i32 %323, 2
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %321, %327
  %329 = icmp sgt i32 %314, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %311
  %331 = load i32, i32* %28, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %28, align 4
  br label %311

333:                                              ; preds = %311
  %334 = load i32, i32* %28, align 4
  %335 = icmp sgt i32 %334, 0
  br i1 %335, label %336, label %453

336:                                              ; preds = %333
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %337 = load i32, i32* %25, align 4
  store i32 %337, i32* %22, align 4
  br label %338

338:                                              ; preds = %389, %336
  %339 = load i32, i32* %22, align 4
  %340 = icmp sge i32 %339, 0
  br i1 %340, label %341, label %392

341:                                              ; preds = %338
  %342 = load i32*, i32** %20, align 8
  %343 = load i32, i32* %22, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %28, align 4
  %348 = mul nsw i32 %346, %347
  %349 = load i32, i32* %15, align 4
  %350 = add nsw i32 %349, %348
  store i32 %350, i32* %15, align 4
  %351 = load i32, i32* %15, align 4
  %352 = load i32, i32* @NBASE, align 4
  %353 = srem i32 %351, %352
  %354 = load i32, i32* %16, align 4
  %355 = sub nsw i32 %354, %353
  store i32 %355, i32* %16, align 4
  %356 = load i32, i32* %15, align 4
  %357 = load i32, i32* @NBASE, align 4
  %358 = sdiv i32 %356, %357
  store i32 %358, i32* %15, align 4
  %359 = load i32*, i32** %19, align 8
  %360 = load i32, i32* %23, align 4
  %361 = load i32, i32* %22, align 4
  %362 = add nsw i32 %360, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %359, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %16, align 4
  %367 = add nsw i32 %366, %365
  store i32 %367, i32* %16, align 4
  %368 = load i32, i32* %16, align 4
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %370, label %380

370:                                              ; preds = %341
  %371 = load i32, i32* %16, align 4
  %372 = load i32, i32* @NBASE, align 4
  %373 = add nsw i32 %371, %372
  %374 = load i32*, i32** %19, align 8
  %375 = load i32, i32* %23, align 4
  %376 = load i32, i32* %22, align 4
  %377 = add nsw i32 %375, %376
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %374, i64 %378
  store i32 %373, i32* %379, align 4
  store i32 -1, i32* %16, align 4
  br label %388

380:                                              ; preds = %341
  %381 = load i32, i32* %16, align 4
  %382 = load i32*, i32** %19, align 8
  %383 = load i32, i32* %23, align 4
  %384 = load i32, i32* %22, align 4
  %385 = add nsw i32 %383, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %382, i64 %386
  store i32 %381, i32* %387, align 4
  store i32 0, i32* %16, align 4
  br label %388

388:                                              ; preds = %380, %370
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %22, align 4
  %391 = add nsw i32 %390, -1
  store i32 %391, i32* %22, align 4
  br label %338

392:                                              ; preds = %338
  %393 = load i32, i32* %15, align 4
  %394 = icmp eq i32 %393, 0
  %395 = zext i1 %394 to i32
  %396 = call i32 @Assert(i32 %395)
  %397 = load i32, i32* %16, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %452

399:                                              ; preds = %392
  %400 = load i32, i32* %28, align 4
  %401 = add nsw i32 %400, -1
  store i32 %401, i32* %28, align 4
  store i32 0, i32* %15, align 4
  %402 = load i32, i32* %25, align 4
  store i32 %402, i32* %22, align 4
  br label %403

403:                                              ; preds = %444, %399
  %404 = load i32, i32* %22, align 4
  %405 = icmp sge i32 %404, 0
  br i1 %405, label %406, label %447

406:                                              ; preds = %403
  %407 = load i32*, i32** %19, align 8
  %408 = load i32, i32* %23, align 4
  %409 = load i32, i32* %22, align 4
  %410 = add nsw i32 %408, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %407, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load i32*, i32** %20, align 8
  %415 = load i32, i32* %22, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = add nsw i32 %413, %418
  %420 = load i32, i32* %15, align 4
  %421 = add nsw i32 %420, %419
  store i32 %421, i32* %15, align 4
  %422 = load i32, i32* %15, align 4
  %423 = load i32, i32* @NBASE, align 4
  %424 = icmp sge i32 %422, %423
  br i1 %424, label %425, label %435

425:                                              ; preds = %406
  %426 = load i32, i32* %15, align 4
  %427 = load i32, i32* @NBASE, align 4
  %428 = sub nsw i32 %426, %427
  %429 = load i32*, i32** %19, align 8
  %430 = load i32, i32* %23, align 4
  %431 = load i32, i32* %22, align 4
  %432 = add nsw i32 %430, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %429, i64 %433
  store i32 %428, i32* %434, align 4
  store i32 1, i32* %15, align 4
  br label %443

435:                                              ; preds = %406
  %436 = load i32, i32* %15, align 4
  %437 = load i32*, i32** %19, align 8
  %438 = load i32, i32* %23, align 4
  %439 = load i32, i32* %22, align 4
  %440 = add nsw i32 %438, %439
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %437, i64 %441
  store i32 %436, i32* %442, align 4
  store i32 0, i32* %15, align 4
  br label %443

443:                                              ; preds = %435, %425
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %22, align 4
  %446 = add nsw i32 %445, -1
  store i32 %446, i32* %22, align 4
  br label %403

447:                                              ; preds = %403
  %448 = load i32, i32* %15, align 4
  %449 = icmp eq i32 %448, 1
  %450 = zext i1 %449 to i32
  %451 = call i32 @Assert(i32 %450)
  br label %452

452:                                              ; preds = %447, %392
  br label %453

453:                                              ; preds = %452, %333
  %454 = load i32, i32* %28, align 4
  %455 = load i32*, i32** %21, align 8
  %456 = load i32, i32* %23, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  store i32 %454, i32* %458, align 4
  br label %459

459:                                              ; preds = %453, %290
  %460 = load i32, i32* %23, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %23, align 4
  br label %269

462:                                              ; preds = %269
  br label %463

463:                                              ; preds = %462, %177
  %464 = load i32*, i32** %19, align 8
  %465 = call i32 @pfree(i32* %464)
  %466 = load i32, i32* %14, align 4
  %467 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %467, i32 0, i32 4
  store i32 %466, i32* %468, align 8
  %469 = load i32, i32* %13, align 4
  %470 = sext i32 %469 to i64
  %471 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %472 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %471, i32 0, i32 3
  store i64 %470, i64* %472, align 8
  %473 = load i32, i32* %10, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %463
  %476 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %477 = load i32, i32* %9, align 4
  %478 = call i32 @round_var(%struct.TYPE_10__* %476, i32 %477)
  br label %483

479:                                              ; preds = %463
  %480 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %481 = load i32, i32* %9, align 4
  %482 = call i32 @trunc_var(%struct.TYPE_10__* %480, i32 %481)
  br label %483

483:                                              ; preds = %479, %475
  %484 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %485 = call i32 @strip_var(%struct.TYPE_10__* %484)
  br label %486

486:                                              ; preds = %483, %53
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @zero_var(%struct.TYPE_10__*) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @alloc_var(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @round_var(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @trunc_var(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @strip_var(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
