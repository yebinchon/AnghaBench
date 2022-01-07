; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dorghr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dorghr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dorghr_.i__ = internal global i32 0, align 4
@dorghr_.j = internal global i32 0, align 4
@dorghr_.nb = internal global i32 0, align 4
@dorghr_.nh = internal global i32 0, align 4
@dorghr_.iinfo = internal global i32 0, align 4
@dorghr_.lwkopt = internal global i32 0, align 4
@dorghr_.lquery = internal global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DORGQR\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"DORGHR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dorghr_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* %20, align 4
  %27 = add nsw i32 1, %26
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* %21, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = sext i32 %28 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 -1
  store i32* %34, i32** %16, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 -1
  store i32* %36, i32** %17, align 8
  %37 = load i32*, i32** %19, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %39, %41
  store i32 %42, i32* @dorghr_.nh, align 4
  %43 = load i32*, i32** %18, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, -1
  %46 = zext i1 %45 to i32
  store i32 %46, i32* @dorghr_.lquery, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %9
  %51 = load i32*, i32** %19, align 8
  store i32 -1, i32* %51, align 4
  br label %106

52:                                               ; preds = %9
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @max(i32 1, i32 %60)
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56, %52
  %64 = load i32*, i32** %19, align 8
  store i32 -2, i32* %64, align 4
  br label %105

65:                                               ; preds = %56
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @min(i32 %69, i32 %71)
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74, %65
  %81 = load i32*, i32** %19, align 8
  store i32 -3, i32* %81, align 4
  br label %104

82:                                               ; preds = %74
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @max(i32 1, i32 %86)
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32*, i32** %19, align 8
  store i32 -5, i32* %90, align 4
  br label %103

91:                                               ; preds = %82
  %92 = load i32*, i32** %18, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @dorghr_.nh, align 4
  %95 = call i32 @max(i32 1, i32 %94)
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i32, i32* @dorghr_.lquery, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load i32*, i32** %19, align 8
  store i32 -8, i32* %101, align 4
  br label %102

102:                                              ; preds = %100, %97, %91
  br label %103

103:                                              ; preds = %102, %89
  br label %104

104:                                              ; preds = %103, %80
  br label %105

105:                                              ; preds = %104, %63
  br label %106

106:                                              ; preds = %105, %50
  %107 = load i32*, i32** %19, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* @dorghr_.nh, i32* @dorghr_.nh, i32* @dorghr_.nh, i32* @c_n1, i32 6, i32 1)
  store i32 %111, i32* @dorghr_.nb, align 4
  %112 = load i32, i32* @dorghr_.nh, align 4
  %113 = call i32 @max(i32 1, i32 %112)
  %114 = load i32, i32* @dorghr_.nb, align 4
  %115 = mul nsw i32 %113, %114
  store i32 %115, i32* @dorghr_.lwkopt, align 4
  %116 = load i32, i32* @dorghr_.lwkopt, align 4
  %117 = load i32*, i32** %17, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %110, %106
  %120 = load i32*, i32** %19, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32*, i32** %19, align 8
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %22, align 4
  %127 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  store i32 0, i32* %10, align 4
  br label %335

128:                                              ; preds = %119
  %129 = load i32, i32* @dorghr_.lquery, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 0, i32* %10, align 4
  br label %335

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %132
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32*, i32** %17, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 1, i32* %139, align 4
  store i32 0, i32* %10, align 4
  br label %335

140:                                              ; preds = %133
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %22, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* @dorghr_.j, align 4
  br label %146

146:                                              ; preds = %223, %140
  %147 = load i32, i32* @dorghr_.j, align 4
  %148 = load i32, i32* %22, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %226

150:                                              ; preds = %146
  %151 = load i32, i32* @dorghr_.j, align 4
  %152 = sub nsw i32 %151, 1
  store i32 %152, i32* %23, align 4
  store i32 1, i32* @dorghr_.i__, align 4
  br label %153

153:                                              ; preds = %166, %150
  %154 = load i32, i32* @dorghr_.i__, align 4
  %155 = load i32, i32* %23, align 4
  %156 = icmp sle i32 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %153
  %158 = load i32*, i32** %14, align 8
  %159 = load i32, i32* @dorghr_.i__, align 4
  %160 = load i32, i32* @dorghr_.j, align 4
  %161 = load i32, i32* %20, align 4
  %162 = mul nsw i32 %160, %161
  %163 = add nsw i32 %159, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %158, i64 %164
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %157
  %167 = load i32, i32* @dorghr_.i__, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @dorghr_.i__, align 4
  br label %153

169:                                              ; preds = %153
  %170 = load i32*, i32** %13, align 8
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %23, align 4
  %172 = load i32, i32* @dorghr_.j, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* @dorghr_.i__, align 4
  br label %174

174:                                              ; preds = %197, %169
  %175 = load i32, i32* @dorghr_.i__, align 4
  %176 = load i32, i32* %23, align 4
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %178, label %200

178:                                              ; preds = %174
  %179 = load i32*, i32** %14, align 8
  %180 = load i32, i32* @dorghr_.i__, align 4
  %181 = load i32, i32* @dorghr_.j, align 4
  %182 = sub nsw i32 %181, 1
  %183 = load i32, i32* %20, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %180, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %179, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %14, align 8
  %190 = load i32, i32* @dorghr_.i__, align 4
  %191 = load i32, i32* @dorghr_.j, align 4
  %192 = load i32, i32* %20, align 4
  %193 = mul nsw i32 %191, %192
  %194 = add nsw i32 %190, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %189, i64 %195
  store i32 %188, i32* %196, align 4
  br label %197

197:                                              ; preds = %178
  %198 = load i32, i32* @dorghr_.i__, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* @dorghr_.i__, align 4
  br label %174

200:                                              ; preds = %174
  %201 = load i32*, i32** %11, align 8
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %23, align 4
  %203 = load i32*, i32** %13, align 8
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* @dorghr_.i__, align 4
  br label %206

206:                                              ; preds = %219, %200
  %207 = load i32, i32* @dorghr_.i__, align 4
  %208 = load i32, i32* %23, align 4
  %209 = icmp sle i32 %207, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %206
  %211 = load i32*, i32** %14, align 8
  %212 = load i32, i32* @dorghr_.i__, align 4
  %213 = load i32, i32* @dorghr_.j, align 4
  %214 = load i32, i32* %20, align 4
  %215 = mul nsw i32 %213, %214
  %216 = add nsw i32 %212, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %211, i64 %217
  store i32 0, i32* %218, align 4
  br label %219

219:                                              ; preds = %210
  %220 = load i32, i32* @dorghr_.i__, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* @dorghr_.i__, align 4
  br label %206

222:                                              ; preds = %206
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* @dorghr_.j, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* @dorghr_.j, align 4
  br label %146

226:                                              ; preds = %146
  %227 = load i32*, i32** %12, align 8
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %22, align 4
  store i32 1, i32* @dorghr_.j, align 4
  br label %229

229:                                              ; preds = %261, %226
  %230 = load i32, i32* @dorghr_.j, align 4
  %231 = load i32, i32* %22, align 4
  %232 = icmp sle i32 %230, %231
  br i1 %232, label %233, label %264

233:                                              ; preds = %229
  %234 = load i32*, i32** %11, align 8
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %23, align 4
  store i32 1, i32* @dorghr_.i__, align 4
  br label %236

236:                                              ; preds = %249, %233
  %237 = load i32, i32* @dorghr_.i__, align 4
  %238 = load i32, i32* %23, align 4
  %239 = icmp sle i32 %237, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %236
  %241 = load i32*, i32** %14, align 8
  %242 = load i32, i32* @dorghr_.i__, align 4
  %243 = load i32, i32* @dorghr_.j, align 4
  %244 = load i32, i32* %20, align 4
  %245 = mul nsw i32 %243, %244
  %246 = add nsw i32 %242, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %241, i64 %247
  store i32 0, i32* %248, align 4
  br label %249

249:                                              ; preds = %240
  %250 = load i32, i32* @dorghr_.i__, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* @dorghr_.i__, align 4
  br label %236

252:                                              ; preds = %236
  %253 = load i32*, i32** %14, align 8
  %254 = load i32, i32* @dorghr_.j, align 4
  %255 = load i32, i32* @dorghr_.j, align 4
  %256 = load i32, i32* %20, align 4
  %257 = mul nsw i32 %255, %256
  %258 = add nsw i32 %254, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %253, i64 %259
  store i32 1, i32* %260, align 4
  br label %261

261:                                              ; preds = %252
  %262 = load i32, i32* @dorghr_.j, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* @dorghr_.j, align 4
  br label %229

264:                                              ; preds = %229
  %265 = load i32*, i32** %11, align 8
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %22, align 4
  %267 = load i32*, i32** %13, align 8
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* @dorghr_.j, align 4
  br label %270

270:                                              ; preds = %302, %264
  %271 = load i32, i32* @dorghr_.j, align 4
  %272 = load i32, i32* %22, align 4
  %273 = icmp sle i32 %271, %272
  br i1 %273, label %274, label %305

274:                                              ; preds = %270
  %275 = load i32*, i32** %11, align 8
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %23, align 4
  store i32 1, i32* @dorghr_.i__, align 4
  br label %277

277:                                              ; preds = %290, %274
  %278 = load i32, i32* @dorghr_.i__, align 4
  %279 = load i32, i32* %23, align 4
  %280 = icmp sle i32 %278, %279
  br i1 %280, label %281, label %293

281:                                              ; preds = %277
  %282 = load i32*, i32** %14, align 8
  %283 = load i32, i32* @dorghr_.i__, align 4
  %284 = load i32, i32* @dorghr_.j, align 4
  %285 = load i32, i32* %20, align 4
  %286 = mul nsw i32 %284, %285
  %287 = add nsw i32 %283, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %282, i64 %288
  store i32 0, i32* %289, align 4
  br label %290

290:                                              ; preds = %281
  %291 = load i32, i32* @dorghr_.i__, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* @dorghr_.i__, align 4
  br label %277

293:                                              ; preds = %277
  %294 = load i32*, i32** %14, align 8
  %295 = load i32, i32* @dorghr_.j, align 4
  %296 = load i32, i32* @dorghr_.j, align 4
  %297 = load i32, i32* %20, align 4
  %298 = mul nsw i32 %296, %297
  %299 = add nsw i32 %295, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %294, i64 %300
  store i32 1, i32* %301, align 4
  br label %302

302:                                              ; preds = %293
  %303 = load i32, i32* @dorghr_.j, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* @dorghr_.j, align 4
  br label %270

305:                                              ; preds = %270
  %306 = load i32, i32* @dorghr_.nh, align 4
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %331

308:                                              ; preds = %305
  %309 = load i32*, i32** %14, align 8
  %310 = load i32*, i32** %12, align 8
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, 1
  %313 = load i32*, i32** %12, align 8
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, 1
  %316 = load i32, i32* %20, align 4
  %317 = mul nsw i32 %315, %316
  %318 = add nsw i32 %312, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %309, i64 %319
  %321 = load i32*, i32** %15, align 8
  %322 = load i32*, i32** %16, align 8
  %323 = load i32*, i32** %12, align 8
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  %327 = load i32*, i32** %17, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  %329 = load i32*, i32** %18, align 8
  %330 = call i32 @dorgqr_(i32* @dorghr_.nh, i32* @dorghr_.nh, i32* @dorghr_.nh, i32* %320, i32* %321, i32* %326, i32* %328, i32* %329, i32* @dorghr_.iinfo)
  br label %331

331:                                              ; preds = %308, %305
  %332 = load i32, i32* @dorghr_.lwkopt, align 4
  %333 = load i32*, i32** %17, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 1
  store i32 %332, i32* %334, align 4
  store i32 0, i32* %10, align 4
  br label %335

335:                                              ; preds = %331, %137, %131, %123
  %336 = load i32, i32* %10, align 4
  ret i32 %336
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @dorgqr_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
