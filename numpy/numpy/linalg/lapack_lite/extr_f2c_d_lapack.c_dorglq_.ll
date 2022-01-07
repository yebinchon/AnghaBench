; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dorglq_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dorglq_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dorglq_.i__ = internal global i32 0, align 4
@dorglq_.j = internal global i32 0, align 4
@dorglq_.l = internal global i32 0, align 4
@dorglq_.ib = internal global i32 0, align 4
@dorglq_.nb = internal global i32 0, align 4
@dorglq_.ki = internal global i32 0, align 4
@dorglq_.kk = internal global i32 0, align 4
@dorglq_.nx = internal global i32 0, align 4
@dorglq_.iws = internal global i32 0, align 4
@dorglq_.nbmin = internal global i32 0, align 4
@dorglq_.iinfo = internal global i32 0, align 4
@dorglq_.ldwork = internal global i32 0, align 4
@dorglq_.lwkopt = internal global i32 0, align 4
@dorglq_.lquery = internal global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DORGLQ\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@c__3 = common dso_local global i32 0, align 4
@c__2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Forward\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Rowwise\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dorglq_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
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
  store i32 %42, i32* @dorglq_.nb, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @max(i32 1, i32 %44)
  %46 = load i32, i32* @dorglq_.nb, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* @dorglq_.lwkopt, align 4
  %48 = load i32, i32* @dorglq_.lwkopt, align 4
  %49 = load i32*, i32** %17, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %18, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, -1
  %54 = zext i1 %53 to i32
  store i32 %54, i32* @dorglq_.lquery, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %9
  %59 = load i32*, i32** %19, align 8
  store i32 -1, i32* %59, align 4
  br label %105

60:                                               ; preds = %9
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32*, i32** %19, align 8
  store i32 -2, i32* %67, align 4
  br label %104

68:                                               ; preds = %60
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %68
  %79 = load i32*, i32** %19, align 8
  store i32 -3, i32* %79, align 4
  br label %103

80:                                               ; preds = %72
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @max(i32 1, i32 %84)
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32*, i32** %19, align 8
  store i32 -5, i32* %88, align 4
  br label %102

89:                                               ; preds = %80
  %90 = load i32*, i32** %18, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @max(i32 1, i32 %93)
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, i32* @dorglq_.lquery, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i32*, i32** %19, align 8
  store i32 -8, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %96, %89
  br label %102

102:                                              ; preds = %101, %87
  br label %103

103:                                              ; preds = %102, %78
  br label %104

104:                                              ; preds = %103, %66
  br label %105

105:                                              ; preds = %104, %58
  %106 = load i32*, i32** %19, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i32*, i32** %19, align 8
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %22, align 4
  %113 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %22)
  store i32 0, i32* %10, align 4
  br label %437

114:                                              ; preds = %105
  %115 = load i32, i32* @dorglq_.lquery, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 0, i32* %10, align 4
  br label %437

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %118
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp sle i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32*, i32** %17, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 1, i32* %125, align 4
  store i32 0, i32* %10, align 4
  br label %437

126:                                              ; preds = %119
  store i32 2, i32* @dorglq_.nbmin, align 4
  store i32 0, i32* @dorglq_.nx, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* @dorglq_.iws, align 4
  %129 = load i32, i32* @dorglq_.nb, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %172

131:                                              ; preds = %126
  %132 = load i32, i32* @dorglq_.nb, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %172

136:                                              ; preds = %131
  store i32 0, i32* %22, align 4
  %137 = load i32*, i32** %11, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = call i32 @ilaenv_(i32* @c__3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %137, i32* %138, i32* %139, i32* @c_n1, i32 6, i32 1)
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %22, align 4
  %142 = load i32, i32* %23, align 4
  %143 = call i32 @max(i32 %141, i32 %142)
  store i32 %143, i32* @dorglq_.nx, align 4
  %144 = load i32, i32* @dorglq_.nx, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %171

148:                                              ; preds = %136
  %149 = load i32*, i32** %11, align 8
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* @dorglq_.ldwork, align 4
  %151 = load i32, i32* @dorglq_.ldwork, align 4
  %152 = load i32, i32* @dorglq_.nb, align 4
  %153 = mul nsw i32 %151, %152
  store i32 %153, i32* @dorglq_.iws, align 4
  %154 = load i32*, i32** %18, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @dorglq_.iws, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %148
  %159 = load i32*, i32** %18, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @dorglq_.ldwork, align 4
  %162 = sdiv i32 %160, %161
  store i32 %162, i32* @dorglq_.nb, align 4
  store i32 2, i32* %22, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = load i32*, i32** %12, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = call i32 @ilaenv_(i32* @c__2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %163, i32* %164, i32* %165, i32* @c_n1, i32 6, i32 1)
  store i32 %166, i32* %23, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %23, align 4
  %169 = call i32 @max(i32 %167, i32 %168)
  store i32 %169, i32* @dorglq_.nbmin, align 4
  br label %170

170:                                              ; preds = %158, %148
  br label %171

171:                                              ; preds = %170, %136
  br label %172

172:                                              ; preds = %171, %131, %126
  %173 = load i32, i32* @dorglq_.nb, align 4
  %174 = load i32, i32* @dorglq_.nbmin, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %176, label %235

176:                                              ; preds = %172
  %177 = load i32, i32* @dorglq_.nb, align 4
  %178 = load i32*, i32** %13, align 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %177, %179
  br i1 %180, label %181, label %235

181:                                              ; preds = %176
  %182 = load i32, i32* @dorglq_.nx, align 4
  %183 = load i32*, i32** %13, align 8
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %186, label %235

186:                                              ; preds = %181
  %187 = load i32*, i32** %13, align 8
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @dorglq_.nx, align 4
  %190 = sub nsw i32 %188, %189
  %191 = sub nsw i32 %190, 1
  %192 = load i32, i32* @dorglq_.nb, align 4
  %193 = sdiv i32 %191, %192
  %194 = load i32, i32* @dorglq_.nb, align 4
  %195 = mul nsw i32 %193, %194
  store i32 %195, i32* @dorglq_.ki, align 4
  %196 = load i32*, i32** %13, align 8
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %22, align 4
  %198 = load i32, i32* @dorglq_.ki, align 4
  %199 = load i32, i32* @dorglq_.nb, align 4
  %200 = add nsw i32 %198, %199
  store i32 %200, i32* %23, align 4
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* %23, align 4
  %203 = call i32 @min(i32 %201, i32 %202)
  store i32 %203, i32* @dorglq_.kk, align 4
  %204 = load i32, i32* @dorglq_.kk, align 4
  store i32 %204, i32* %22, align 4
  store i32 1, i32* @dorglq_.j, align 4
  br label %205

205:                                              ; preds = %231, %186
  %206 = load i32, i32* @dorglq_.j, align 4
  %207 = load i32, i32* %22, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %209, label %234

209:                                              ; preds = %205
  %210 = load i32*, i32** %11, align 8
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %23, align 4
  %212 = load i32, i32* @dorglq_.kk, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* @dorglq_.i__, align 4
  br label %214

214:                                              ; preds = %227, %209
  %215 = load i32, i32* @dorglq_.i__, align 4
  %216 = load i32, i32* %23, align 4
  %217 = icmp sle i32 %215, %216
  br i1 %217, label %218, label %230

218:                                              ; preds = %214
  %219 = load i32*, i32** %14, align 8
  %220 = load i32, i32* @dorglq_.i__, align 4
  %221 = load i32, i32* @dorglq_.j, align 4
  %222 = load i32, i32* %20, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %220, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %219, i64 %225
  store i32 0, i32* %226, align 4
  br label %227

227:                                              ; preds = %218
  %228 = load i32, i32* @dorglq_.i__, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* @dorglq_.i__, align 4
  br label %214

230:                                              ; preds = %214
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* @dorglq_.j, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* @dorglq_.j, align 4
  br label %205

234:                                              ; preds = %205
  br label %236

235:                                              ; preds = %181, %176, %172
  store i32 0, i32* @dorglq_.kk, align 4
  br label %236

236:                                              ; preds = %235, %234
  %237 = load i32, i32* @dorglq_.kk, align 4
  %238 = load i32*, i32** %11, align 8
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %241, label %273

241:                                              ; preds = %236
  %242 = load i32*, i32** %11, align 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @dorglq_.kk, align 4
  %245 = sub nsw i32 %243, %244
  store i32 %245, i32* %22, align 4
  %246 = load i32*, i32** %12, align 8
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @dorglq_.kk, align 4
  %249 = sub nsw i32 %247, %248
  store i32 %249, i32* %23, align 4
  %250 = load i32*, i32** %13, align 8
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @dorglq_.kk, align 4
  %253 = sub nsw i32 %251, %252
  store i32 %253, i32* %24, align 4
  %254 = load i32*, i32** %14, align 8
  %255 = load i32, i32* @dorglq_.kk, align 4
  %256 = add nsw i32 %255, 1
  %257 = load i32, i32* @dorglq_.kk, align 4
  %258 = add nsw i32 %257, 1
  %259 = load i32, i32* %20, align 4
  %260 = mul nsw i32 %258, %259
  %261 = add nsw i32 %256, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %254, i64 %262
  %264 = load i32*, i32** %15, align 8
  %265 = load i32*, i32** %16, align 8
  %266 = load i32, i32* @dorglq_.kk, align 4
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  %270 = load i32*, i32** %17, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = call i32 @dorgl2_(i32* %22, i32* %23, i32* %24, i32* %263, i32* %264, i32* %269, i32* %271, i32* @dorglq_.iinfo)
  br label %273

273:                                              ; preds = %241, %236
  %274 = load i32, i32* @dorglq_.kk, align 4
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %433

276:                                              ; preds = %273
  %277 = load i32, i32* @dorglq_.nb, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %22, align 4
  %279 = load i32, i32* @dorglq_.ki, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* @dorglq_.i__, align 4
  br label %281

281:                                              ; preds = %428, %276
  %282 = load i32, i32* %22, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load i32, i32* @dorglq_.i__, align 4
  %286 = icmp sge i32 %285, 1
  %287 = zext i1 %286 to i32
  br label %292

288:                                              ; preds = %281
  %289 = load i32, i32* @dorglq_.i__, align 4
  %290 = icmp sle i32 %289, 1
  %291 = zext i1 %290 to i32
  br label %292

292:                                              ; preds = %288, %284
  %293 = phi i32 [ %287, %284 ], [ %291, %288 ]
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %432

295:                                              ; preds = %292
  %296 = load i32, i32* @dorglq_.nb, align 4
  store i32 %296, i32* %23, align 4
  %297 = load i32*, i32** %13, align 8
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @dorglq_.i__, align 4
  %300 = sub nsw i32 %298, %299
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %24, align 4
  %302 = load i32, i32* %23, align 4
  %303 = load i32, i32* %24, align 4
  %304 = call i32 @min(i32 %302, i32 %303)
  store i32 %304, i32* @dorglq_.ib, align 4
  %305 = load i32, i32* @dorglq_.i__, align 4
  %306 = load i32, i32* @dorglq_.ib, align 4
  %307 = add nsw i32 %305, %306
  %308 = load i32*, i32** %11, align 8
  %309 = load i32, i32* %308, align 4
  %310 = icmp sle i32 %307, %309
  br i1 %310, label %311, label %373

311:                                              ; preds = %295
  %312 = load i32*, i32** %12, align 8
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @dorglq_.i__, align 4
  %315 = sub nsw i32 %313, %314
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %23, align 4
  %317 = load i32*, i32** %14, align 8
  %318 = load i32, i32* @dorglq_.i__, align 4
  %319 = load i32, i32* @dorglq_.i__, align 4
  %320 = load i32, i32* %20, align 4
  %321 = mul nsw i32 %319, %320
  %322 = add nsw i32 %318, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %317, i64 %323
  %325 = load i32*, i32** %15, align 8
  %326 = load i32*, i32** %16, align 8
  %327 = load i32, i32* @dorglq_.i__, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32*, i32** %17, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 1
  %332 = call i32 @dlarft_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %23, i32* @dorglq_.ib, i32* %324, i32* %325, i32* %329, i32* %331, i32* @dorglq_.ldwork)
  %333 = load i32*, i32** %11, align 8
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @dorglq_.i__, align 4
  %336 = sub nsw i32 %334, %335
  %337 = load i32, i32* @dorglq_.ib, align 4
  %338 = sub nsw i32 %336, %337
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %23, align 4
  %340 = load i32*, i32** %12, align 8
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @dorglq_.i__, align 4
  %343 = sub nsw i32 %341, %342
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %24, align 4
  %345 = load i32*, i32** %14, align 8
  %346 = load i32, i32* @dorglq_.i__, align 4
  %347 = load i32, i32* @dorglq_.i__, align 4
  %348 = load i32, i32* %20, align 4
  %349 = mul nsw i32 %347, %348
  %350 = add nsw i32 %346, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %345, i64 %351
  %353 = load i32*, i32** %15, align 8
  %354 = load i32*, i32** %17, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 1
  %356 = load i32*, i32** %14, align 8
  %357 = load i32, i32* @dorglq_.i__, align 4
  %358 = load i32, i32* @dorglq_.ib, align 4
  %359 = add nsw i32 %357, %358
  %360 = load i32, i32* @dorglq_.i__, align 4
  %361 = load i32, i32* %20, align 4
  %362 = mul nsw i32 %360, %361
  %363 = add nsw i32 %359, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %356, i64 %364
  %366 = load i32*, i32** %15, align 8
  %367 = load i32*, i32** %17, align 8
  %368 = load i32, i32* @dorglq_.ib, align 4
  %369 = add nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %367, i64 %370
  %372 = call i32 @dlarfb_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %23, i32* %24, i32* @dorglq_.ib, i32* %352, i32* %353, i32* %355, i32* @dorglq_.ldwork, i32* %365, i32* %366, i32* %371, i32* @dorglq_.ldwork)
  br label %373

373:                                              ; preds = %311, %295
  %374 = load i32*, i32** %12, align 8
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @dorglq_.i__, align 4
  %377 = sub nsw i32 %375, %376
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %23, align 4
  %379 = load i32*, i32** %14, align 8
  %380 = load i32, i32* @dorglq_.i__, align 4
  %381 = load i32, i32* @dorglq_.i__, align 4
  %382 = load i32, i32* %20, align 4
  %383 = mul nsw i32 %381, %382
  %384 = add nsw i32 %380, %383
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %379, i64 %385
  %387 = load i32*, i32** %15, align 8
  %388 = load i32*, i32** %16, align 8
  %389 = load i32, i32* @dorglq_.i__, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  %392 = load i32*, i32** %17, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 1
  %394 = call i32 @dorgl2_(i32* @dorglq_.ib, i32* %23, i32* @dorglq_.ib, i32* %386, i32* %387, i32* %391, i32* %393, i32* @dorglq_.iinfo)
  %395 = load i32, i32* @dorglq_.i__, align 4
  %396 = sub nsw i32 %395, 1
  store i32 %396, i32* %23, align 4
  store i32 1, i32* @dorglq_.j, align 4
  br label %397

397:                                              ; preds = %424, %373
  %398 = load i32, i32* @dorglq_.j, align 4
  %399 = load i32, i32* %23, align 4
  %400 = icmp sle i32 %398, %399
  br i1 %400, label %401, label %427

401:                                              ; preds = %397
  %402 = load i32, i32* @dorglq_.i__, align 4
  %403 = load i32, i32* @dorglq_.ib, align 4
  %404 = add nsw i32 %402, %403
  %405 = sub nsw i32 %404, 1
  store i32 %405, i32* %24, align 4
  %406 = load i32, i32* @dorglq_.i__, align 4
  store i32 %406, i32* @dorglq_.l, align 4
  br label %407

407:                                              ; preds = %420, %401
  %408 = load i32, i32* @dorglq_.l, align 4
  %409 = load i32, i32* %24, align 4
  %410 = icmp sle i32 %408, %409
  br i1 %410, label %411, label %423

411:                                              ; preds = %407
  %412 = load i32*, i32** %14, align 8
  %413 = load i32, i32* @dorglq_.l, align 4
  %414 = load i32, i32* @dorglq_.j, align 4
  %415 = load i32, i32* %20, align 4
  %416 = mul nsw i32 %414, %415
  %417 = add nsw i32 %413, %416
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %412, i64 %418
  store i32 0, i32* %419, align 4
  br label %420

420:                                              ; preds = %411
  %421 = load i32, i32* @dorglq_.l, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* @dorglq_.l, align 4
  br label %407

423:                                              ; preds = %407
  br label %424

424:                                              ; preds = %423
  %425 = load i32, i32* @dorglq_.j, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* @dorglq_.j, align 4
  br label %397

427:                                              ; preds = %397
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %22, align 4
  %430 = load i32, i32* @dorglq_.i__, align 4
  %431 = add nsw i32 %430, %429
  store i32 %431, i32* @dorglq_.i__, align 4
  br label %281

432:                                              ; preds = %292
  br label %433

433:                                              ; preds = %432, %273
  %434 = load i32, i32* @dorglq_.iws, align 4
  %435 = load i32*, i32** %17, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 1
  store i32 %434, i32* %436, align 4
  store i32 0, i32* %10, align 4
  br label %437

437:                                              ; preds = %433, %123, %117, %109
  %438 = load i32, i32* %10, align 4
  ret i32 %438
}

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dorgl2_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dlarft_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dlarfb_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
