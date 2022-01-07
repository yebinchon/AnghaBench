; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dorgbr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dorgbr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dorgbr_.i__ = internal global i32 0, align 4
@dorgbr_.j = internal global i32 0, align 4
@dorgbr_.nb = internal global i32 0, align 4
@dorgbr_.mn = internal global i32 0, align 4
@dorgbr_.iinfo = internal global i32 0, align 4
@dorgbr_.wantq = internal global i32 0, align 4
@dorgbr_.lwkopt = internal global i32 0, align 4
@dorgbr_.lquery = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"DORGQR\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"DORGLQ\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DORGBR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dorgbr_(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
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
  %26 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %27 = load i32*, i32** %17, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %22, align 4
  %29 = load i32, i32* %22, align 4
  %30 = add nsw i32 1, %29
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %23, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = sext i32 %31 to i64
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 -1
  store i32* %37, i32** %18, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 -1
  store i32* %39, i32** %19, align 8
  %40 = load i32*, i32** %21, align 8
  store i32 0, i32* %40, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @lsame_(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* @dorgbr_.wantq, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @min(i32 %44, i32 %46)
  store i32 %47, i32* @dorgbr_.mn, align 4
  %48 = load i32*, i32** %20, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, -1
  %51 = zext i1 %50 to i32
  store i32 %51, i32* @dorgbr_.lquery, align 4
  %52 = load i32, i32* @dorgbr_.wantq, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %10
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @lsame_(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %21, align 8
  store i32 -1, i32* %59, align 4
  br label %139

60:                                               ; preds = %54, %10
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32*, i32** %21, align 8
  store i32 -2, i32* %65, align 4
  br label %138

66:                                               ; preds = %60
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %106, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @dorgbr_.wantq, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %106, label %79

79:                                               ; preds = %73
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @min(i32 %83, i32 %85)
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %106, label %88

88:                                               ; preds = %79, %70
  %89 = load i32, i32* @dorgbr_.wantq, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %88
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %106, label %97

97:                                               ; preds = %91
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @min(i32 %101, i32 %103)
  %105 = icmp slt i32 %99, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %97, %91, %79, %73, %66
  %107 = load i32*, i32** %21, align 8
  store i32 -3, i32* %107, align 4
  br label %137

108:                                              ; preds = %97, %88
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32*, i32** %21, align 8
  store i32 -4, i32* %113, align 4
  br label %136

114:                                              ; preds = %108
  %115 = load i32*, i32** %17, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @max(i32 1, i32 %118)
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32*, i32** %21, align 8
  store i32 -6, i32* %122, align 4
  br label %135

123:                                              ; preds = %114
  %124 = load i32*, i32** %20, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @dorgbr_.mn, align 4
  %127 = call i32 @max(i32 1, i32 %126)
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i32, i32* @dorgbr_.lquery, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = load i32*, i32** %21, align 8
  store i32 -9, i32* %133, align 4
  br label %134

134:                                              ; preds = %132, %129, %123
  br label %135

135:                                              ; preds = %134, %121
  br label %136

136:                                              ; preds = %135, %112
  br label %137

137:                                              ; preds = %136, %106
  br label %138

138:                                              ; preds = %137, %64
  br label %139

139:                                              ; preds = %138, %58
  %140 = load i32*, i32** %21, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %139
  %144 = load i32, i32* @dorgbr_.wantq, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32*, i32** %13, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %147, i32* %148, i32* %149, i32* @c_n1, i32 6, i32 1)
  store i32 %150, i32* @dorgbr_.nb, align 4
  br label %156

151:                                              ; preds = %143
  %152 = load i32*, i32** %13, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %152, i32* %153, i32* %154, i32* @c_n1, i32 6, i32 1)
  store i32 %155, i32* @dorgbr_.nb, align 4
  br label %156

156:                                              ; preds = %151, %146
  %157 = load i32, i32* @dorgbr_.mn, align 4
  %158 = call i32 @max(i32 1, i32 %157)
  %159 = load i32, i32* @dorgbr_.nb, align 4
  %160 = mul nsw i32 %158, %159
  store i32 %160, i32* @dorgbr_.lwkopt, align 4
  %161 = load i32, i32* @dorgbr_.lwkopt, align 4
  %162 = load i32*, i32** %19, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %156, %139
  %165 = load i32*, i32** %21, align 8
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i32*, i32** %21, align 8
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %24, align 4
  %172 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %24)
  store i32 0, i32* %11, align 4
  br label %434

173:                                              ; preds = %164
  %174 = load i32, i32* @dorgbr_.lquery, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 0, i32* %11, align 4
  br label %434

177:                                              ; preds = %173
  br label %178

178:                                              ; preds = %177
  %179 = load i32*, i32** %13, align 8
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i32*, i32** %14, align 8
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182, %178
  %187 = load i32*, i32** %19, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  store i32 1, i32* %188, align 4
  store i32 0, i32* %11, align 4
  br label %434

189:                                              ; preds = %182
  %190 = load i32, i32* @dorgbr_.wantq, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %312

192:                                              ; preds = %189
  %193 = load i32*, i32** %13, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %15, align 8
  %196 = load i32, i32* %195, align 4
  %197 = icmp sge i32 %194, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %192
  %199 = load i32*, i32** %13, align 8
  %200 = load i32*, i32** %14, align 8
  %201 = load i32*, i32** %15, align 8
  %202 = load i32*, i32** %16, align 8
  %203 = load i32, i32* %23, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32*, i32** %17, align 8
  %207 = load i32*, i32** %18, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32*, i32** %19, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32*, i32** %20, align 8
  %212 = call i32 @dorgqr_(i32* %199, i32* %200, i32* %201, i32* %205, i32* %206, i32* %208, i32* %210, i32* %211, i32* @dorgbr_.iinfo)
  br label %311

213:                                              ; preds = %192
  %214 = load i32*, i32** %13, align 8
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* @dorgbr_.j, align 4
  br label %216

216:                                              ; preds = %258, %213
  %217 = load i32, i32* @dorgbr_.j, align 4
  %218 = icmp sge i32 %217, 2
  br i1 %218, label %219, label %261

219:                                              ; preds = %216
  %220 = load i32*, i32** %16, align 8
  %221 = load i32, i32* @dorgbr_.j, align 4
  %222 = load i32, i32* %22, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %220, i64 %225
  store i32 0, i32* %226, align 4
  %227 = load i32*, i32** %13, align 8
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %24, align 4
  %229 = load i32, i32* @dorgbr_.j, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* @dorgbr_.i__, align 4
  br label %231

231:                                              ; preds = %254, %219
  %232 = load i32, i32* @dorgbr_.i__, align 4
  %233 = load i32, i32* %24, align 4
  %234 = icmp sle i32 %232, %233
  br i1 %234, label %235, label %257

235:                                              ; preds = %231
  %236 = load i32*, i32** %16, align 8
  %237 = load i32, i32* @dorgbr_.i__, align 4
  %238 = load i32, i32* @dorgbr_.j, align 4
  %239 = sub nsw i32 %238, 1
  %240 = load i32, i32* %22, align 4
  %241 = mul nsw i32 %239, %240
  %242 = add nsw i32 %237, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %236, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %16, align 8
  %247 = load i32, i32* @dorgbr_.i__, align 4
  %248 = load i32, i32* @dorgbr_.j, align 4
  %249 = load i32, i32* %22, align 4
  %250 = mul nsw i32 %248, %249
  %251 = add nsw i32 %247, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %246, i64 %252
  store i32 %245, i32* %253, align 4
  br label %254

254:                                              ; preds = %235
  %255 = load i32, i32* @dorgbr_.i__, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* @dorgbr_.i__, align 4
  br label %231

257:                                              ; preds = %231
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* @dorgbr_.j, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* @dorgbr_.j, align 4
  br label %216

261:                                              ; preds = %216
  %262 = load i32*, i32** %16, align 8
  %263 = load i32, i32* %22, align 4
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  store i32 1, i32* %266, align 4
  %267 = load i32*, i32** %13, align 8
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %24, align 4
  store i32 2, i32* @dorgbr_.i__, align 4
  br label %269

269:                                              ; preds = %280, %261
  %270 = load i32, i32* @dorgbr_.i__, align 4
  %271 = load i32, i32* %24, align 4
  %272 = icmp sle i32 %270, %271
  br i1 %272, label %273, label %283

273:                                              ; preds = %269
  %274 = load i32*, i32** %16, align 8
  %275 = load i32, i32* @dorgbr_.i__, align 4
  %276 = load i32, i32* %22, align 4
  %277 = add nsw i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %274, i64 %278
  store i32 0, i32* %279, align 4
  br label %280

280:                                              ; preds = %273
  %281 = load i32, i32* @dorgbr_.i__, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* @dorgbr_.i__, align 4
  br label %269

283:                                              ; preds = %269
  %284 = load i32*, i32** %13, align 8
  %285 = load i32, i32* %284, align 4
  %286 = icmp sgt i32 %285, 1
  br i1 %286, label %287, label %310

287:                                              ; preds = %283
  %288 = load i32*, i32** %13, align 8
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %289, 1
  store i32 %290, i32* %24, align 4
  %291 = load i32*, i32** %13, align 8
  %292 = load i32, i32* %291, align 4
  %293 = sub nsw i32 %292, 1
  store i32 %293, i32* %25, align 4
  %294 = load i32*, i32** %13, align 8
  %295 = load i32, i32* %294, align 4
  %296 = sub nsw i32 %295, 1
  store i32 %296, i32* %26, align 4
  %297 = load i32*, i32** %16, align 8
  %298 = load i32, i32* %22, align 4
  %299 = shl i32 %298, 1
  %300 = add nsw i32 %299, 2
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %297, i64 %301
  %303 = load i32*, i32** %17, align 8
  %304 = load i32*, i32** %18, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 1
  %306 = load i32*, i32** %19, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  %308 = load i32*, i32** %20, align 8
  %309 = call i32 @dorgqr_(i32* %24, i32* %25, i32* %26, i32* %302, i32* %303, i32* %305, i32* %307, i32* %308, i32* @dorgbr_.iinfo)
  br label %310

310:                                              ; preds = %287, %283
  br label %311

311:                                              ; preds = %310, %198
  br label %430

312:                                              ; preds = %189
  %313 = load i32*, i32** %15, align 8
  %314 = load i32, i32* %313, align 4
  %315 = load i32*, i32** %14, align 8
  %316 = load i32, i32* %315, align 4
  %317 = icmp slt i32 %314, %316
  br i1 %317, label %318, label %333

318:                                              ; preds = %312
  %319 = load i32*, i32** %13, align 8
  %320 = load i32*, i32** %14, align 8
  %321 = load i32*, i32** %15, align 8
  %322 = load i32*, i32** %16, align 8
  %323 = load i32, i32* %23, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32*, i32** %17, align 8
  %327 = load i32*, i32** %18, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  %329 = load i32*, i32** %19, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  %331 = load i32*, i32** %20, align 8
  %332 = call i32 @dorglq_(i32* %319, i32* %320, i32* %321, i32* %325, i32* %326, i32* %328, i32* %330, i32* %331, i32* @dorgbr_.iinfo)
  br label %429

333:                                              ; preds = %312
  %334 = load i32*, i32** %16, align 8
  %335 = load i32, i32* %22, align 4
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %334, i64 %337
  store i32 1, i32* %338, align 4
  %339 = load i32*, i32** %14, align 8
  %340 = load i32, i32* %339, align 4
  store i32 %340, i32* %24, align 4
  store i32 2, i32* @dorgbr_.i__, align 4
  br label %341

341:                                              ; preds = %352, %333
  %342 = load i32, i32* @dorgbr_.i__, align 4
  %343 = load i32, i32* %24, align 4
  %344 = icmp sle i32 %342, %343
  br i1 %344, label %345, label %355

345:                                              ; preds = %341
  %346 = load i32*, i32** %16, align 8
  %347 = load i32, i32* @dorgbr_.i__, align 4
  %348 = load i32, i32* %22, align 4
  %349 = add nsw i32 %347, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %346, i64 %350
  store i32 0, i32* %351, align 4
  br label %352

352:                                              ; preds = %345
  %353 = load i32, i32* @dorgbr_.i__, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* @dorgbr_.i__, align 4
  br label %341

355:                                              ; preds = %341
  %356 = load i32*, i32** %14, align 8
  %357 = load i32, i32* %356, align 4
  store i32 %357, i32* %24, align 4
  store i32 2, i32* @dorgbr_.j, align 4
  br label %358

358:                                              ; preds = %398, %355
  %359 = load i32, i32* @dorgbr_.j, align 4
  %360 = load i32, i32* %24, align 4
  %361 = icmp sle i32 %359, %360
  br i1 %361, label %362, label %401

362:                                              ; preds = %358
  %363 = load i32, i32* @dorgbr_.j, align 4
  %364 = sub nsw i32 %363, 1
  store i32 %364, i32* @dorgbr_.i__, align 4
  br label %365

365:                                              ; preds = %387, %362
  %366 = load i32, i32* @dorgbr_.i__, align 4
  %367 = icmp sge i32 %366, 2
  br i1 %367, label %368, label %390

368:                                              ; preds = %365
  %369 = load i32*, i32** %16, align 8
  %370 = load i32, i32* @dorgbr_.i__, align 4
  %371 = sub nsw i32 %370, 1
  %372 = load i32, i32* @dorgbr_.j, align 4
  %373 = load i32, i32* %22, align 4
  %374 = mul nsw i32 %372, %373
  %375 = add nsw i32 %371, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %369, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32*, i32** %16, align 8
  %380 = load i32, i32* @dorgbr_.i__, align 4
  %381 = load i32, i32* @dorgbr_.j, align 4
  %382 = load i32, i32* %22, align 4
  %383 = mul nsw i32 %381, %382
  %384 = add nsw i32 %380, %383
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %379, i64 %385
  store i32 %378, i32* %386, align 4
  br label %387

387:                                              ; preds = %368
  %388 = load i32, i32* @dorgbr_.i__, align 4
  %389 = add nsw i32 %388, -1
  store i32 %389, i32* @dorgbr_.i__, align 4
  br label %365

390:                                              ; preds = %365
  %391 = load i32*, i32** %16, align 8
  %392 = load i32, i32* @dorgbr_.j, align 4
  %393 = load i32, i32* %22, align 4
  %394 = mul nsw i32 %392, %393
  %395 = add nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %391, i64 %396
  store i32 0, i32* %397, align 4
  br label %398

398:                                              ; preds = %390
  %399 = load i32, i32* @dorgbr_.j, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* @dorgbr_.j, align 4
  br label %358

401:                                              ; preds = %358
  %402 = load i32*, i32** %14, align 8
  %403 = load i32, i32* %402, align 4
  %404 = icmp sgt i32 %403, 1
  br i1 %404, label %405, label %428

405:                                              ; preds = %401
  %406 = load i32*, i32** %14, align 8
  %407 = load i32, i32* %406, align 4
  %408 = sub nsw i32 %407, 1
  store i32 %408, i32* %24, align 4
  %409 = load i32*, i32** %14, align 8
  %410 = load i32, i32* %409, align 4
  %411 = sub nsw i32 %410, 1
  store i32 %411, i32* %25, align 4
  %412 = load i32*, i32** %14, align 8
  %413 = load i32, i32* %412, align 4
  %414 = sub nsw i32 %413, 1
  store i32 %414, i32* %26, align 4
  %415 = load i32*, i32** %16, align 8
  %416 = load i32, i32* %22, align 4
  %417 = shl i32 %416, 1
  %418 = add nsw i32 %417, 2
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %415, i64 %419
  %421 = load i32*, i32** %17, align 8
  %422 = load i32*, i32** %18, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 1
  %424 = load i32*, i32** %19, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 1
  %426 = load i32*, i32** %20, align 8
  %427 = call i32 @dorglq_(i32* %24, i32* %25, i32* %26, i32* %420, i32* %421, i32* %423, i32* %425, i32* %426, i32* @dorgbr_.iinfo)
  br label %428

428:                                              ; preds = %405, %401
  br label %429

429:                                              ; preds = %428, %318
  br label %430

430:                                              ; preds = %429, %311
  %431 = load i32, i32* @dorgbr_.lwkopt, align 4
  %432 = load i32*, i32** %19, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 1
  store i32 %431, i32* %433, align 4
  store i32 0, i32* %11, align 4
  br label %434

434:                                              ; preds = %430, %186, %176, %168
  %435 = load i32, i32* %11, align 4
  ret i32 %435
}

declare dso_local i32 @lsame_(i8*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @dorgqr_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dorglq_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
