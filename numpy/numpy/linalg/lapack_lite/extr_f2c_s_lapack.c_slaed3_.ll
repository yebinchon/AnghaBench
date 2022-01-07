; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaed3_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaed3_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slaed3_.i__ = internal global i32 0, align 4
@slaed3_.j = internal global i32 0, align 4
@slaed3_.n2 = internal global i32 0, align 4
@slaed3_.n12 = internal global i32 0, align 4
@slaed3_.ii = internal global i32 0, align 4
@slaed3_.n23 = internal global i32 0, align 4
@slaed3_.iq2 = internal global i32 0, align 4
@slaed3_.temp = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SLAED3\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c_b15 = common dso_local global i32 0, align 4
@c_b29 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slaed3_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %16, align 8
  store i32* %1, i32** %17, align 8
  store i32* %2, i32** %18, align 8
  store i32* %3, i32** %19, align 8
  store i32* %4, i32** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32* %6, i32** %22, align 8
  store i32* %7, i32** %23, align 8
  store i32* %8, i32** %24, align 8
  store i32* %9, i32** %25, align 8
  store i32* %10, i32** %26, align 8
  store i32* %11, i32** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 -1
  store i32* %36, i32** %19, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %30, align 4
  %39 = load i32, i32* %30, align 4
  %40 = add nsw i32 1, %39
  store i32 %40, i32* %31, align 4
  %41 = load i32, i32* %31, align 4
  %42 = load i32*, i32** %20, align 8
  %43 = sext i32 %41 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32* %45, i32** %20, align 8
  %46 = load i32*, i32** %23, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 -1
  store i32* %47, i32** %23, align 8
  %48 = load i32*, i32** %24, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 -1
  store i32* %49, i32** %24, align 8
  %50 = load i32*, i32** %25, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 -1
  store i32* %51, i32** %25, align 8
  %52 = load i32*, i32** %26, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 -1
  store i32* %53, i32** %26, align 8
  %54 = load i32*, i32** %27, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 -1
  store i32* %55, i32** %27, align 8
  %56 = load i32*, i32** %28, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 -1
  store i32* %57, i32** %28, align 8
  %58 = load i32*, i32** %29, align 8
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %14
  %63 = load i32*, i32** %29, align 8
  store i32 -1, i32* %63, align 4
  br label %83

64:                                               ; preds = %14
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32*, i32** %29, align 8
  store i32 -2, i32* %71, align 4
  br label %82

72:                                               ; preds = %64
  %73 = load i32*, i32** %21, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %17, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @max(i32 1, i32 %76)
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32*, i32** %29, align 8
  store i32 -6, i32* %80, align 4
  br label %81

81:                                               ; preds = %79, %72
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %62
  %84 = load i32*, i32** %29, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32*, i32** %29, align 8
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %32, align 4
  %91 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %32)
  store i32 0, i32* %15, align 4
  br label %556

92:                                               ; preds = %83
  %93 = load i32*, i32** %16, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 0, i32* %15, align 4
  br label %556

97:                                               ; preds = %92
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %32, align 4
  store i32 1, i32* @slaed3_.i__, align 4
  br label %100

100:                                              ; preds = %127, %97
  %101 = load i32, i32* @slaed3_.i__, align 4
  %102 = load i32, i32* %32, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load i32*, i32** %23, align 8
  %106 = load i32, i32* @slaed3_.i__, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32*, i32** %23, align 8
  %110 = load i32, i32* @slaed3_.i__, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = call i8* @slamc3_(i32* %108, i32* %112)
  %114 = load i32*, i32** %23, align 8
  %115 = load i32, i32* @slaed3_.i__, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 0, %119
  %121 = getelementptr i8, i8* %113, i64 %120
  %122 = ptrtoint i8* %121 to i32
  %123 = load i32*, i32** %23, align 8
  %124 = load i32, i32* @slaed3_.i__, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %104
  %128 = load i32, i32* @slaed3_.i__, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @slaed3_.i__, align 4
  br label %100

130:                                              ; preds = %100
  %131 = load i32*, i32** %16, align 8
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %32, align 4
  store i32 1, i32* @slaed3_.j, align 4
  br label %133

133:                                              ; preds = %162, %130
  %134 = load i32, i32* @slaed3_.j, align 4
  %135 = load i32, i32* %32, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %165

137:                                              ; preds = %133
  %138 = load i32*, i32** %16, align 8
  %139 = load i32*, i32** %23, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32*, i32** %27, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32*, i32** %20, align 8
  %144 = load i32, i32* @slaed3_.j, align 4
  %145 = load i32, i32* %30, align 4
  %146 = mul nsw i32 %144, %145
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %143, i64 %148
  %150 = load i32*, i32** %22, align 8
  %151 = load i32*, i32** %19, align 8
  %152 = load i32, i32* @slaed3_.j, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32*, i32** %29, align 8
  %156 = call i32 @slaed4_(i32* %138, i32* @slaed3_.j, i32* %140, i32* %142, i32* %149, i32* %150, i32* %154, i32* %155)
  %157 = load i32*, i32** %29, align 8
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %137
  br label %555

161:                                              ; preds = %137
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* @slaed3_.j, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* @slaed3_.j, align 4
  br label %133

165:                                              ; preds = %133
  %166 = load i32*, i32** %16, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %447

170:                                              ; preds = %165
  %171 = load i32*, i32** %16, align 8
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %236

174:                                              ; preds = %170
  %175 = load i32*, i32** %16, align 8
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %32, align 4
  store i32 1, i32* @slaed3_.j, align 4
  br label %177

177:                                              ; preds = %232, %174
  %178 = load i32, i32* @slaed3_.j, align 4
  %179 = load i32, i32* %32, align 4
  %180 = icmp sle i32 %178, %179
  br i1 %180, label %181, label %235

181:                                              ; preds = %177
  %182 = load i32*, i32** %20, align 8
  %183 = load i32, i32* @slaed3_.j, align 4
  %184 = load i32, i32* %30, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %182, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %27, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  store i32 %189, i32* %191, align 4
  %192 = load i32*, i32** %20, align 8
  %193 = load i32, i32* @slaed3_.j, align 4
  %194 = load i32, i32* %30, align 4
  %195 = mul nsw i32 %193, %194
  %196 = add nsw i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %192, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %27, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %25, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* @slaed3_.ii, align 4
  %205 = load i32*, i32** %27, align 8
  %206 = load i32, i32* @slaed3_.ii, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %20, align 8
  %211 = load i32, i32* @slaed3_.j, align 4
  %212 = load i32, i32* %30, align 4
  %213 = mul nsw i32 %211, %212
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %210, i64 %215
  store i32 %209, i32* %216, align 4
  %217 = load i32*, i32** %25, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* @slaed3_.ii, align 4
  %220 = load i32*, i32** %27, align 8
  %221 = load i32, i32* @slaed3_.ii, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %20, align 8
  %226 = load i32, i32* @slaed3_.j, align 4
  %227 = load i32, i32* %30, align 4
  %228 = mul nsw i32 %226, %227
  %229 = add nsw i32 %228, 2
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %225, i64 %230
  store i32 %224, i32* %231, align 4
  br label %232

232:                                              ; preds = %181
  %233 = load i32, i32* @slaed3_.j, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* @slaed3_.j, align 4
  br label %177

235:                                              ; preds = %177
  br label %447

236:                                              ; preds = %170
  %237 = load i32*, i32** %16, align 8
  %238 = load i32*, i32** %27, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  %240 = load i32*, i32** %28, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  %242 = call i32 @scopy_(i32* %237, i32* %239, i32* @c__1, i32* %241, i32* @c__1)
  %243 = load i32*, i32** %21, align 8
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %32, align 4
  %246 = load i32*, i32** %16, align 8
  %247 = load i32*, i32** %20, align 8
  %248 = load i32, i32* %31, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32*, i32** %27, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = call i32 @scopy_(i32* %246, i32* %250, i32* %32, i32* %252, i32* @c__1)
  %254 = load i32*, i32** %16, align 8
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %32, align 4
  store i32 1, i32* @slaed3_.j, align 4
  br label %256

256:                                              ; preds = %339, %236
  %257 = load i32, i32* @slaed3_.j, align 4
  %258 = load i32, i32* %32, align 4
  %259 = icmp sle i32 %257, %258
  br i1 %259, label %260, label %342

260:                                              ; preds = %256
  %261 = load i32, i32* @slaed3_.j, align 4
  %262 = sub nsw i32 %261, 1
  store i32 %262, i32* %33, align 4
  store i32 1, i32* @slaed3_.i__, align 4
  br label %263

263:                                              ; preds = %295, %260
  %264 = load i32, i32* @slaed3_.i__, align 4
  %265 = load i32, i32* %33, align 4
  %266 = icmp sle i32 %264, %265
  br i1 %266, label %267, label %298

267:                                              ; preds = %263
  %268 = load i32*, i32** %20, align 8
  %269 = load i32, i32* @slaed3_.i__, align 4
  %270 = load i32, i32* @slaed3_.j, align 4
  %271 = load i32, i32* %30, align 4
  %272 = mul nsw i32 %270, %271
  %273 = add nsw i32 %269, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %268, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %23, align 8
  %278 = load i32, i32* @slaed3_.i__, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** %23, align 8
  %283 = load i32, i32* @slaed3_.j, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %281, %286
  %288 = sdiv i32 %276, %287
  %289 = load i32*, i32** %27, align 8
  %290 = load i32, i32* @slaed3_.i__, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = mul nsw i32 %293, %288
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %267
  %296 = load i32, i32* @slaed3_.i__, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* @slaed3_.i__, align 4
  br label %263

298:                                              ; preds = %263
  %299 = load i32*, i32** %16, align 8
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %33, align 4
  %301 = load i32, i32* @slaed3_.j, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* @slaed3_.i__, align 4
  br label %303

303:                                              ; preds = %335, %298
  %304 = load i32, i32* @slaed3_.i__, align 4
  %305 = load i32, i32* %33, align 4
  %306 = icmp sle i32 %304, %305
  br i1 %306, label %307, label %338

307:                                              ; preds = %303
  %308 = load i32*, i32** %20, align 8
  %309 = load i32, i32* @slaed3_.i__, align 4
  %310 = load i32, i32* @slaed3_.j, align 4
  %311 = load i32, i32* %30, align 4
  %312 = mul nsw i32 %310, %311
  %313 = add nsw i32 %309, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %308, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = load i32*, i32** %23, align 8
  %318 = load i32, i32* @slaed3_.i__, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32*, i32** %23, align 8
  %323 = load i32, i32* @slaed3_.j, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %321, %326
  %328 = sdiv i32 %316, %327
  %329 = load i32*, i32** %27, align 8
  %330 = load i32, i32* @slaed3_.i__, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = mul nsw i32 %333, %328
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %307
  %336 = load i32, i32* @slaed3_.i__, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* @slaed3_.i__, align 4
  br label %303

338:                                              ; preds = %303
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* @slaed3_.j, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* @slaed3_.j, align 4
  br label %256

342:                                              ; preds = %256
  %343 = load i32*, i32** %16, align 8
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %32, align 4
  store i32 1, i32* @slaed3_.i__, align 4
  br label %345

345:                                              ; preds = %366, %342
  %346 = load i32, i32* @slaed3_.i__, align 4
  %347 = load i32, i32* %32, align 4
  %348 = icmp sle i32 %346, %347
  br i1 %348, label %349, label %369

349:                                              ; preds = %345
  %350 = load i32*, i32** %27, align 8
  %351 = load i32, i32* @slaed3_.i__, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = sub nsw i32 0, %354
  %356 = call i32 @sqrt(i32 %355)
  store i32 %356, i32* %34, align 4
  %357 = load i32*, i32** %28, align 8
  %358 = load i32, i32* @slaed3_.i__, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  %361 = call i32 @r_sign(i32* %34, i32* %360)
  %362 = load i32*, i32** %27, align 8
  %363 = load i32, i32* @slaed3_.i__, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  store i32 %361, i32* %365, align 4
  br label %366

366:                                              ; preds = %349
  %367 = load i32, i32* @slaed3_.i__, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* @slaed3_.i__, align 4
  br label %345

369:                                              ; preds = %345
  %370 = load i32*, i32** %16, align 8
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* %32, align 4
  store i32 1, i32* @slaed3_.j, align 4
  br label %372

372:                                              ; preds = %443, %369
  %373 = load i32, i32* @slaed3_.j, align 4
  %374 = load i32, i32* %32, align 4
  %375 = icmp sle i32 %373, %374
  br i1 %375, label %376, label %446

376:                                              ; preds = %372
  %377 = load i32*, i32** %16, align 8
  %378 = load i32, i32* %377, align 4
  store i32 %378, i32* %33, align 4
  store i32 1, i32* @slaed3_.i__, align 4
  br label %379

379:                                              ; preds = %403, %376
  %380 = load i32, i32* @slaed3_.i__, align 4
  %381 = load i32, i32* %33, align 4
  %382 = icmp sle i32 %380, %381
  br i1 %382, label %383, label %406

383:                                              ; preds = %379
  %384 = load i32*, i32** %27, align 8
  %385 = load i32, i32* @slaed3_.i__, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = load i32*, i32** %20, align 8
  %390 = load i32, i32* @slaed3_.i__, align 4
  %391 = load i32, i32* @slaed3_.j, align 4
  %392 = load i32, i32* %30, align 4
  %393 = mul nsw i32 %391, %392
  %394 = add nsw i32 %390, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %389, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = sdiv i32 %388, %397
  %399 = load i32*, i32** %28, align 8
  %400 = load i32, i32* @slaed3_.i__, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  store i32 %398, i32* %402, align 4
  br label %403

403:                                              ; preds = %383
  %404 = load i32, i32* @slaed3_.i__, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* @slaed3_.i__, align 4
  br label %379

406:                                              ; preds = %379
  %407 = load i32*, i32** %16, align 8
  %408 = load i32*, i32** %28, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 1
  %410 = call i8* @snrm2_(i32* %407, i32* %409, i32* @c__1)
  %411 = ptrtoint i8* %410 to i32
  store i32 %411, i32* @slaed3_.temp, align 4
  %412 = load i32*, i32** %16, align 8
  %413 = load i32, i32* %412, align 4
  store i32 %413, i32* %33, align 4
  store i32 1, i32* @slaed3_.i__, align 4
  br label %414

414:                                              ; preds = %439, %406
  %415 = load i32, i32* @slaed3_.i__, align 4
  %416 = load i32, i32* %33, align 4
  %417 = icmp sle i32 %415, %416
  br i1 %417, label %418, label %442

418:                                              ; preds = %414
  %419 = load i32*, i32** %25, align 8
  %420 = load i32, i32* @slaed3_.i__, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  store i32 %423, i32* @slaed3_.ii, align 4
  %424 = load i32*, i32** %28, align 8
  %425 = load i32, i32* @slaed3_.ii, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @slaed3_.temp, align 4
  %430 = sdiv i32 %428, %429
  %431 = load i32*, i32** %20, align 8
  %432 = load i32, i32* @slaed3_.i__, align 4
  %433 = load i32, i32* @slaed3_.j, align 4
  %434 = load i32, i32* %30, align 4
  %435 = mul nsw i32 %433, %434
  %436 = add nsw i32 %432, %435
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %431, i64 %437
  store i32 %430, i32* %438, align 4
  br label %439

439:                                              ; preds = %418
  %440 = load i32, i32* @slaed3_.i__, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* @slaed3_.i__, align 4
  br label %414

442:                                              ; preds = %414
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* @slaed3_.j, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* @slaed3_.j, align 4
  br label %372

446:                                              ; preds = %372
  br label %447

447:                                              ; preds = %446, %235, %169
  %448 = load i32*, i32** %17, align 8
  %449 = load i32, i32* %448, align 4
  %450 = load i32*, i32** %18, align 8
  %451 = load i32, i32* %450, align 4
  %452 = sub nsw i32 %449, %451
  store i32 %452, i32* @slaed3_.n2, align 4
  %453 = load i32*, i32** %26, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 1
  %455 = load i32, i32* %454, align 4
  %456 = load i32*, i32** %26, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 2
  %458 = load i32, i32* %457, align 4
  %459 = add nsw i32 %455, %458
  store i32 %459, i32* @slaed3_.n12, align 4
  %460 = load i32*, i32** %26, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 2
  %462 = load i32, i32* %461, align 4
  %463 = load i32*, i32** %26, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 3
  %465 = load i32, i32* %464, align 4
  %466 = add nsw i32 %462, %465
  store i32 %466, i32* @slaed3_.n23, align 4
  %467 = load i32*, i32** %16, align 8
  %468 = load i32*, i32** %20, align 8
  %469 = load i32*, i32** %26, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 1
  %471 = load i32, i32* %470, align 4
  %472 = add nsw i32 %471, 1
  %473 = load i32, i32* %30, align 4
  %474 = add nsw i32 %472, %473
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %468, i64 %475
  %477 = load i32*, i32** %21, align 8
  %478 = load i32*, i32** %28, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 1
  %480 = call i32 @slacpy_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* @slaed3_.n23, i32* %467, i32* %476, i32* %477, i32* %479, i32* @slaed3_.n23)
  %481 = load i32*, i32** %18, align 8
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @slaed3_.n12, align 4
  %484 = mul nsw i32 %482, %483
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* @slaed3_.iq2, align 4
  %486 = load i32, i32* @slaed3_.n23, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %506

488:                                              ; preds = %447
  %489 = load i32*, i32** %16, align 8
  %490 = load i32*, i32** %24, align 8
  %491 = load i32, i32* @slaed3_.iq2, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32*, i32** %28, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 1
  %496 = load i32*, i32** %20, align 8
  %497 = load i32*, i32** %18, align 8
  %498 = load i32, i32* %497, align 4
  %499 = add nsw i32 %498, 1
  %500 = load i32, i32* %30, align 4
  %501 = add nsw i32 %499, %500
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %496, i64 %502
  %504 = load i32*, i32** %21, align 8
  %505 = call i32 @sgemm_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* @slaed3_.n2, i32* %489, i32* @slaed3_.n23, i32* @c_b15, i32* %493, i32* @slaed3_.n2, i32* %495, i32* @slaed3_.n23, i32* @c_b29, i32* %503, i32* %504)
  br label %518

506:                                              ; preds = %447
  %507 = load i32*, i32** %16, align 8
  %508 = load i32*, i32** %20, align 8
  %509 = load i32*, i32** %18, align 8
  %510 = load i32, i32* %509, align 4
  %511 = add nsw i32 %510, 1
  %512 = load i32, i32* %30, align 4
  %513 = add nsw i32 %511, %512
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %508, i64 %514
  %516 = load i32*, i32** %21, align 8
  %517 = call i32 @slaset_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* @slaed3_.n2, i32* %507, i32* @c_b29, i32* @c_b29, i32* %515, i32* %516)
  br label %518

518:                                              ; preds = %506, %488
  %519 = load i32*, i32** %16, align 8
  %520 = load i32*, i32** %20, align 8
  %521 = load i32, i32* %31, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, i32* %520, i64 %522
  %524 = load i32*, i32** %21, align 8
  %525 = load i32*, i32** %28, align 8
  %526 = getelementptr inbounds i32, i32* %525, i64 1
  %527 = call i32 @slacpy_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* @slaed3_.n12, i32* %519, i32* %523, i32* %524, i32* %526, i32* @slaed3_.n12)
  %528 = load i32, i32* @slaed3_.n12, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %544

530:                                              ; preds = %518
  %531 = load i32*, i32** %18, align 8
  %532 = load i32*, i32** %16, align 8
  %533 = load i32*, i32** %24, align 8
  %534 = getelementptr inbounds i32, i32* %533, i64 1
  %535 = load i32*, i32** %18, align 8
  %536 = load i32*, i32** %28, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 1
  %538 = load i32*, i32** %20, align 8
  %539 = load i32, i32* %31, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i32, i32* %538, i64 %540
  %542 = load i32*, i32** %21, align 8
  %543 = call i32 @sgemm_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %531, i32* %532, i32* @slaed3_.n12, i32* @c_b15, i32* %534, i32* %535, i32* %537, i32* @slaed3_.n12, i32* @c_b29, i32* %541, i32* %542)
  br label %554

544:                                              ; preds = %518
  %545 = load i32*, i32** %18, align 8
  %546 = load i32*, i32** %16, align 8
  %547 = load i32*, i32** %20, align 8
  %548 = load i32, i32* %30, align 4
  %549 = add nsw i32 %548, 1
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %547, i64 %550
  %552 = load i32*, i32** %21, align 8
  %553 = call i32 @slaset_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %545, i32* %546, i32* @c_b29, i32* @c_b29, i32* %551, i32* %552)
  br label %554

554:                                              ; preds = %544, %530
  br label %555

555:                                              ; preds = %554, %160
  store i32 0, i32* %15, align 4
  br label %556

556:                                              ; preds = %555, %96, %87
  %557 = load i32, i32* %15, align 4
  ret i32 %557
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i8* @slamc3_(i32*, i32*) #1

declare dso_local i32 @slaed4_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @scopy_(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @r_sign(i32*, i32*) #1

declare dso_local i8* @snrm2_(i32*, i32*, i32*) #1

declare dso_local i32 @slacpy_(i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sgemm_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slaset_(i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
