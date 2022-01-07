; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slascl_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slascl_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slascl_.i__ = internal global i32 0, align 4
@slascl_.j = internal global i32 0, align 4
@slascl_.k1 = internal global i32 0, align 4
@slascl_.k2 = internal global i32 0, align 4
@slascl_.k3 = internal global i32 0, align 4
@slascl_.k4 = internal global i32 0, align 4
@slascl_.mul = internal global float 0.000000e+00, align 4
@slascl_.cto1 = internal global float 0.000000e+00, align 4
@slascl_.done = internal global i8* null, align 8
@slascl_.ctoc = internal global float 0.000000e+00, align 4
@slascl_.itype = internal global i32 0, align 4
@slascl_.cfrom1 = internal global float 0.000000e+00, align 4
@slascl_.cfromc = internal global float 0.000000e+00, align 4
@slascl_.bignum = internal global float 0.000000e+00, align 4
@slascl_.smlnum = internal global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SLASCL\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@TRUE_ = common dso_local global i8* null, align 8
@FALSE_ = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slascl_(i8* %0, i32* %1, i32* %2, float* %3, float* %4, i32* %5, i32* %6, float* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store float* %3, float** %15, align 8
  store float* %4, float** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store float* %7, float** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %29 = load i32*, i32** %20, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %22, align 4
  %32 = add nsw i32 1, %31
  store i32 %32, i32* %23, align 4
  %33 = load i32, i32* %23, align 4
  %34 = load float*, float** %19, align 8
  %35 = sext i32 %33 to i64
  %36 = sub i64 0, %35
  %37 = getelementptr inbounds float, float* %34, i64 %36
  store float* %37, float** %19, align 8
  %38 = load i32*, i32** %21, align 8
  store i32 0, i32* %38, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = call i8* @lsame_(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %10
  store i32 0, i32* @slascl_.itype, align 4
  br label %80

43:                                               ; preds = %10
  %44 = load i8*, i8** %12, align 8
  %45 = call i8* @lsame_(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* @slascl_.itype, align 4
  br label %79

48:                                               ; preds = %43
  %49 = load i8*, i8** %12, align 8
  %50 = call i8* @lsame_(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 2, i32* @slascl_.itype, align 4
  br label %78

53:                                               ; preds = %48
  %54 = load i8*, i8** %12, align 8
  %55 = call i8* @lsame_(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 3, i32* @slascl_.itype, align 4
  br label %77

58:                                               ; preds = %53
  %59 = load i8*, i8** %12, align 8
  %60 = call i8* @lsame_(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 4, i32* @slascl_.itype, align 4
  br label %76

63:                                               ; preds = %58
  %64 = load i8*, i8** %12, align 8
  %65 = call i8* @lsame_(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 5, i32* @slascl_.itype, align 4
  br label %75

68:                                               ; preds = %63
  %69 = load i8*, i8** %12, align 8
  %70 = call i8* @lsame_(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 6, i32* @slascl_.itype, align 4
  br label %74

73:                                               ; preds = %68
  store i32 -1, i32* @slascl_.itype, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %67
  br label %76

76:                                               ; preds = %75, %62
  br label %77

77:                                               ; preds = %76, %57
  br label %78

78:                                               ; preds = %77, %52
  br label %79

79:                                               ; preds = %78, %47
  br label %80

80:                                               ; preds = %79, %42
  %81 = load i32, i32* @slascl_.itype, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32*, i32** %21, align 8
  store i32 -1, i32* %84, align 4
  br label %233

85:                                               ; preds = %80
  %86 = load float*, float** %15, align 8
  %87 = load float, float* %86, align 4
  %88 = fcmp oeq float %87, 0.000000e+00
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load float*, float** %15, align 8
  %91 = call i8* @sisnan_(float* %90)
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %85
  %94 = load i32*, i32** %21, align 8
  store i32 -4, i32* %94, align 4
  br label %232

95:                                               ; preds = %89
  %96 = load float*, float** %16, align 8
  %97 = call i8* @sisnan_(float* %96)
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32*, i32** %21, align 8
  store i32 -5, i32* %100, align 4
  br label %231

101:                                              ; preds = %95
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32*, i32** %21, align 8
  store i32 -6, i32* %106, align 4
  br label %230

107:                                              ; preds = %101
  %108 = load i32*, i32** %18, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @slascl_.itype, align 4
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32*, i32** %18, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %17, align 8
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %129, label %120

120:                                              ; preds = %114, %111
  %121 = load i32, i32* @slascl_.itype, align 4
  %122 = icmp eq i32 %121, 5
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i32*, i32** %18, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %17, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123, %114, %107
  %130 = load i32*, i32** %21, align 8
  store i32 -7, i32* %130, align 4
  br label %229

131:                                              ; preds = %123, %120
  %132 = load i32, i32* @slascl_.itype, align 4
  %133 = icmp sle i32 %132, 3
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32*, i32** %20, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %17, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @max(i32 1, i32 %138)
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32*, i32** %21, align 8
  store i32 -9, i32* %142, align 4
  br label %228

143:                                              ; preds = %134, %131
  %144 = load i32, i32* @slascl_.itype, align 4
  %145 = icmp sge i32 %144, 4
  br i1 %145, label %146, label %227

146:                                              ; preds = %143
  %147 = load i32*, i32** %17, align 8
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  store i32 %149, i32* %24, align 4
  %150 = load i32*, i32** %13, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %146
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %24, align 4
  %157 = call i32 @max(i32 %156, i32 0)
  %158 = icmp sgt i32 %155, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %153, %146
  %160 = load i32*, i32** %21, align 8
  store i32 -2, i32* %160, align 4
  br label %226

161:                                              ; preds = %153
  %162 = load i32*, i32** %18, align 8
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, 1
  store i32 %164, i32* %24, align 4
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %186, label %168

168:                                              ; preds = %161
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %24, align 4
  %172 = call i32 @max(i32 %171, i32 0)
  %173 = icmp sgt i32 %170, %172
  br i1 %173, label %186, label %174

174:                                              ; preds = %168
  %175 = load i32, i32* @slascl_.itype, align 4
  %176 = icmp eq i32 %175, 4
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* @slascl_.itype, align 4
  %179 = icmp eq i32 %178, 5
  br i1 %179, label %180, label %188

180:                                              ; preds = %177, %174
  %181 = load i32*, i32** %13, align 8
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %14, align 8
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %182, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %180, %168, %161
  %187 = load i32*, i32** %21, align 8
  store i32 -3, i32* %187, align 4
  br label %225

188:                                              ; preds = %180, %177
  %189 = load i32, i32* @slascl_.itype, align 4
  %190 = icmp eq i32 %189, 4
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load i32*, i32** %20, align 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %222, label %198

198:                                              ; preds = %191, %188
  %199 = load i32, i32* @slascl_.itype, align 4
  %200 = icmp eq i32 %199, 5
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load i32*, i32** %20, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %14, align 8
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %222, label %208

208:                                              ; preds = %201, %198
  %209 = load i32, i32* @slascl_.itype, align 4
  %210 = icmp eq i32 %209, 6
  br i1 %210, label %211, label %224

211:                                              ; preds = %208
  %212 = load i32*, i32** %20, align 8
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %13, align 8
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %215, 1
  %217 = load i32*, i32** %14, align 8
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %216, %218
  %220 = add nsw i32 %219, 1
  %221 = icmp slt i32 %213, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %211, %201, %191
  %223 = load i32*, i32** %21, align 8
  store i32 -9, i32* %223, align 4
  br label %224

224:                                              ; preds = %222, %211, %208
  br label %225

225:                                              ; preds = %224, %186
  br label %226

226:                                              ; preds = %225, %159
  br label %227

227:                                              ; preds = %226, %143
  br label %228

228:                                              ; preds = %227, %141
  br label %229

229:                                              ; preds = %228, %129
  br label %230

230:                                              ; preds = %229, %105
  br label %231

231:                                              ; preds = %230, %99
  br label %232

232:                                              ; preds = %231, %93
  br label %233

233:                                              ; preds = %232, %83
  %234 = load i32*, i32** %21, align 8
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = load i32*, i32** %21, align 8
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %24, align 4
  %241 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %24)
  store i32 0, i32* %11, align 4
  br label %647

242:                                              ; preds = %233
  %243 = load i32*, i32** %18, align 8
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %242
  %247 = load i32*, i32** %17, align 8
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246, %242
  store i32 0, i32* %11, align 4
  br label %647

251:                                              ; preds = %246
  %252 = call float @slamch_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store float %252, float* @slascl_.smlnum, align 4
  %253 = load float, float* @slascl_.smlnum, align 4
  %254 = fdiv float 1.000000e+00, %253
  store float %254, float* @slascl_.bignum, align 4
  %255 = load float*, float** %15, align 8
  %256 = load float, float* %255, align 4
  store float %256, float* @slascl_.cfromc, align 4
  %257 = load float*, float** %16, align 8
  %258 = load float, float* %257, align 4
  store float %258, float* @slascl_.ctoc, align 4
  br label %259

259:                                              ; preds = %645, %251
  %260 = load float, float* @slascl_.cfromc, align 4
  %261 = load float, float* @slascl_.smlnum, align 4
  %262 = fmul float %260, %261
  store float %262, float* @slascl_.cfrom1, align 4
  %263 = load float, float* @slascl_.cfrom1, align 4
  %264 = load float, float* @slascl_.cfromc, align 4
  %265 = fcmp oeq float %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %259
  %267 = load float, float* @slascl_.ctoc, align 4
  %268 = load float, float* @slascl_.cfromc, align 4
  %269 = fdiv float %267, %268
  store float %269, float* @slascl_.mul, align 4
  %270 = load i8*, i8** @TRUE_, align 8
  store i8* %270, i8** @slascl_.done, align 8
  %271 = load float, float* @slascl_.ctoc, align 4
  store float %271, float* @slascl_.cto1, align 4
  br label %313

272:                                              ; preds = %259
  %273 = load float, float* @slascl_.ctoc, align 4
  %274 = load float, float* @slascl_.bignum, align 4
  %275 = fdiv float %273, %274
  store float %275, float* @slascl_.cto1, align 4
  %276 = load float, float* @slascl_.cto1, align 4
  %277 = load float, float* @slascl_.ctoc, align 4
  %278 = fcmp oeq float %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %272
  %280 = load float, float* @slascl_.ctoc, align 4
  store float %280, float* @slascl_.mul, align 4
  %281 = load i8*, i8** @TRUE_, align 8
  store i8* %281, i8** @slascl_.done, align 8
  store float 1.000000e+00, float* @slascl_.cfromc, align 4
  br label %312

282:                                              ; preds = %272
  %283 = load float, float* @slascl_.cfrom1, align 4
  %284 = call i64 @dabs(float %283)
  %285 = load float, float* @slascl_.ctoc, align 4
  %286 = call i64 @dabs(float %285)
  %287 = icmp sgt i64 %284, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %282
  %289 = load float, float* @slascl_.ctoc, align 4
  %290 = fcmp une float %289, 0.000000e+00
  br i1 %290, label %291, label %295

291:                                              ; preds = %288
  %292 = load float, float* @slascl_.smlnum, align 4
  store float %292, float* @slascl_.mul, align 4
  %293 = load i8*, i8** @FALSE_, align 8
  store i8* %293, i8** @slascl_.done, align 8
  %294 = load float, float* @slascl_.cfrom1, align 4
  store float %294, float* @slascl_.cfromc, align 4
  br label %311

295:                                              ; preds = %288, %282
  %296 = load float, float* @slascl_.cto1, align 4
  %297 = call i64 @dabs(float %296)
  %298 = load float, float* @slascl_.cfromc, align 4
  %299 = call i64 @dabs(float %298)
  %300 = icmp sgt i64 %297, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %295
  %302 = load float, float* @slascl_.bignum, align 4
  store float %302, float* @slascl_.mul, align 4
  %303 = load i8*, i8** @FALSE_, align 8
  store i8* %303, i8** @slascl_.done, align 8
  %304 = load float, float* @slascl_.cto1, align 4
  store float %304, float* @slascl_.ctoc, align 4
  br label %310

305:                                              ; preds = %295
  %306 = load float, float* @slascl_.ctoc, align 4
  %307 = load float, float* @slascl_.cfromc, align 4
  %308 = fdiv float %306, %307
  store float %308, float* @slascl_.mul, align 4
  %309 = load i8*, i8** @TRUE_, align 8
  store i8* %309, i8** @slascl_.done, align 8
  br label %310

310:                                              ; preds = %305, %301
  br label %311

311:                                              ; preds = %310, %291
  br label %312

312:                                              ; preds = %311, %279
  br label %313

313:                                              ; preds = %312, %266
  %314 = load i32, i32* @slascl_.itype, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %350

316:                                              ; preds = %313
  %317 = load i32*, i32** %18, align 8
  %318 = load i32, i32* %317, align 4
  store i32 %318, i32* %24, align 4
  store i32 1, i32* @slascl_.j, align 4
  br label %319

319:                                              ; preds = %346, %316
  %320 = load i32, i32* @slascl_.j, align 4
  %321 = load i32, i32* %24, align 4
  %322 = icmp sle i32 %320, %321
  br i1 %322, label %323, label %349

323:                                              ; preds = %319
  %324 = load i32*, i32** %17, align 8
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %25, align 4
  store i32 1, i32* @slascl_.i__, align 4
  br label %326

326:                                              ; preds = %342, %323
  %327 = load i32, i32* @slascl_.i__, align 4
  %328 = load i32, i32* %25, align 4
  %329 = icmp sle i32 %327, %328
  br i1 %329, label %330, label %345

330:                                              ; preds = %326
  %331 = load float, float* @slascl_.mul, align 4
  %332 = load float*, float** %19, align 8
  %333 = load i32, i32* @slascl_.i__, align 4
  %334 = load i32, i32* @slascl_.j, align 4
  %335 = load i32, i32* %22, align 4
  %336 = mul nsw i32 %334, %335
  %337 = add nsw i32 %333, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds float, float* %332, i64 %338
  %340 = load float, float* %339, align 4
  %341 = fmul float %340, %331
  store float %341, float* %339, align 4
  br label %342

342:                                              ; preds = %330
  %343 = load i32, i32* @slascl_.i__, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* @slascl_.i__, align 4
  br label %326

345:                                              ; preds = %326
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* @slascl_.j, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* @slascl_.j, align 4
  br label %319

349:                                              ; preds = %319
  br label %642

350:                                              ; preds = %313
  %351 = load i32, i32* @slascl_.itype, align 4
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %388

353:                                              ; preds = %350
  %354 = load i32*, i32** %18, align 8
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %24, align 4
  store i32 1, i32* @slascl_.j, align 4
  br label %356

356:                                              ; preds = %384, %353
  %357 = load i32, i32* @slascl_.j, align 4
  %358 = load i32, i32* %24, align 4
  %359 = icmp sle i32 %357, %358
  br i1 %359, label %360, label %387

360:                                              ; preds = %356
  %361 = load i32*, i32** %17, align 8
  %362 = load i32, i32* %361, align 4
  store i32 %362, i32* %25, align 4
  %363 = load i32, i32* @slascl_.j, align 4
  store i32 %363, i32* @slascl_.i__, align 4
  br label %364

364:                                              ; preds = %380, %360
  %365 = load i32, i32* @slascl_.i__, align 4
  %366 = load i32, i32* %25, align 4
  %367 = icmp sle i32 %365, %366
  br i1 %367, label %368, label %383

368:                                              ; preds = %364
  %369 = load float, float* @slascl_.mul, align 4
  %370 = load float*, float** %19, align 8
  %371 = load i32, i32* @slascl_.i__, align 4
  %372 = load i32, i32* @slascl_.j, align 4
  %373 = load i32, i32* %22, align 4
  %374 = mul nsw i32 %372, %373
  %375 = add nsw i32 %371, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds float, float* %370, i64 %376
  %378 = load float, float* %377, align 4
  %379 = fmul float %378, %369
  store float %379, float* %377, align 4
  br label %380

380:                                              ; preds = %368
  %381 = load i32, i32* @slascl_.i__, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* @slascl_.i__, align 4
  br label %364

383:                                              ; preds = %364
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* @slascl_.j, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* @slascl_.j, align 4
  br label %356

387:                                              ; preds = %356
  br label %641

388:                                              ; preds = %350
  %389 = load i32, i32* @slascl_.itype, align 4
  %390 = icmp eq i32 %389, 2
  br i1 %390, label %391, label %427

391:                                              ; preds = %388
  %392 = load i32*, i32** %18, align 8
  %393 = load i32, i32* %392, align 4
  store i32 %393, i32* %24, align 4
  store i32 1, i32* @slascl_.j, align 4
  br label %394

394:                                              ; preds = %423, %391
  %395 = load i32, i32* @slascl_.j, align 4
  %396 = load i32, i32* %24, align 4
  %397 = icmp sle i32 %395, %396
  br i1 %397, label %398, label %426

398:                                              ; preds = %394
  %399 = load i32, i32* @slascl_.j, align 4
  %400 = load i32*, i32** %17, align 8
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @min(i32 %399, i32 %401)
  store i32 %402, i32* %25, align 4
  store i32 1, i32* @slascl_.i__, align 4
  br label %403

403:                                              ; preds = %419, %398
  %404 = load i32, i32* @slascl_.i__, align 4
  %405 = load i32, i32* %25, align 4
  %406 = icmp sle i32 %404, %405
  br i1 %406, label %407, label %422

407:                                              ; preds = %403
  %408 = load float, float* @slascl_.mul, align 4
  %409 = load float*, float** %19, align 8
  %410 = load i32, i32* @slascl_.i__, align 4
  %411 = load i32, i32* @slascl_.j, align 4
  %412 = load i32, i32* %22, align 4
  %413 = mul nsw i32 %411, %412
  %414 = add nsw i32 %410, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds float, float* %409, i64 %415
  %417 = load float, float* %416, align 4
  %418 = fmul float %417, %408
  store float %418, float* %416, align 4
  br label %419

419:                                              ; preds = %407
  %420 = load i32, i32* @slascl_.i__, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* @slascl_.i__, align 4
  br label %403

422:                                              ; preds = %403
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* @slascl_.j, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* @slascl_.j, align 4
  br label %394

426:                                              ; preds = %394
  br label %640

427:                                              ; preds = %388
  %428 = load i32, i32* @slascl_.itype, align 4
  %429 = icmp eq i32 %428, 3
  br i1 %429, label %430, label %468

430:                                              ; preds = %427
  %431 = load i32*, i32** %18, align 8
  %432 = load i32, i32* %431, align 4
  store i32 %432, i32* %24, align 4
  store i32 1, i32* @slascl_.j, align 4
  br label %433

433:                                              ; preds = %464, %430
  %434 = load i32, i32* @slascl_.j, align 4
  %435 = load i32, i32* %24, align 4
  %436 = icmp sle i32 %434, %435
  br i1 %436, label %437, label %467

437:                                              ; preds = %433
  %438 = load i32, i32* @slascl_.j, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %26, align 4
  %440 = load i32, i32* %26, align 4
  %441 = load i32*, i32** %17, align 8
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @min(i32 %440, i32 %442)
  store i32 %443, i32* %25, align 4
  store i32 1, i32* @slascl_.i__, align 4
  br label %444

444:                                              ; preds = %460, %437
  %445 = load i32, i32* @slascl_.i__, align 4
  %446 = load i32, i32* %25, align 4
  %447 = icmp sle i32 %445, %446
  br i1 %447, label %448, label %463

448:                                              ; preds = %444
  %449 = load float, float* @slascl_.mul, align 4
  %450 = load float*, float** %19, align 8
  %451 = load i32, i32* @slascl_.i__, align 4
  %452 = load i32, i32* @slascl_.j, align 4
  %453 = load i32, i32* %22, align 4
  %454 = mul nsw i32 %452, %453
  %455 = add nsw i32 %451, %454
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds float, float* %450, i64 %456
  %458 = load float, float* %457, align 4
  %459 = fmul float %458, %449
  store float %459, float* %457, align 4
  br label %460

460:                                              ; preds = %448
  %461 = load i32, i32* @slascl_.i__, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* @slascl_.i__, align 4
  br label %444

463:                                              ; preds = %444
  br label %464

464:                                              ; preds = %463
  %465 = load i32, i32* @slascl_.j, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* @slascl_.j, align 4
  br label %433

467:                                              ; preds = %433
  br label %639

468:                                              ; preds = %427
  %469 = load i32, i32* @slascl_.itype, align 4
  %470 = icmp eq i32 %469, 4
  br i1 %470, label %471, label %516

471:                                              ; preds = %468
  %472 = load i32*, i32** %13, align 8
  %473 = load i32, i32* %472, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* @slascl_.k3, align 4
  %475 = load i32*, i32** %18, align 8
  %476 = load i32, i32* %475, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* @slascl_.k4, align 4
  %478 = load i32*, i32** %18, align 8
  %479 = load i32, i32* %478, align 4
  store i32 %479, i32* %24, align 4
  store i32 1, i32* @slascl_.j, align 4
  br label %480

480:                                              ; preds = %512, %471
  %481 = load i32, i32* @slascl_.j, align 4
  %482 = load i32, i32* %24, align 4
  %483 = icmp sle i32 %481, %482
  br i1 %483, label %484, label %515

484:                                              ; preds = %480
  %485 = load i32, i32* @slascl_.k3, align 4
  store i32 %485, i32* %26, align 4
  %486 = load i32, i32* @slascl_.k4, align 4
  %487 = load i32, i32* @slascl_.j, align 4
  %488 = sub nsw i32 %486, %487
  store i32 %488, i32* %27, align 4
  %489 = load i32, i32* %26, align 4
  %490 = load i32, i32* %27, align 4
  %491 = call i32 @min(i32 %489, i32 %490)
  store i32 %491, i32* %25, align 4
  store i32 1, i32* @slascl_.i__, align 4
  br label %492

492:                                              ; preds = %508, %484
  %493 = load i32, i32* @slascl_.i__, align 4
  %494 = load i32, i32* %25, align 4
  %495 = icmp sle i32 %493, %494
  br i1 %495, label %496, label %511

496:                                              ; preds = %492
  %497 = load float, float* @slascl_.mul, align 4
  %498 = load float*, float** %19, align 8
  %499 = load i32, i32* @slascl_.i__, align 4
  %500 = load i32, i32* @slascl_.j, align 4
  %501 = load i32, i32* %22, align 4
  %502 = mul nsw i32 %500, %501
  %503 = add nsw i32 %499, %502
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds float, float* %498, i64 %504
  %506 = load float, float* %505, align 4
  %507 = fmul float %506, %497
  store float %507, float* %505, align 4
  br label %508

508:                                              ; preds = %496
  %509 = load i32, i32* @slascl_.i__, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* @slascl_.i__, align 4
  br label %492

511:                                              ; preds = %492
  br label %512

512:                                              ; preds = %511
  %513 = load i32, i32* @slascl_.j, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* @slascl_.j, align 4
  br label %480

515:                                              ; preds = %480
  br label %638

516:                                              ; preds = %468
  %517 = load i32, i32* @slascl_.itype, align 4
  %518 = icmp eq i32 %517, 5
  br i1 %518, label %519, label %563

519:                                              ; preds = %516
  %520 = load i32*, i32** %14, align 8
  %521 = load i32, i32* %520, align 4
  %522 = add nsw i32 %521, 2
  store i32 %522, i32* @slascl_.k1, align 4
  %523 = load i32*, i32** %14, align 8
  %524 = load i32, i32* %523, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* @slascl_.k3, align 4
  %526 = load i32*, i32** %18, align 8
  %527 = load i32, i32* %526, align 4
  store i32 %527, i32* %24, align 4
  store i32 1, i32* @slascl_.j, align 4
  br label %528

528:                                              ; preds = %559, %519
  %529 = load i32, i32* @slascl_.j, align 4
  %530 = load i32, i32* %24, align 4
  %531 = icmp sle i32 %529, %530
  br i1 %531, label %532, label %562

532:                                              ; preds = %528
  %533 = load i32, i32* @slascl_.k1, align 4
  %534 = load i32, i32* @slascl_.j, align 4
  %535 = sub nsw i32 %533, %534
  store i32 %535, i32* %25, align 4
  %536 = load i32, i32* @slascl_.k3, align 4
  store i32 %536, i32* %26, align 4
  %537 = load i32, i32* %25, align 4
  %538 = call i32 @max(i32 %537, i32 1)
  store i32 %538, i32* @slascl_.i__, align 4
  br label %539

539:                                              ; preds = %555, %532
  %540 = load i32, i32* @slascl_.i__, align 4
  %541 = load i32, i32* %26, align 4
  %542 = icmp sle i32 %540, %541
  br i1 %542, label %543, label %558

543:                                              ; preds = %539
  %544 = load float, float* @slascl_.mul, align 4
  %545 = load float*, float** %19, align 8
  %546 = load i32, i32* @slascl_.i__, align 4
  %547 = load i32, i32* @slascl_.j, align 4
  %548 = load i32, i32* %22, align 4
  %549 = mul nsw i32 %547, %548
  %550 = add nsw i32 %546, %549
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds float, float* %545, i64 %551
  %553 = load float, float* %552, align 4
  %554 = fmul float %553, %544
  store float %554, float* %552, align 4
  br label %555

555:                                              ; preds = %543
  %556 = load i32, i32* @slascl_.i__, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* @slascl_.i__, align 4
  br label %539

558:                                              ; preds = %539
  br label %559

559:                                              ; preds = %558
  %560 = load i32, i32* @slascl_.j, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* @slascl_.j, align 4
  br label %528

562:                                              ; preds = %528
  br label %637

563:                                              ; preds = %516
  %564 = load i32, i32* @slascl_.itype, align 4
  %565 = icmp eq i32 %564, 6
  br i1 %565, label %566, label %636

566:                                              ; preds = %563
  %567 = load i32*, i32** %13, align 8
  %568 = load i32, i32* %567, align 4
  %569 = load i32*, i32** %14, align 8
  %570 = load i32, i32* %569, align 4
  %571 = add nsw i32 %568, %570
  %572 = add nsw i32 %571, 2
  store i32 %572, i32* @slascl_.k1, align 4
  %573 = load i32*, i32** %13, align 8
  %574 = load i32, i32* %573, align 4
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* @slascl_.k2, align 4
  %576 = load i32*, i32** %13, align 8
  %577 = load i32, i32* %576, align 4
  %578 = shl i32 %577, 1
  %579 = load i32*, i32** %14, align 8
  %580 = load i32, i32* %579, align 4
  %581 = add nsw i32 %578, %580
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* @slascl_.k3, align 4
  %583 = load i32*, i32** %13, align 8
  %584 = load i32, i32* %583, align 4
  %585 = load i32*, i32** %14, align 8
  %586 = load i32, i32* %585, align 4
  %587 = add nsw i32 %584, %586
  %588 = add nsw i32 %587, 1
  %589 = load i32*, i32** %17, align 8
  %590 = load i32, i32* %589, align 4
  %591 = add nsw i32 %588, %590
  store i32 %591, i32* @slascl_.k4, align 4
  %592 = load i32*, i32** %18, align 8
  %593 = load i32, i32* %592, align 4
  store i32 %593, i32* %24, align 4
  store i32 1, i32* @slascl_.j, align 4
  br label %594

594:                                              ; preds = %632, %566
  %595 = load i32, i32* @slascl_.j, align 4
  %596 = load i32, i32* %24, align 4
  %597 = icmp sle i32 %595, %596
  br i1 %597, label %598, label %635

598:                                              ; preds = %594
  %599 = load i32, i32* @slascl_.k1, align 4
  %600 = load i32, i32* @slascl_.j, align 4
  %601 = sub nsw i32 %599, %600
  store i32 %601, i32* %26, align 4
  %602 = load i32, i32* @slascl_.k3, align 4
  store i32 %602, i32* %27, align 4
  %603 = load i32, i32* @slascl_.k4, align 4
  %604 = load i32, i32* @slascl_.j, align 4
  %605 = sub nsw i32 %603, %604
  store i32 %605, i32* %28, align 4
  %606 = load i32, i32* %27, align 4
  %607 = load i32, i32* %28, align 4
  %608 = call i32 @min(i32 %606, i32 %607)
  store i32 %608, i32* %25, align 4
  %609 = load i32, i32* %26, align 4
  %610 = load i32, i32* @slascl_.k2, align 4
  %611 = call i32 @max(i32 %609, i32 %610)
  store i32 %611, i32* @slascl_.i__, align 4
  br label %612

612:                                              ; preds = %628, %598
  %613 = load i32, i32* @slascl_.i__, align 4
  %614 = load i32, i32* %25, align 4
  %615 = icmp sle i32 %613, %614
  br i1 %615, label %616, label %631

616:                                              ; preds = %612
  %617 = load float, float* @slascl_.mul, align 4
  %618 = load float*, float** %19, align 8
  %619 = load i32, i32* @slascl_.i__, align 4
  %620 = load i32, i32* @slascl_.j, align 4
  %621 = load i32, i32* %22, align 4
  %622 = mul nsw i32 %620, %621
  %623 = add nsw i32 %619, %622
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds float, float* %618, i64 %624
  %626 = load float, float* %625, align 4
  %627 = fmul float %626, %617
  store float %627, float* %625, align 4
  br label %628

628:                                              ; preds = %616
  %629 = load i32, i32* @slascl_.i__, align 4
  %630 = add nsw i32 %629, 1
  store i32 %630, i32* @slascl_.i__, align 4
  br label %612

631:                                              ; preds = %612
  br label %632

632:                                              ; preds = %631
  %633 = load i32, i32* @slascl_.j, align 4
  %634 = add nsw i32 %633, 1
  store i32 %634, i32* @slascl_.j, align 4
  br label %594

635:                                              ; preds = %594
  br label %636

636:                                              ; preds = %635, %563
  br label %637

637:                                              ; preds = %636, %562
  br label %638

638:                                              ; preds = %637, %515
  br label %639

639:                                              ; preds = %638, %467
  br label %640

640:                                              ; preds = %639, %426
  br label %641

641:                                              ; preds = %640, %387
  br label %642

642:                                              ; preds = %641, %349
  %643 = load i8*, i8** @slascl_.done, align 8
  %644 = icmp ne i8* %643, null
  br i1 %644, label %646, label %645

645:                                              ; preds = %642
  br label %259

646:                                              ; preds = %642
  store i32 0, i32* %11, align 4
  br label %647

647:                                              ; preds = %646, %250, %237
  %648 = load i32, i32* %11, align 4
  ret i32 %648
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i8* @sisnan_(float*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local float @slamch_(i8*) #1

declare dso_local i64 @dabs(float) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
