; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_blf.c_blowfish_setkey.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_blf.c_blowfish_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32*, i32*, i32* }

@parray = common dso_local global i32* null, align 8
@sbox0 = common dso_local global i32* null, align 8
@sbox1 = common dso_local global i32* null, align 8
@sbox2 = common dso_local global i32* null, align 8
@sbox3 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blowfish_setkey(%struct.TYPE_4__* %0, i64* %1, i16 signext %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i16 %2, i16* %6, align 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %11, align 8
  %29 = load i16, i16* %6, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i16, i16* %6, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp sle i32 %34, 56
  br label %36

36:                                               ; preds = %32, %3
  %37 = phi i1 [ false, %3 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %124, %36
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 18
  br i1 %42, label %43, label %127

43:                                               ; preds = %40
  %44 = load i32*, i32** @parray, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load i64*, i64** %5, align 8
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %54, 4
  %56 = add nsw i32 %55, 0
  %57 = load i16, i16* %6, align 2
  %58 = sext i16 %57 to i32
  %59 = srem i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %53, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 24
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %69, %64
  store i32 %70, i32* %68, align 4
  %71 = load i64*, i64** %5, align 8
  %72 = load i32, i32* %13, align 4
  %73 = mul nsw i32 %72, 4
  %74 = add nsw i32 %73, 1
  %75 = load i16, i16* %6, align 2
  %76 = sext i16 %75 to i32
  %77 = srem i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %71, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = shl i32 %81, 16
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %87, %82
  store i32 %88, i32* %86, align 4
  %89 = load i64*, i64** %5, align 8
  %90 = load i32, i32* %13, align 4
  %91 = mul nsw i32 %90, 4
  %92 = add nsw i32 %91, 2
  %93 = load i16, i16* %6, align 2
  %94 = sext i16 %93 to i32
  %95 = srem i32 %92, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %89, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = shl i32 %99, 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, %100
  store i32 %106, i32* %104, align 4
  %107 = load i64*, i64** %5, align 8
  %108 = load i32, i32* %13, align 4
  %109 = mul nsw i32 %108, 4
  %110 = add nsw i32 %109, 3
  %111 = load i16, i16* %6, align 2
  %112 = sext i16 %111 to i32
  %113 = srem i32 %110, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %107, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = xor i32 %122, %117
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %43
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %40

127:                                              ; preds = %40
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %168, %127
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 %129, 256
  br i1 %130, label %131, label %171

131:                                              ; preds = %128
  %132 = load i32*, i32** @sbox0, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  %141 = load i32*, i32** @sbox1, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  %150 = load i32*, i32** @sbox2, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  %159 = load i32*, i32** @sbox3, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %131
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %128

171:                                              ; preds = %128
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %172, align 4
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 0, i32* %173, align 4
  store i32 0, i32* %13, align 4
  br label %174

174:                                              ; preds = %198, %171
  %175 = load i32, i32* %13, align 4
  %176 = icmp slt i32 %175, 18
  br i1 %176, label %177, label %201

177:                                              ; preds = %174
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = call i32 @blowfish_encrypt(i32 %179, i32 %181, i32* %182, %struct.TYPE_4__* %183)
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  store i32 %186, i32* %190, align 4
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %11, align 8
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store i32 %192, i32* %197, align 4
  br label %198

198:                                              ; preds = %177
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 2
  store i32 %200, i32* %13, align 4
  br label %174

201:                                              ; preds = %174
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %226, %201
  %203 = load i32, i32* %13, align 4
  %204 = icmp slt i32 %203, 256
  br i1 %204, label %205, label %229

205:                                              ; preds = %202
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %212 = call i32 @blowfish_encrypt(i32 %207, i32 %209, i32* %210, %struct.TYPE_4__* %211)
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %7, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %214, i32* %218, align 4
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  store i32 %220, i32* %225, align 4
  br label %226

226:                                              ; preds = %205
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 2
  store i32 %228, i32* %13, align 4
  br label %202

229:                                              ; preds = %202
  store i32 0, i32* %13, align 4
  br label %230

230:                                              ; preds = %254, %229
  %231 = load i32, i32* %13, align 4
  %232 = icmp slt i32 %231, 256
  br i1 %232, label %233, label %257

233:                                              ; preds = %230
  %234 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %240 = call i32 @blowfish_encrypt(i32 %235, i32 %237, i32* %238, %struct.TYPE_4__* %239)
  %241 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %8, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %242, i32* %246, align 4
  %247 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %8, align 8
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %249, i64 %252
  store i32 %248, i32* %253, align 4
  br label %254

254:                                              ; preds = %233
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, 2
  store i32 %256, i32* %13, align 4
  br label %230

257:                                              ; preds = %230
  store i32 0, i32* %13, align 4
  br label %258

258:                                              ; preds = %282, %257
  %259 = load i32, i32* %13, align 4
  %260 = icmp slt i32 %259, 256
  br i1 %260, label %261, label %285

261:                                              ; preds = %258
  %262 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %268 = call i32 @blowfish_encrypt(i32 %263, i32 %265, i32* %266, %struct.TYPE_4__* %267)
  %269 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32*, i32** %9, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  store i32 %270, i32* %274, align 4
  %275 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %9, align 8
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  store i32 %276, i32* %281, align 4
  br label %282

282:                                              ; preds = %261
  %283 = load i32, i32* %13, align 4
  %284 = add nsw i32 %283, 2
  store i32 %284, i32* %13, align 4
  br label %258

285:                                              ; preds = %258
  store i32 0, i32* %13, align 4
  br label %286

286:                                              ; preds = %310, %285
  %287 = load i32, i32* %13, align 4
  %288 = icmp slt i32 %287, 256
  br i1 %288, label %289, label %313

289:                                              ; preds = %286
  %290 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %293 = load i32, i32* %292, align 4
  %294 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %296 = call i32 @blowfish_encrypt(i32 %291, i32 %293, i32* %294, %struct.TYPE_4__* %295)
  %297 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32*, i32** %10, align 8
  %300 = load i32, i32* %13, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  store i32 %298, i32* %302, align 4
  %303 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %10, align 8
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  store i32 %304, i32* %309, align 4
  br label %310

310:                                              ; preds = %289
  %311 = load i32, i32* %13, align 4
  %312 = add nsw i32 %311, 2
  store i32 %312, i32* %13, align 4
  br label %286

313:                                              ; preds = %286
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @blowfish_encrypt(i32, i32, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
