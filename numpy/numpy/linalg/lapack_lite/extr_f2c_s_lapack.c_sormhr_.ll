; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sormhr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sormhr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sormhr_.i1 = internal global i32 0, align 4
@sormhr_.i2 = internal global i32 0, align 4
@sormhr_.nb = internal global i32 0, align 4
@sormhr_.mi = internal global i32 0, align 4
@sormhr_.nh = internal global i32 0, align 4
@sormhr_.ni = internal global i32 0, align 4
@sormhr_.nq = internal global i32 0, align 4
@sormhr_.nw = internal global i32 0, align 4
@sormhr_.left = internal global i32 0, align 4
@sormhr_.iinfo = internal global i32 0, align 4
@sormhr_.lwkopt = internal global i32 0, align 4
@sormhr_.lquery = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@c__2 = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"SORMQR\00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"SORMHR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sormhr_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
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
  %30 = alloca [2 x i8*], align 16
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [2 x i32], align 4
  %36 = alloca i32, align 4
  %37 = alloca [2 x i8], align 1
  store i8* %0, i8** %16, align 8
  store i8* %1, i8** %17, align 8
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
  %38 = load i32*, i32** %23, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %31, align 4
  %40 = load i32, i32* %31, align 4
  %41 = add nsw i32 1, %40
  store i32 %41, i32* %32, align 4
  %42 = load i32, i32* %32, align 4
  %43 = load i32*, i32** %22, align 8
  %44 = sext i32 %42 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %22, align 8
  %47 = load i32*, i32** %24, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 -1
  store i32* %48, i32** %24, align 8
  %49 = load i32*, i32** %26, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %33, align 4
  %51 = load i32, i32* %33, align 4
  %52 = add nsw i32 1, %51
  store i32 %52, i32* %34, align 4
  %53 = load i32, i32* %34, align 4
  %54 = load i32*, i32** %25, align 8
  %55 = sext i32 %53 to i64
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32* %57, i32** %25, align 8
  %58 = load i32*, i32** %27, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 -1
  store i32* %59, i32** %27, align 8
  %60 = load i32*, i32** %29, align 8
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %21, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %20, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %62, %64
  store i32 %65, i32* @sormhr_.nh, align 4
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 @lsame_(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %67, i32* @sormhr_.left, align 4
  %68 = load i32*, i32** %28, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, -1
  %71 = zext i1 %70 to i32
  store i32 %71, i32* @sormhr_.lquery, align 4
  %72 = load i32, i32* @sormhr_.left, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %14
  %75 = load i32*, i32** %18, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* @sormhr_.nq, align 4
  %77 = load i32*, i32** %19, align 8
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* @sormhr_.nw, align 4
  br label %84

79:                                               ; preds = %14
  %80 = load i32*, i32** %19, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* @sormhr_.nq, align 4
  %82 = load i32*, i32** %18, align 8
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* @sormhr_.nw, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* @sormhr_.left, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %16, align 8
  %89 = call i32 @lsame_(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %29, align 8
  store i32 -1, i32* %92, align 4
  br label %178

93:                                               ; preds = %87, %84
  %94 = load i8*, i8** %17, align 8
  %95 = call i32 @lsame_(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %17, align 8
  %99 = call i32 @lsame_(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load i32*, i32** %29, align 8
  store i32 -2, i32* %102, align 4
  br label %177

103:                                              ; preds = %97, %93
  %104 = load i32*, i32** %18, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32*, i32** %29, align 8
  store i32 -3, i32* %108, align 4
  br label %176

109:                                              ; preds = %103
  %110 = load i32*, i32** %19, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32*, i32** %29, align 8
  store i32 -4, i32* %114, align 4
  br label %175

115:                                              ; preds = %109
  %116 = load i32*, i32** %20, align 8
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %125, label %119

119:                                              ; preds = %115
  %120 = load i32*, i32** %20, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @sormhr_.nq, align 4
  %123 = call i32 @max(i32 1, i32 %122)
  %124 = icmp sgt i32 %121, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119, %115
  %126 = load i32*, i32** %29, align 8
  store i32 -5, i32* %126, align 4
  br label %174

127:                                              ; preds = %119
  %128 = load i32*, i32** %21, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %20, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @sormhr_.nq, align 4
  %133 = call i32 @min(i32 %131, i32 %132)
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %127
  %136 = load i32*, i32** %21, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @sormhr_.nq, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %135, %127
  %141 = load i32*, i32** %29, align 8
  store i32 -6, i32* %141, align 4
  br label %173

142:                                              ; preds = %135
  %143 = load i32*, i32** %23, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @sormhr_.nq, align 4
  %146 = call i32 @max(i32 1, i32 %145)
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32*, i32** %29, align 8
  store i32 -8, i32* %149, align 4
  br label %172

150:                                              ; preds = %142
  %151 = load i32*, i32** %26, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %18, align 8
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @max(i32 1, i32 %154)
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32*, i32** %29, align 8
  store i32 -11, i32* %158, align 4
  br label %171

159:                                              ; preds = %150
  %160 = load i32*, i32** %28, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @sormhr_.nw, align 4
  %163 = call i32 @max(i32 1, i32 %162)
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %159
  %166 = load i32, i32* @sormhr_.lquery, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = load i32*, i32** %29, align 8
  store i32 -13, i32* %169, align 4
  br label %170

170:                                              ; preds = %168, %165, %159
  br label %171

171:                                              ; preds = %170, %157
  br label %172

172:                                              ; preds = %171, %148
  br label %173

173:                                              ; preds = %172, %140
  br label %174

174:                                              ; preds = %173, %125
  br label %175

175:                                              ; preds = %174, %113
  br label %176

176:                                              ; preds = %175, %107
  br label %177

177:                                              ; preds = %176, %101
  br label %178

178:                                              ; preds = %177, %91
  %179 = load i32*, i32** %29, align 8
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %221

182:                                              ; preds = %178
  %183 = load i32, i32* @sormhr_.left, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %182
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  store i32 1, i32* %186, align 4
  %187 = load i8*, i8** %16, align 8
  %188 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  store i8* %187, i8** %188, align 16
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  store i32 1, i32* %189, align 4
  %190 = load i8*, i8** %17, align 8
  %191 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 1
  store i8* %190, i8** %191, align 8
  %192 = getelementptr inbounds [2 x i8], [2 x i8]* %37, i64 0, i64 0
  %193 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  %195 = call i32 @s_cat(i8* %192, i8** %193, i32* %194, i32* @c__2, i32 2)
  %196 = getelementptr inbounds [2 x i8], [2 x i8]* %37, i64 0, i64 0
  %197 = load i32*, i32** %19, align 8
  %198 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %196, i32* @sormhr_.nh, i32* %197, i32* @sormhr_.nh, i32* @c_n1, i32 6, i32 2)
  store i32 %198, i32* @sormhr_.nb, align 4
  br label %213

199:                                              ; preds = %182
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  store i32 1, i32* %200, align 4
  %201 = load i8*, i8** %16, align 8
  %202 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  store i8* %201, i8** %202, align 16
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  store i32 1, i32* %203, align 4
  %204 = load i8*, i8** %17, align 8
  %205 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 1
  store i8* %204, i8** %205, align 8
  %206 = getelementptr inbounds [2 x i8], [2 x i8]* %37, i64 0, i64 0
  %207 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 0
  %208 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  %209 = call i32 @s_cat(i8* %206, i8** %207, i32* %208, i32* @c__2, i32 2)
  %210 = getelementptr inbounds [2 x i8], [2 x i8]* %37, i64 0, i64 0
  %211 = load i32*, i32** %18, align 8
  %212 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %210, i32* %211, i32* @sormhr_.nh, i32* @sormhr_.nh, i32* @c_n1, i32 6, i32 2)
  store i32 %212, i32* @sormhr_.nb, align 4
  br label %213

213:                                              ; preds = %199, %185
  %214 = load i32, i32* @sormhr_.nw, align 4
  %215 = call i32 @max(i32 1, i32 %214)
  %216 = load i32, i32* @sormhr_.nb, align 4
  %217 = mul nsw i32 %215, %216
  store i32 %217, i32* @sormhr_.lwkopt, align 4
  %218 = load i32, i32* @sormhr_.lwkopt, align 4
  %219 = load i32*, i32** %27, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %213, %178
  %222 = load i32*, i32** %29, align 8
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %221
  %226 = load i32*, i32** %29, align 8
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %36, align 4
  %229 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %36)
  store i32 0, i32* %15, align 4
  br label %302

230:                                              ; preds = %221
  %231 = load i32, i32* @sormhr_.lquery, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  store i32 0, i32* %15, align 4
  br label %302

234:                                              ; preds = %230
  br label %235

235:                                              ; preds = %234
  %236 = load i32*, i32** %18, align 8
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %235
  %240 = load i32*, i32** %19, align 8
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %239
  %244 = load i32, i32* @sormhr_.nh, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243, %239, %235
  %247 = load i32*, i32** %27, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  store i32 1, i32* %248, align 4
  store i32 0, i32* %15, align 4
  br label %302

249:                                              ; preds = %243
  %250 = load i32, i32* @sormhr_.left, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %249
  %253 = load i32, i32* @sormhr_.nh, align 4
  store i32 %253, i32* @sormhr_.mi, align 4
  %254 = load i32*, i32** %19, align 8
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* @sormhr_.ni, align 4
  %256 = load i32*, i32** %20, align 8
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* @sormhr_.i1, align 4
  store i32 1, i32* @sormhr_.i2, align 4
  br label %266

259:                                              ; preds = %249
  %260 = load i32*, i32** %18, align 8
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* @sormhr_.mi, align 4
  %262 = load i32, i32* @sormhr_.nh, align 4
  store i32 %262, i32* @sormhr_.ni, align 4
  store i32 1, i32* @sormhr_.i1, align 4
  %263 = load i32*, i32** %20, align 8
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* @sormhr_.i2, align 4
  br label %266

266:                                              ; preds = %259, %252
  %267 = load i8*, i8** %16, align 8
  %268 = load i8*, i8** %17, align 8
  %269 = load i32*, i32** %22, align 8
  %270 = load i32*, i32** %20, align 8
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  %273 = load i32*, i32** %20, align 8
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %31, align 4
  %276 = mul nsw i32 %274, %275
  %277 = add nsw i32 %272, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %269, i64 %278
  %280 = load i32*, i32** %23, align 8
  %281 = load i32*, i32** %24, align 8
  %282 = load i32*, i32** %20, align 8
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = load i32*, i32** %25, align 8
  %287 = load i32, i32* @sormhr_.i1, align 4
  %288 = load i32, i32* @sormhr_.i2, align 4
  %289 = load i32, i32* %33, align 4
  %290 = mul nsw i32 %288, %289
  %291 = add nsw i32 %287, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %286, i64 %292
  %294 = load i32*, i32** %26, align 8
  %295 = load i32*, i32** %27, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 1
  %297 = load i32*, i32** %28, align 8
  %298 = call i32 @sormqr_(i8* %267, i8* %268, i32* @sormhr_.mi, i32* @sormhr_.ni, i32* @sormhr_.nh, i32* %279, i32* %280, i32* %285, i32* %293, i32* %294, i32* %296, i32* %297, i32* @sormhr_.iinfo)
  %299 = load i32, i32* @sormhr_.lwkopt, align 4
  %300 = load i32*, i32** %27, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  store i32 %299, i32* %301, align 4
  store i32 0, i32* %15, align 4
  br label %302

302:                                              ; preds = %266, %246, %233, %225
  %303 = load i32, i32* %15, align 4
  ret i32 %303
}

declare dso_local i32 @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @s_cat(i8*, i8**, i32*, i32*, i32) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @sormqr_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
