; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaed1_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaed1_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slaed1_.i__ = internal global i32 0, align 4
@slaed1_.k = internal global i32 0, align 4
@slaed1_.n1 = internal global i32 0, align 4
@slaed1_.n2 = internal global i32 0, align 4
@slaed1_.is = internal global i32 0, align 4
@slaed1_.iw = internal global i32 0, align 4
@slaed1_.iz = internal global i32 0, align 4
@slaed1_.iq2 = internal global i32 0, align 4
@slaed1_.cpp1 = internal global i32 0, align 4
@slaed1_.indx = internal global i32 0, align 4
@slaed1_.indxc = internal global i32 0, align 4
@slaed1_.indxp = internal global i32 0, align 4
@slaed1_.idlmda = internal global i32 0, align 4
@slaed1_.coltyp = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SLAED1\00", align 1
@c__1 = common dso_local global i32 0, align 4
@c_n1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slaed1_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 -1
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %22, align 4
  %30 = load i32, i32* %22, align 4
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %23, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = sext i32 %32 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 -1
  store i32* %38, i32** %16, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 -1
  store i32* %40, i32** %19, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 -1
  store i32* %42, i32** %20, align 8
  %43 = load i32*, i32** %21, align 8
  store i32 0, i32* %43, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %10
  %48 = load i32*, i32** %21, align 8
  store i32 -1, i32* %48, align 4
  br label %79

49:                                               ; preds = %10
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @max(i32 1, i32 %53)
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32*, i32** %21, align 8
  store i32 -4, i32* %57, align 4
  br label %78

58:                                               ; preds = %49
  store i32 1, i32* %24, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %25, align 4
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* %25, align 4
  %64 = call i32 @min(i32 %62, i32 %63)
  %65 = load i32*, i32** %18, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %58
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 2
  %72 = load i32*, i32** %18, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68, %58
  %76 = load i32*, i32** %21, align 8
  store i32 -7, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %68
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i32*, i32** %21, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32*, i32** %21, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %24, align 4
  %87 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %24)
  store i32 0, i32* %11, align 4
  br label %318

88:                                               ; preds = %79
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, i32* %11, align 4
  br label %318

93:                                               ; preds = %88
  store i32 1, i32* @slaed1_.iz, align 4
  %94 = load i32, i32* @slaed1_.iz, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %94, %96
  store i32 %97, i32* @slaed1_.idlmda, align 4
  %98 = load i32, i32* @slaed1_.idlmda, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %98, %100
  store i32 %101, i32* @slaed1_.iw, align 4
  %102 = load i32, i32* @slaed1_.iw, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %102, %104
  store i32 %105, i32* @slaed1_.iq2, align 4
  store i32 1, i32* @slaed1_.indx, align 4
  %106 = load i32, i32* @slaed1_.indx, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %106, %108
  store i32 %109, i32* @slaed1_.indxc, align 4
  %110 = load i32, i32* @slaed1_.indxc, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %110, %112
  store i32 %113, i32* @slaed1_.coltyp, align 4
  %114 = load i32, i32* @slaed1_.coltyp, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %114, %116
  store i32 %117, i32* @slaed1_.indxp, align 4
  %118 = load i32*, i32** %18, align 8
  %119 = load i32*, i32** %14, align 8
  %120 = load i32*, i32** %18, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %22, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  %126 = load i32*, i32** %15, align 8
  %127 = load i32*, i32** %19, align 8
  %128 = load i32, i32* @slaed1_.iz, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = call i32 @scopy_(i32* %118, i32* %125, i32* %126, i32* %130, i32* @c__1)
  %132 = load i32*, i32** %18, align 8
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @slaed1_.cpp1, align 4
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %18, align 8
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %136, %138
  store i32 %139, i32* %24, align 4
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* @slaed1_.cpp1, align 4
  %142 = load i32, i32* @slaed1_.cpp1, align 4
  %143 = load i32, i32* %22, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %140, i64 %146
  %148 = load i32*, i32** %15, align 8
  %149 = load i32*, i32** %19, align 8
  %150 = load i32, i32* @slaed1_.iz, align 4
  %151 = load i32*, i32** %18, align 8
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %150, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %149, i64 %154
  %156 = call i32 @scopy_(i32* %24, i32* %147, i32* %148, i32* %155, i32* @c__1)
  %157 = load i32*, i32** %12, align 8
  %158 = load i32*, i32** %18, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* %23, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32*, i32** %15, align 8
  %166 = load i32*, i32** %16, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32*, i32** %17, align 8
  %169 = load i32*, i32** %19, align 8
  %170 = load i32, i32* @slaed1_.iz, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32*, i32** %19, align 8
  %174 = load i32, i32* @slaed1_.idlmda, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32*, i32** %19, align 8
  %178 = load i32, i32* @slaed1_.iw, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32*, i32** %19, align 8
  %182 = load i32, i32* @slaed1_.iq2, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32*, i32** %20, align 8
  %186 = load i32, i32* @slaed1_.indx, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32*, i32** %20, align 8
  %190 = load i32, i32* @slaed1_.indxc, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32*, i32** %20, align 8
  %194 = load i32, i32* @slaed1_.indxp, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32*, i32** %20, align 8
  %198 = load i32, i32* @slaed1_.coltyp, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32*, i32** %21, align 8
  %202 = call i32 @slaed2_(i32* @slaed1_.k, i32* %157, i32* %158, i32* %160, i32* %164, i32* %165, i32* %167, i32* %168, i32* %172, i32* %176, i32* %180, i32* %184, i32* %188, i32* %192, i32* %196, i32* %200, i32* %201)
  %203 = load i32*, i32** %21, align 8
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %93
  br label %317

207:                                              ; preds = %93
  %208 = load i32, i32* @slaed1_.k, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %299

210:                                              ; preds = %207
  %211 = load i32*, i32** %20, align 8
  %212 = load i32, i32* @slaed1_.coltyp, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %20, align 8
  %217 = load i32, i32* @slaed1_.coltyp, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %215, %221
  %223 = load i32*, i32** %18, align 8
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %222, %224
  %226 = load i32*, i32** %20, align 8
  %227 = load i32, i32* @slaed1_.coltyp, align 4
  %228 = add nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %20, align 8
  %233 = load i32, i32* @slaed1_.coltyp, align 4
  %234 = add nsw i32 %233, 2
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %231, %237
  %239 = load i32*, i32** %12, align 8
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %18, align 8
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %240, %242
  %244 = mul nsw i32 %238, %243
  %245 = add nsw i32 %225, %244
  %246 = load i32, i32* @slaed1_.iq2, align 4
  %247 = add nsw i32 %245, %246
  store i32 %247, i32* @slaed1_.is, align 4
  %248 = load i32*, i32** %12, align 8
  %249 = load i32*, i32** %18, align 8
  %250 = load i32*, i32** %13, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  %252 = load i32*, i32** %14, align 8
  %253 = load i32, i32* %23, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32*, i32** %15, align 8
  %257 = load i32*, i32** %17, align 8
  %258 = load i32*, i32** %19, align 8
  %259 = load i32, i32* @slaed1_.idlmda, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32*, i32** %19, align 8
  %263 = load i32, i32* @slaed1_.iq2, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32*, i32** %20, align 8
  %267 = load i32, i32* @slaed1_.indxc, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32*, i32** %20, align 8
  %271 = load i32, i32* @slaed1_.coltyp, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32*, i32** %19, align 8
  %275 = load i32, i32* @slaed1_.iw, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32*, i32** %19, align 8
  %279 = load i32, i32* @slaed1_.is, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32*, i32** %21, align 8
  %283 = call i32 @slaed3_(i32* @slaed1_.k, i32* %248, i32* %249, i32* %251, i32* %255, i32* %256, i32* %257, i32* %261, i32* %265, i32* %269, i32* %273, i32* %277, i32* %281, i32* %282)
  %284 = load i32*, i32** %21, align 8
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %210
  br label %317

288:                                              ; preds = %210
  %289 = load i32, i32* @slaed1_.k, align 4
  store i32 %289, i32* @slaed1_.n1, align 4
  %290 = load i32*, i32** %12, align 8
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @slaed1_.k, align 4
  %293 = sub nsw i32 %291, %292
  store i32 %293, i32* @slaed1_.n2, align 4
  %294 = load i32*, i32** %13, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  %296 = load i32*, i32** %16, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = call i32 @slamrg_(i32* @slaed1_.n1, i32* @slaed1_.n2, i32* %295, i32* @c__1, i32* @c_n1, i32* %297)
  br label %316

299:                                              ; preds = %207
  %300 = load i32*, i32** %12, align 8
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %24, align 4
  store i32 1, i32* @slaed1_.i__, align 4
  br label %302

302:                                              ; preds = %312, %299
  %303 = load i32, i32* @slaed1_.i__, align 4
  %304 = load i32, i32* %24, align 4
  %305 = icmp sle i32 %303, %304
  br i1 %305, label %306, label %315

306:                                              ; preds = %302
  %307 = load i32, i32* @slaed1_.i__, align 4
  %308 = load i32*, i32** %16, align 8
  %309 = load i32, i32* @slaed1_.i__, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %307, i32* %311, align 4
  br label %312

312:                                              ; preds = %306
  %313 = load i32, i32* @slaed1_.i__, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* @slaed1_.i__, align 4
  br label %302

315:                                              ; preds = %302
  br label %316

316:                                              ; preds = %315, %288
  br label %317

317:                                              ; preds = %316, %287, %206
  store i32 0, i32* %11, align 4
  br label %318

318:                                              ; preds = %317, %92, %83
  %319 = load i32, i32* %11, align 4
  ret i32 %319
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @scopy_(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slaed2_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slaed3_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slamrg_(i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
