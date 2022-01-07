; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_transform_texcoords.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_transform_texcoords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [45 x i8] c"invalid matrix type in transform_texcoords()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, [4 x i32]*)* @transform_texcoords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_texcoords(%struct.TYPE_3__* %0, i64 %1, [4 x i32]* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [4 x i32]*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i64, align 8
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store [4 x i32]* %2, [4 x i32]** %6, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %432 [
    i32 129, label %62
    i32 128, label %219
    i32 131, label %220
    i32 130, label %306
  ]

62:                                               ; preds = %3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 12
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %12, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %13, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 9
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %14, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 13
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %15, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %16, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 6
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %17, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 10
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %18, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 14
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %19, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %20, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %21, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 11
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %22, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 15
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %23, align 4
  store i64 0, i64* %24, align 8
  br label %114

114:                                              ; preds = %215, %62
  %115 = load i64, i64* %24, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %218

118:                                              ; preds = %114
  %119 = load [4 x i32]*, [4 x i32]** %6, align 8
  %120 = load i64, i64* %24, align 8
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %119, i64 %120
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %121, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %25, align 4
  %124 = load [4 x i32]*, [4 x i32]** %6, align 8
  %125 = load i64, i64* %24, align 8
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %124, i64 %125
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %126, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %26, align 4
  %129 = load [4 x i32]*, [4 x i32]** %6, align 8
  %130 = load i64, i64* %24, align 8
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %129, i64 %130
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %131, i64 0, i64 2
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %27, align 4
  %134 = load [4 x i32]*, [4 x i32]** %6, align 8
  %135 = load i64, i64* %24, align 8
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %134, i64 %135
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %136, i64 0, i64 3
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %28, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %25, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %26, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %27, align 4
  %148 = mul nsw i32 %146, %147
  %149 = add nsw i32 %145, %148
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %28, align 4
  %152 = mul nsw i32 %150, %151
  %153 = add nsw i32 %149, %152
  %154 = load [4 x i32]*, [4 x i32]** %6, align 8
  %155 = load i64, i64* %24, align 8
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %154, i64 %155
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %156, i64 0, i64 0
  store i32 %153, i32* %157, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %25, align 4
  %160 = mul nsw i32 %158, %159
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %26, align 4
  %163 = mul nsw i32 %161, %162
  %164 = add nsw i32 %160, %163
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %27, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %164, %167
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %28, align 4
  %171 = mul nsw i32 %169, %170
  %172 = add nsw i32 %168, %171
  %173 = load [4 x i32]*, [4 x i32]** %6, align 8
  %174 = load i64, i64* %24, align 8
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %173, i64 %174
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %175, i64 0, i64 1
  store i32 %172, i32* %176, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %25, align 4
  %179 = mul nsw i32 %177, %178
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %26, align 4
  %182 = mul nsw i32 %180, %181
  %183 = add nsw i32 %179, %182
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %27, align 4
  %186 = mul nsw i32 %184, %185
  %187 = add nsw i32 %183, %186
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* %28, align 4
  %190 = mul nsw i32 %188, %189
  %191 = add nsw i32 %187, %190
  %192 = load [4 x i32]*, [4 x i32]** %6, align 8
  %193 = load i64, i64* %24, align 8
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %192, i64 %193
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %194, i64 0, i64 2
  store i32 %191, i32* %195, align 4
  %196 = load i32, i32* %20, align 4
  %197 = load i32, i32* %25, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load i32, i32* %21, align 4
  %200 = load i32, i32* %26, align 4
  %201 = mul nsw i32 %199, %200
  %202 = add nsw i32 %198, %201
  %203 = load i32, i32* %22, align 4
  %204 = load i32, i32* %27, align 4
  %205 = mul nsw i32 %203, %204
  %206 = add nsw i32 %202, %205
  %207 = load i32, i32* %23, align 4
  %208 = load i32, i32* %28, align 4
  %209 = mul nsw i32 %207, %208
  %210 = add nsw i32 %206, %209
  %211 = load [4 x i32]*, [4 x i32]** %6, align 8
  %212 = load i64, i64* %24, align 8
  %213 = getelementptr inbounds [4 x i32], [4 x i32]* %211, i64 %212
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %213, i64 0, i64 3
  store i32 %210, i32* %214, align 4
  br label %215

215:                                              ; preds = %118
  %216 = load i64, i64* %24, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %24, align 8
  br label %114

218:                                              ; preds = %114
  br label %434

219:                                              ; preds = %3
  br label %434

220:                                              ; preds = %3
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  store i32* %223, i32** %29, align 8
  %224 = load i32*, i32** %29, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %30, align 4
  %227 = load i32*, i32** %29, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %31, align 4
  %230 = load i32*, i32** %29, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 4
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %32, align 4
  %233 = load i32*, i32** %29, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 5
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %33, align 4
  %236 = load i32*, i32** %29, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 12
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %34, align 4
  %239 = load i32*, i32** %29, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 13
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %35, align 4
  store i64 0, i64* %36, align 8
  br label %242

242:                                              ; preds = %302, %220
  %243 = load i64, i64* %36, align 8
  %244 = load i64, i64* %5, align 8
  %245 = icmp ult i64 %243, %244
  br i1 %245, label %246, label %305

246:                                              ; preds = %242
  %247 = load [4 x i32]*, [4 x i32]** %6, align 8
  %248 = load i64, i64* %36, align 8
  %249 = getelementptr inbounds [4 x i32], [4 x i32]* %247, i64 %248
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %249, i64 0, i64 0
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %37, align 4
  %252 = load [4 x i32]*, [4 x i32]** %6, align 8
  %253 = load i64, i64* %36, align 8
  %254 = getelementptr inbounds [4 x i32], [4 x i32]* %252, i64 %253
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %254, i64 0, i64 1
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %38, align 4
  %257 = load [4 x i32]*, [4 x i32]** %6, align 8
  %258 = load i64, i64* %36, align 8
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %257, i64 %258
  %260 = getelementptr inbounds [4 x i32], [4 x i32]* %259, i64 0, i64 2
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %39, align 4
  %262 = load [4 x i32]*, [4 x i32]** %6, align 8
  %263 = load i64, i64* %36, align 8
  %264 = getelementptr inbounds [4 x i32], [4 x i32]* %262, i64 %263
  %265 = getelementptr inbounds [4 x i32], [4 x i32]* %264, i64 0, i64 3
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %40, align 4
  %267 = load i32, i32* %30, align 4
  %268 = load i32, i32* %37, align 4
  %269 = mul nsw i32 %267, %268
  %270 = load i32, i32* %32, align 4
  %271 = load i32, i32* %38, align 4
  %272 = mul nsw i32 %270, %271
  %273 = add nsw i32 %269, %272
  %274 = load i32, i32* %34, align 4
  %275 = load i32, i32* %40, align 4
  %276 = mul nsw i32 %274, %275
  %277 = add nsw i32 %273, %276
  %278 = load [4 x i32]*, [4 x i32]** %6, align 8
  %279 = load i64, i64* %36, align 8
  %280 = getelementptr inbounds [4 x i32], [4 x i32]* %278, i64 %279
  %281 = getelementptr inbounds [4 x i32], [4 x i32]* %280, i64 0, i64 0
  store i32 %277, i32* %281, align 4
  %282 = load i32, i32* %31, align 4
  %283 = load i32, i32* %37, align 4
  %284 = mul nsw i32 %282, %283
  %285 = load i32, i32* %33, align 4
  %286 = load i32, i32* %38, align 4
  %287 = mul nsw i32 %285, %286
  %288 = add nsw i32 %284, %287
  %289 = load i32, i32* %35, align 4
  %290 = load i32, i32* %40, align 4
  %291 = mul nsw i32 %289, %290
  %292 = add nsw i32 %288, %291
  %293 = load [4 x i32]*, [4 x i32]** %6, align 8
  %294 = load i64, i64* %36, align 8
  %295 = getelementptr inbounds [4 x i32], [4 x i32]* %293, i64 %294
  %296 = getelementptr inbounds [4 x i32], [4 x i32]* %295, i64 0, i64 1
  store i32 %292, i32* %296, align 4
  %297 = load i32, i32* %39, align 4
  %298 = load [4 x i32]*, [4 x i32]** %6, align 8
  %299 = load i64, i64* %36, align 8
  %300 = getelementptr inbounds [4 x i32], [4 x i32]* %298, i64 %299
  %301 = getelementptr inbounds [4 x i32], [4 x i32]* %300, i64 0, i64 2
  store i32 %297, i32* %301, align 4
  br label %302

302:                                              ; preds = %246
  %303 = load i64, i64* %36, align 8
  %304 = add i64 %303, 1
  store i64 %304, i64* %36, align 8
  br label %242

305:                                              ; preds = %242
  br label %434

306:                                              ; preds = %3
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  store i32* %309, i32** %41, align 8
  %310 = load i32*, i32** %41, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  %312 = load i32, i32* %311, align 4
  store i32 %312, i32* %42, align 4
  %313 = load i32*, i32** %41, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* %43, align 4
  %316 = load i32*, i32** %41, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 2
  %318 = load i32, i32* %317, align 4
  store i32 %318, i32* %44, align 4
  %319 = load i32*, i32** %41, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 4
  %321 = load i32, i32* %320, align 4
  store i32 %321, i32* %45, align 4
  %322 = load i32*, i32** %41, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 5
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %46, align 4
  %325 = load i32*, i32** %41, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 6
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %47, align 4
  %328 = load i32*, i32** %41, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 8
  %330 = load i32, i32* %329, align 4
  store i32 %330, i32* %48, align 4
  %331 = load i32*, i32** %41, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 9
  %333 = load i32, i32* %332, align 4
  store i32 %333, i32* %49, align 4
  %334 = load i32*, i32** %41, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 10
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %50, align 4
  %337 = load i32*, i32** %41, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 12
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* %51, align 4
  %340 = load i32*, i32** %41, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 13
  %342 = load i32, i32* %341, align 4
  store i32 %342, i32* %52, align 4
  %343 = load i32*, i32** %41, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 14
  %345 = load i32, i32* %344, align 4
  store i32 %345, i32* %53, align 4
  store i64 0, i64* %54, align 8
  br label %346

346:                                              ; preds = %428, %306
  %347 = load i64, i64* %54, align 8
  %348 = load i64, i64* %5, align 8
  %349 = icmp ult i64 %347, %348
  br i1 %349, label %350, label %431

350:                                              ; preds = %346
  %351 = load [4 x i32]*, [4 x i32]** %6, align 8
  %352 = load i64, i64* %54, align 8
  %353 = getelementptr inbounds [4 x i32], [4 x i32]* %351, i64 %352
  %354 = getelementptr inbounds [4 x i32], [4 x i32]* %353, i64 0, i64 0
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %55, align 4
  %356 = load [4 x i32]*, [4 x i32]** %6, align 8
  %357 = load i64, i64* %54, align 8
  %358 = getelementptr inbounds [4 x i32], [4 x i32]* %356, i64 %357
  %359 = getelementptr inbounds [4 x i32], [4 x i32]* %358, i64 0, i64 1
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* %56, align 4
  %361 = load [4 x i32]*, [4 x i32]** %6, align 8
  %362 = load i64, i64* %54, align 8
  %363 = getelementptr inbounds [4 x i32], [4 x i32]* %361, i64 %362
  %364 = getelementptr inbounds [4 x i32], [4 x i32]* %363, i64 0, i64 2
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* %57, align 4
  %366 = load [4 x i32]*, [4 x i32]** %6, align 8
  %367 = load i64, i64* %54, align 8
  %368 = getelementptr inbounds [4 x i32], [4 x i32]* %366, i64 %367
  %369 = getelementptr inbounds [4 x i32], [4 x i32]* %368, i64 0, i64 3
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* %58, align 4
  %371 = load i32, i32* %42, align 4
  %372 = load i32, i32* %55, align 4
  %373 = mul nsw i32 %371, %372
  %374 = load i32, i32* %45, align 4
  %375 = load i32, i32* %56, align 4
  %376 = mul nsw i32 %374, %375
  %377 = add nsw i32 %373, %376
  %378 = load i32, i32* %48, align 4
  %379 = load i32, i32* %57, align 4
  %380 = mul nsw i32 %378, %379
  %381 = add nsw i32 %377, %380
  %382 = load i32, i32* %51, align 4
  %383 = load i32, i32* %58, align 4
  %384 = mul nsw i32 %382, %383
  %385 = add nsw i32 %381, %384
  %386 = load [4 x i32]*, [4 x i32]** %6, align 8
  %387 = load i64, i64* %54, align 8
  %388 = getelementptr inbounds [4 x i32], [4 x i32]* %386, i64 %387
  %389 = getelementptr inbounds [4 x i32], [4 x i32]* %388, i64 0, i64 0
  store i32 %385, i32* %389, align 4
  %390 = load i32, i32* %43, align 4
  %391 = load i32, i32* %55, align 4
  %392 = mul nsw i32 %390, %391
  %393 = load i32, i32* %46, align 4
  %394 = load i32, i32* %56, align 4
  %395 = mul nsw i32 %393, %394
  %396 = add nsw i32 %392, %395
  %397 = load i32, i32* %49, align 4
  %398 = load i32, i32* %57, align 4
  %399 = mul nsw i32 %397, %398
  %400 = add nsw i32 %396, %399
  %401 = load i32, i32* %52, align 4
  %402 = load i32, i32* %58, align 4
  %403 = mul nsw i32 %401, %402
  %404 = add nsw i32 %400, %403
  %405 = load [4 x i32]*, [4 x i32]** %6, align 8
  %406 = load i64, i64* %54, align 8
  %407 = getelementptr inbounds [4 x i32], [4 x i32]* %405, i64 %406
  %408 = getelementptr inbounds [4 x i32], [4 x i32]* %407, i64 0, i64 1
  store i32 %404, i32* %408, align 4
  %409 = load i32, i32* %44, align 4
  %410 = load i32, i32* %55, align 4
  %411 = mul nsw i32 %409, %410
  %412 = load i32, i32* %47, align 4
  %413 = load i32, i32* %56, align 4
  %414 = mul nsw i32 %412, %413
  %415 = add nsw i32 %411, %414
  %416 = load i32, i32* %50, align 4
  %417 = load i32, i32* %57, align 4
  %418 = mul nsw i32 %416, %417
  %419 = add nsw i32 %415, %418
  %420 = load i32, i32* %53, align 4
  %421 = load i32, i32* %58, align 4
  %422 = mul nsw i32 %420, %421
  %423 = add nsw i32 %419, %422
  %424 = load [4 x i32]*, [4 x i32]** %6, align 8
  %425 = load i64, i64* %54, align 8
  %426 = getelementptr inbounds [4 x i32], [4 x i32]* %424, i64 %425
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %426, i64 0, i64 2
  store i32 %423, i32* %427, align 4
  br label %428

428:                                              ; preds = %350
  %429 = load i64, i64* %54, align 8
  %430 = add i64 %429, 1
  store i64 %430, i64* %54, align 8
  br label %346

431:                                              ; preds = %346
  br label %434

432:                                              ; preds = %3
  %433 = call i32 @gl_problem(i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %434

434:                                              ; preds = %432, %431, %305, %219, %218
  ret void
}

declare dso_local i32 @gl_problem(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
