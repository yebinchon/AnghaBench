; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dorgqr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dorgqr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dorgqr_.i__ = internal global i32 0, align 4
@dorgqr_.j = internal global i32 0, align 4
@dorgqr_.l = internal global i32 0, align 4
@dorgqr_.ib = internal global i32 0, align 4
@dorgqr_.nb = internal global i32 0, align 4
@dorgqr_.ki = internal global i32 0, align 4
@dorgqr_.kk = internal global i32 0, align 4
@dorgqr_.nx = internal global i32 0, align 4
@dorgqr_.iws = internal global i32 0, align 4
@dorgqr_.nbmin = internal global i32 0, align 4
@dorgqr_.iinfo = internal global i32 0, align 4
@dorgqr_.ldwork = internal global i32 0, align 4
@dorgqr_.lwkopt = internal global i32 0, align 4
@dorgqr_.lquery = internal global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DORGQR\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@c__3 = common dso_local global i32 0, align 4
@c__2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Forward\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Columnwise\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dorgqr_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
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
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %20, align 4
  %28 = add nsw i32 1, %27
  store i32 %28, i32* %21, align 4
  %29 = load i32, i32* %21, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = sext i32 %29 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 -1
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 -1
  store i32* %37, i32** %17, align 8
  %38 = load i32*, i32** %19, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %39, i32* %40, i32* %41, i32* @c_n1, i32 6, i32 1)
  store i32 %42, i32* @dorgqr_.nb, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @max(i32 1, i32 %44)
  %46 = load i32, i32* @dorgqr_.nb, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* @dorgqr_.lwkopt, align 4
  %48 = load i32, i32* @dorgqr_.lwkopt, align 4
  %49 = load i32*, i32** %17, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %18, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, -1
  %54 = zext i1 %53 to i32
  store i32 %54, i32* @dorgqr_.lquery, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %9
  %59 = load i32*, i32** %19, align 8
  store i32 -1, i32* %59, align 4
  br label %109

60:                                               ; preds = %9
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64, %60
  %71 = load i32*, i32** %19, align 8
  store i32 -2, i32* %71, align 4
  br label %108

72:                                               ; preds = %64
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76, %72
  %83 = load i32*, i32** %19, align 8
  store i32 -3, i32* %83, align 4
  br label %107

84:                                               ; preds = %76
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @max(i32 1, i32 %88)
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32*, i32** %19, align 8
  store i32 -5, i32* %92, align 4
  br label %106

93:                                               ; preds = %84
  %94 = load i32*, i32** %18, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @max(i32 1, i32 %97)
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32, i32* @dorgqr_.lquery, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = load i32*, i32** %19, align 8
  store i32 -8, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %100, %93
  br label %106

106:                                              ; preds = %105, %91
  br label %107

107:                                              ; preds = %106, %82
  br label %108

108:                                              ; preds = %107, %70
  br label %109

109:                                              ; preds = %108, %58
  %110 = load i32*, i32** %19, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32*, i32** %19, align 8
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %22, align 4
  %117 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %22)
  store i32 0, i32* %10, align 4
  br label %441

118:                                              ; preds = %109
  %119 = load i32, i32* @dorgqr_.lquery, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %10, align 4
  br label %441

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122
  %124 = load i32*, i32** %12, align 8
  %125 = load i32, i32* %124, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32*, i32** %17, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 1, i32* %129, align 4
  store i32 0, i32* %10, align 4
  br label %441

130:                                              ; preds = %123
  store i32 2, i32* @dorgqr_.nbmin, align 4
  store i32 0, i32* @dorgqr_.nx, align 4
  %131 = load i32*, i32** %12, align 8
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* @dorgqr_.iws, align 4
  %133 = load i32, i32* @dorgqr_.nb, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %176

135:                                              ; preds = %130
  %136 = load i32, i32* @dorgqr_.nb, align 4
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %176

140:                                              ; preds = %135
  store i32 0, i32* %22, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @ilaenv_(i32* @c__3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %141, i32* %142, i32* %143, i32* @c_n1, i32 6, i32 1)
  store i32 %144, i32* %23, align 4
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* %23, align 4
  %147 = call i32 @max(i32 %145, i32 %146)
  store i32 %147, i32* @dorgqr_.nx, align 4
  %148 = load i32, i32* @dorgqr_.nx, align 4
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %175

152:                                              ; preds = %140
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* @dorgqr_.ldwork, align 4
  %155 = load i32, i32* @dorgqr_.ldwork, align 4
  %156 = load i32, i32* @dorgqr_.nb, align 4
  %157 = mul nsw i32 %155, %156
  store i32 %157, i32* @dorgqr_.iws, align 4
  %158 = load i32*, i32** %18, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @dorgqr_.iws, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %152
  %163 = load i32*, i32** %18, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @dorgqr_.ldwork, align 4
  %166 = sdiv i32 %164, %165
  store i32 %166, i32* @dorgqr_.nb, align 4
  store i32 2, i32* %22, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = load i32*, i32** %12, align 8
  %169 = load i32*, i32** %13, align 8
  %170 = call i32 @ilaenv_(i32* @c__2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %167, i32* %168, i32* %169, i32* @c_n1, i32 6, i32 1)
  store i32 %170, i32* %23, align 4
  %171 = load i32, i32* %22, align 4
  %172 = load i32, i32* %23, align 4
  %173 = call i32 @max(i32 %171, i32 %172)
  store i32 %173, i32* @dorgqr_.nbmin, align 4
  br label %174

174:                                              ; preds = %162, %152
  br label %175

175:                                              ; preds = %174, %140
  br label %176

176:                                              ; preds = %175, %135, %130
  %177 = load i32, i32* @dorgqr_.nb, align 4
  %178 = load i32, i32* @dorgqr_.nbmin, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %239

180:                                              ; preds = %176
  %181 = load i32, i32* @dorgqr_.nb, align 4
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %239

185:                                              ; preds = %180
  %186 = load i32, i32* @dorgqr_.nx, align 4
  %187 = load i32*, i32** %13, align 8
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %239

190:                                              ; preds = %185
  %191 = load i32*, i32** %13, align 8
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @dorgqr_.nx, align 4
  %194 = sub nsw i32 %192, %193
  %195 = sub nsw i32 %194, 1
  %196 = load i32, i32* @dorgqr_.nb, align 4
  %197 = sdiv i32 %195, %196
  %198 = load i32, i32* @dorgqr_.nb, align 4
  %199 = mul nsw i32 %197, %198
  store i32 %199, i32* @dorgqr_.ki, align 4
  %200 = load i32*, i32** %13, align 8
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %22, align 4
  %202 = load i32, i32* @dorgqr_.ki, align 4
  %203 = load i32, i32* @dorgqr_.nb, align 4
  %204 = add nsw i32 %202, %203
  store i32 %204, i32* %23, align 4
  %205 = load i32, i32* %22, align 4
  %206 = load i32, i32* %23, align 4
  %207 = call i32 @min(i32 %205, i32 %206)
  store i32 %207, i32* @dorgqr_.kk, align 4
  %208 = load i32*, i32** %12, align 8
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %22, align 4
  %210 = load i32, i32* @dorgqr_.kk, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* @dorgqr_.j, align 4
  br label %212

212:                                              ; preds = %235, %190
  %213 = load i32, i32* @dorgqr_.j, align 4
  %214 = load i32, i32* %22, align 4
  %215 = icmp sle i32 %213, %214
  br i1 %215, label %216, label %238

216:                                              ; preds = %212
  %217 = load i32, i32* @dorgqr_.kk, align 4
  store i32 %217, i32* %23, align 4
  store i32 1, i32* @dorgqr_.i__, align 4
  br label %218

218:                                              ; preds = %231, %216
  %219 = load i32, i32* @dorgqr_.i__, align 4
  %220 = load i32, i32* %23, align 4
  %221 = icmp sle i32 %219, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %218
  %223 = load i32*, i32** %14, align 8
  %224 = load i32, i32* @dorgqr_.i__, align 4
  %225 = load i32, i32* @dorgqr_.j, align 4
  %226 = load i32, i32* %20, align 4
  %227 = mul nsw i32 %225, %226
  %228 = add nsw i32 %224, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %223, i64 %229
  store i32 0, i32* %230, align 4
  br label %231

231:                                              ; preds = %222
  %232 = load i32, i32* @dorgqr_.i__, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* @dorgqr_.i__, align 4
  br label %218

234:                                              ; preds = %218
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* @dorgqr_.j, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* @dorgqr_.j, align 4
  br label %212

238:                                              ; preds = %212
  br label %240

239:                                              ; preds = %185, %180, %176
  store i32 0, i32* @dorgqr_.kk, align 4
  br label %240

240:                                              ; preds = %239, %238
  %241 = load i32, i32* @dorgqr_.kk, align 4
  %242 = load i32*, i32** %12, align 8
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %241, %243
  br i1 %244, label %245, label %277

245:                                              ; preds = %240
  %246 = load i32*, i32** %11, align 8
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @dorgqr_.kk, align 4
  %249 = sub nsw i32 %247, %248
  store i32 %249, i32* %22, align 4
  %250 = load i32*, i32** %12, align 8
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @dorgqr_.kk, align 4
  %253 = sub nsw i32 %251, %252
  store i32 %253, i32* %23, align 4
  %254 = load i32*, i32** %13, align 8
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @dorgqr_.kk, align 4
  %257 = sub nsw i32 %255, %256
  store i32 %257, i32* %24, align 4
  %258 = load i32*, i32** %14, align 8
  %259 = load i32, i32* @dorgqr_.kk, align 4
  %260 = add nsw i32 %259, 1
  %261 = load i32, i32* @dorgqr_.kk, align 4
  %262 = add nsw i32 %261, 1
  %263 = load i32, i32* %20, align 4
  %264 = mul nsw i32 %262, %263
  %265 = add nsw i32 %260, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %258, i64 %266
  %268 = load i32*, i32** %15, align 8
  %269 = load i32*, i32** %16, align 8
  %270 = load i32, i32* @dorgqr_.kk, align 4
  %271 = add nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32*, i32** %17, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  %276 = call i32 @dorg2r_(i32* %22, i32* %23, i32* %24, i32* %267, i32* %268, i32* %273, i32* %275, i32* @dorgqr_.iinfo)
  br label %277

277:                                              ; preds = %245, %240
  %278 = load i32, i32* @dorgqr_.kk, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %437

280:                                              ; preds = %277
  %281 = load i32, i32* @dorgqr_.nb, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %22, align 4
  %283 = load i32, i32* @dorgqr_.ki, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* @dorgqr_.i__, align 4
  br label %285

285:                                              ; preds = %432, %280
  %286 = load i32, i32* %22, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load i32, i32* @dorgqr_.i__, align 4
  %290 = icmp sge i32 %289, 1
  %291 = zext i1 %290 to i32
  br label %296

292:                                              ; preds = %285
  %293 = load i32, i32* @dorgqr_.i__, align 4
  %294 = icmp sle i32 %293, 1
  %295 = zext i1 %294 to i32
  br label %296

296:                                              ; preds = %292, %288
  %297 = phi i32 [ %291, %288 ], [ %295, %292 ]
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %436

299:                                              ; preds = %296
  %300 = load i32, i32* @dorgqr_.nb, align 4
  store i32 %300, i32* %23, align 4
  %301 = load i32*, i32** %13, align 8
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @dorgqr_.i__, align 4
  %304 = sub nsw i32 %302, %303
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %24, align 4
  %306 = load i32, i32* %23, align 4
  %307 = load i32, i32* %24, align 4
  %308 = call i32 @min(i32 %306, i32 %307)
  store i32 %308, i32* @dorgqr_.ib, align 4
  %309 = load i32, i32* @dorgqr_.i__, align 4
  %310 = load i32, i32* @dorgqr_.ib, align 4
  %311 = add nsw i32 %309, %310
  %312 = load i32*, i32** %12, align 8
  %313 = load i32, i32* %312, align 4
  %314 = icmp sle i32 %311, %313
  br i1 %314, label %315, label %377

315:                                              ; preds = %299
  %316 = load i32*, i32** %11, align 8
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @dorgqr_.i__, align 4
  %319 = sub nsw i32 %317, %318
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %23, align 4
  %321 = load i32*, i32** %14, align 8
  %322 = load i32, i32* @dorgqr_.i__, align 4
  %323 = load i32, i32* @dorgqr_.i__, align 4
  %324 = load i32, i32* %20, align 4
  %325 = mul nsw i32 %323, %324
  %326 = add nsw i32 %322, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %321, i64 %327
  %329 = load i32*, i32** %15, align 8
  %330 = load i32*, i32** %16, align 8
  %331 = load i32, i32* @dorgqr_.i__, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32*, i32** %17, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  %336 = call i32 @dlarft_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %23, i32* @dorgqr_.ib, i32* %328, i32* %329, i32* %333, i32* %335, i32* @dorgqr_.ldwork)
  %337 = load i32*, i32** %11, align 8
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @dorgqr_.i__, align 4
  %340 = sub nsw i32 %338, %339
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %23, align 4
  %342 = load i32*, i32** %12, align 8
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @dorgqr_.i__, align 4
  %345 = sub nsw i32 %343, %344
  %346 = load i32, i32* @dorgqr_.ib, align 4
  %347 = sub nsw i32 %345, %346
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %24, align 4
  %349 = load i32*, i32** %14, align 8
  %350 = load i32, i32* @dorgqr_.i__, align 4
  %351 = load i32, i32* @dorgqr_.i__, align 4
  %352 = load i32, i32* %20, align 4
  %353 = mul nsw i32 %351, %352
  %354 = add nsw i32 %350, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %349, i64 %355
  %357 = load i32*, i32** %15, align 8
  %358 = load i32*, i32** %17, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 1
  %360 = load i32*, i32** %14, align 8
  %361 = load i32, i32* @dorgqr_.i__, align 4
  %362 = load i32, i32* @dorgqr_.i__, align 4
  %363 = load i32, i32* @dorgqr_.ib, align 4
  %364 = add nsw i32 %362, %363
  %365 = load i32, i32* %20, align 4
  %366 = mul nsw i32 %364, %365
  %367 = add nsw i32 %361, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %360, i64 %368
  %370 = load i32*, i32** %15, align 8
  %371 = load i32*, i32** %17, align 8
  %372 = load i32, i32* @dorgqr_.ib, align 4
  %373 = add nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %371, i64 %374
  %376 = call i32 @dlarfb_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %23, i32* %24, i32* @dorgqr_.ib, i32* %356, i32* %357, i32* %359, i32* @dorgqr_.ldwork, i32* %369, i32* %370, i32* %375, i32* @dorgqr_.ldwork)
  br label %377

377:                                              ; preds = %315, %299
  %378 = load i32*, i32** %11, align 8
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* @dorgqr_.i__, align 4
  %381 = sub nsw i32 %379, %380
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %23, align 4
  %383 = load i32*, i32** %14, align 8
  %384 = load i32, i32* @dorgqr_.i__, align 4
  %385 = load i32, i32* @dorgqr_.i__, align 4
  %386 = load i32, i32* %20, align 4
  %387 = mul nsw i32 %385, %386
  %388 = add nsw i32 %384, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %383, i64 %389
  %391 = load i32*, i32** %15, align 8
  %392 = load i32*, i32** %16, align 8
  %393 = load i32, i32* @dorgqr_.i__, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32*, i32** %17, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 1
  %398 = call i32 @dorg2r_(i32* %23, i32* @dorgqr_.ib, i32* @dorgqr_.ib, i32* %390, i32* %391, i32* %395, i32* %397, i32* @dorgqr_.iinfo)
  %399 = load i32, i32* @dorgqr_.i__, align 4
  %400 = load i32, i32* @dorgqr_.ib, align 4
  %401 = add nsw i32 %399, %400
  %402 = sub nsw i32 %401, 1
  store i32 %402, i32* %23, align 4
  %403 = load i32, i32* @dorgqr_.i__, align 4
  store i32 %403, i32* @dorgqr_.j, align 4
  br label %404

404:                                              ; preds = %428, %377
  %405 = load i32, i32* @dorgqr_.j, align 4
  %406 = load i32, i32* %23, align 4
  %407 = icmp sle i32 %405, %406
  br i1 %407, label %408, label %431

408:                                              ; preds = %404
  %409 = load i32, i32* @dorgqr_.i__, align 4
  %410 = sub nsw i32 %409, 1
  store i32 %410, i32* %24, align 4
  store i32 1, i32* @dorgqr_.l, align 4
  br label %411

411:                                              ; preds = %424, %408
  %412 = load i32, i32* @dorgqr_.l, align 4
  %413 = load i32, i32* %24, align 4
  %414 = icmp sle i32 %412, %413
  br i1 %414, label %415, label %427

415:                                              ; preds = %411
  %416 = load i32*, i32** %14, align 8
  %417 = load i32, i32* @dorgqr_.l, align 4
  %418 = load i32, i32* @dorgqr_.j, align 4
  %419 = load i32, i32* %20, align 4
  %420 = mul nsw i32 %418, %419
  %421 = add nsw i32 %417, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %416, i64 %422
  store i32 0, i32* %423, align 4
  br label %424

424:                                              ; preds = %415
  %425 = load i32, i32* @dorgqr_.l, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* @dorgqr_.l, align 4
  br label %411

427:                                              ; preds = %411
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* @dorgqr_.j, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* @dorgqr_.j, align 4
  br label %404

431:                                              ; preds = %404
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %22, align 4
  %434 = load i32, i32* @dorgqr_.i__, align 4
  %435 = add nsw i32 %434, %433
  store i32 %435, i32* @dorgqr_.i__, align 4
  br label %285

436:                                              ; preds = %296
  br label %437

437:                                              ; preds = %436, %277
  %438 = load i32, i32* @dorgqr_.iws, align 4
  %439 = load i32*, i32** %17, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 1
  store i32 %438, i32* %440, align 4
  store i32 0, i32* %10, align 4
  br label %441

441:                                              ; preds = %437, %127, %121, %113
  %442 = load i32, i32* %10, align 4
  ret i32 %442
}

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dorg2r_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dlarft_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dlarfb_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
