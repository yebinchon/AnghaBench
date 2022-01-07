; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dgebrd_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dgebrd_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dgebrd_.i__ = internal global i32 0, align 4
@dgebrd_.j = internal global i32 0, align 4
@dgebrd_.nb = internal global i32 0, align 4
@dgebrd_.nx = internal global i32 0, align 4
@dgebrd_.ws = internal global i32 0, align 4
@dgebrd_.nbmin = internal global i32 0, align 4
@dgebrd_.iinfo = internal global i32 0, align 4
@dgebrd_.minmn = internal global i32 0, align 4
@dgebrd_.ldwrkx = internal global i32 0, align 4
@dgebrd_.ldwrky = internal global i32 0, align 4
@dgebrd_.lwkopt = internal global i32 0, align 4
@dgebrd_.lquery = internal global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DGEBRD\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@c__3 = common dso_local global i32 0, align 4
@c__2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_b151 = common dso_local global i32 0, align 4
@c_b15 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dgebrd_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %24, align 4
  %32 = load i32, i32* %24, align 4
  %33 = add nsw i32 1, %32
  store i32 %33, i32* %25, align 4
  %34 = load i32, i32* %25, align 4
  %35 = load i32*, i32** %15, align 8
  %36 = sext i32 %34 to i64
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 -1
  store i32* %40, i32** %17, align 8
  %41 = load i32*, i32** %18, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 -1
  store i32* %42, i32** %18, align 8
  %43 = load i32*, i32** %19, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 -1
  store i32* %44, i32** %19, align 8
  %45 = load i32*, i32** %20, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 -1
  store i32* %46, i32** %20, align 8
  %47 = load i32*, i32** %21, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 -1
  store i32* %48, i32** %21, align 8
  %49 = load i32*, i32** %23, align 8
  store i32 0, i32* %49, align 4
  store i32 1, i32* %26, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %50, i32* %51, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %52, i32* %27, align 4
  %53 = load i32, i32* %26, align 4
  %54 = load i32, i32* %27, align 4
  %55 = call i32 @max(i32 %53, i32 %54)
  store i32 %55, i32* @dgebrd_.nb, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %57, %59
  %61 = load i32, i32* @dgebrd_.nb, align 4
  %62 = mul nsw i32 %60, %61
  store i32 %62, i32* @dgebrd_.lwkopt, align 4
  %63 = load i32, i32* @dgebrd_.lwkopt, align 4
  %64 = load i32*, i32** %21, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %22, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, -1
  %69 = zext i1 %68 to i32
  store i32 %69, i32* @dgebrd_.lquery, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %11
  %74 = load i32*, i32** %23, align 8
  store i32 -1, i32* %74, align 4
  br label %109

75:                                               ; preds = %11
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32*, i32** %23, align 8
  store i32 -2, i32* %80, align 4
  br label %108

81:                                               ; preds = %75
  %82 = load i32*, i32** %16, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @max(i32 1, i32 %85)
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32*, i32** %23, align 8
  store i32 -4, i32* %89, align 4
  br label %107

90:                                               ; preds = %81
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @max(i32 1, i32 %92)
  store i32 %93, i32* %26, align 4
  %94 = load i32*, i32** %22, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %26, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @max(i32 %96, i32 %98)
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %90
  %102 = load i32, i32* @dgebrd_.lquery, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load i32*, i32** %23, align 8
  store i32 -10, i32* %105, align 4
  br label %106

106:                                              ; preds = %104, %101, %90
  br label %107

107:                                              ; preds = %106, %88
  br label %108

108:                                              ; preds = %107, %79
  br label %109

109:                                              ; preds = %108, %73
  %110 = load i32*, i32** %23, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32*, i32** %23, align 8
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %26, align 4
  %117 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %26)
  store i32 0, i32* %12, align 4
  br label %498

118:                                              ; preds = %109
  %119 = load i32, i32* @dgebrd_.lquery, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %12, align 4
  br label %498

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @min(i32 %125, i32 %127)
  store i32 %128, i32* @dgebrd_.minmn, align 4
  %129 = load i32, i32* @dgebrd_.minmn, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32*, i32** %21, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 1, i32* %133, align 4
  store i32 0, i32* %12, align 4
  br label %498

134:                                              ; preds = %123
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @max(i32 %136, i32 %138)
  store i32 %139, i32* @dgebrd_.ws, align 4
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* @dgebrd_.ldwrkx, align 4
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* @dgebrd_.ldwrky, align 4
  %144 = load i32, i32* @dgebrd_.nb, align 4
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %201

146:                                              ; preds = %134
  %147 = load i32, i32* @dgebrd_.nb, align 4
  %148 = load i32, i32* @dgebrd_.minmn, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %201

150:                                              ; preds = %146
  %151 = load i32, i32* @dgebrd_.nb, align 4
  store i32 %151, i32* %26, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = call i32 @ilaenv_(i32* @c__3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %152, i32* %153, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %154, i32* %27, align 4
  %155 = load i32, i32* %26, align 4
  %156 = load i32, i32* %27, align 4
  %157 = call i32 @max(i32 %155, i32 %156)
  store i32 %157, i32* @dgebrd_.nx, align 4
  %158 = load i32, i32* @dgebrd_.nx, align 4
  %159 = load i32, i32* @dgebrd_.minmn, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %200

161:                                              ; preds = %150
  %162 = load i32*, i32** %13, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %14, align 8
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %163, %165
  %167 = load i32, i32* @dgebrd_.nb, align 4
  %168 = mul nsw i32 %166, %167
  store i32 %168, i32* @dgebrd_.ws, align 4
  %169 = load i32*, i32** %22, align 8
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @dgebrd_.ws, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %199

173:                                              ; preds = %161
  %174 = load i32*, i32** %13, align 8
  %175 = load i32*, i32** %14, align 8
  %176 = call i32 @ilaenv_(i32* @c__2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %174, i32* %175, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %176, i32* @dgebrd_.nbmin, align 4
  %177 = load i32*, i32** %22, align 8
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %13, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %14, align 8
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %180, %182
  %184 = load i32, i32* @dgebrd_.nbmin, align 4
  %185 = mul nsw i32 %183, %184
  %186 = icmp sge i32 %178, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %173
  %188 = load i32*, i32** %22, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %13, align 8
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %14, align 8
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %191, %193
  %195 = sdiv i32 %189, %194
  store i32 %195, i32* @dgebrd_.nb, align 4
  br label %198

196:                                              ; preds = %173
  store i32 1, i32* @dgebrd_.nb, align 4
  %197 = load i32, i32* @dgebrd_.minmn, align 4
  store i32 %197, i32* @dgebrd_.nx, align 4
  br label %198

198:                                              ; preds = %196, %187
  br label %199

199:                                              ; preds = %198, %161
  br label %200

200:                                              ; preds = %199, %150
  br label %203

201:                                              ; preds = %146, %134
  %202 = load i32, i32* @dgebrd_.minmn, align 4
  store i32 %202, i32* @dgebrd_.nx, align 4
  br label %203

203:                                              ; preds = %201, %200
  %204 = load i32, i32* @dgebrd_.minmn, align 4
  %205 = load i32, i32* @dgebrd_.nx, align 4
  %206 = sub nsw i32 %204, %205
  store i32 %206, i32* %26, align 4
  %207 = load i32, i32* @dgebrd_.nb, align 4
  store i32 %207, i32* %27, align 4
  store i32 1, i32* @dgebrd_.i__, align 4
  br label %208

208:                                              ; preds = %452, %203
  %209 = load i32, i32* %27, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i32, i32* @dgebrd_.i__, align 4
  %213 = load i32, i32* %26, align 4
  %214 = icmp sge i32 %212, %213
  %215 = zext i1 %214 to i32
  br label %221

216:                                              ; preds = %208
  %217 = load i32, i32* @dgebrd_.i__, align 4
  %218 = load i32, i32* %26, align 4
  %219 = icmp sle i32 %217, %218
  %220 = zext i1 %219 to i32
  br label %221

221:                                              ; preds = %216, %211
  %222 = phi i32 [ %215, %211 ], [ %220, %216 ]
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %456

224:                                              ; preds = %221
  %225 = load i32*, i32** %13, align 8
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @dgebrd_.i__, align 4
  %228 = sub nsw i32 %226, %227
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %28, align 4
  %230 = load i32*, i32** %14, align 8
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @dgebrd_.i__, align 4
  %233 = sub nsw i32 %231, %232
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %29, align 4
  %235 = load i32*, i32** %15, align 8
  %236 = load i32, i32* @dgebrd_.i__, align 4
  %237 = load i32, i32* @dgebrd_.i__, align 4
  %238 = load i32, i32* %24, align 4
  %239 = mul nsw i32 %237, %238
  %240 = add nsw i32 %236, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %235, i64 %241
  %243 = load i32*, i32** %16, align 8
  %244 = load i32*, i32** %17, align 8
  %245 = load i32, i32* @dgebrd_.i__, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32*, i32** %18, align 8
  %249 = load i32, i32* @dgebrd_.i__, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32*, i32** %19, align 8
  %253 = load i32, i32* @dgebrd_.i__, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32*, i32** %20, align 8
  %257 = load i32, i32* @dgebrd_.i__, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32*, i32** %21, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32*, i32** %21, align 8
  %263 = load i32, i32* @dgebrd_.ldwrkx, align 4
  %264 = load i32, i32* @dgebrd_.nb, align 4
  %265 = mul nsw i32 %263, %264
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %262, i64 %267
  %269 = call i32 @dlabrd_(i32* %28, i32* %29, i32* @dgebrd_.nb, i32* %242, i32* %243, i32* %247, i32* %251, i32* %255, i32* %259, i32* %261, i32* @dgebrd_.ldwrkx, i32* %268, i32* @dgebrd_.ldwrky)
  %270 = load i32*, i32** %13, align 8
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @dgebrd_.i__, align 4
  %273 = sub nsw i32 %271, %272
  %274 = load i32, i32* @dgebrd_.nb, align 4
  %275 = sub nsw i32 %273, %274
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %28, align 4
  %277 = load i32*, i32** %14, align 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @dgebrd_.i__, align 4
  %280 = sub nsw i32 %278, %279
  %281 = load i32, i32* @dgebrd_.nb, align 4
  %282 = sub nsw i32 %280, %281
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %29, align 4
  %284 = load i32*, i32** %15, align 8
  %285 = load i32, i32* @dgebrd_.i__, align 4
  %286 = load i32, i32* @dgebrd_.nb, align 4
  %287 = add nsw i32 %285, %286
  %288 = load i32, i32* @dgebrd_.i__, align 4
  %289 = load i32, i32* %24, align 4
  %290 = mul nsw i32 %288, %289
  %291 = add nsw i32 %287, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %284, i64 %292
  %294 = load i32*, i32** %16, align 8
  %295 = load i32*, i32** %21, align 8
  %296 = load i32, i32* @dgebrd_.ldwrkx, align 4
  %297 = load i32, i32* @dgebrd_.nb, align 4
  %298 = mul nsw i32 %296, %297
  %299 = load i32, i32* @dgebrd_.nb, align 4
  %300 = add nsw i32 %298, %299
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %295, i64 %302
  %304 = load i32*, i32** %15, align 8
  %305 = load i32, i32* @dgebrd_.i__, align 4
  %306 = load i32, i32* @dgebrd_.nb, align 4
  %307 = add nsw i32 %305, %306
  %308 = load i32, i32* @dgebrd_.i__, align 4
  %309 = load i32, i32* @dgebrd_.nb, align 4
  %310 = add nsw i32 %308, %309
  %311 = load i32, i32* %24, align 4
  %312 = mul nsw i32 %310, %311
  %313 = add nsw i32 %307, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %304, i64 %314
  %316 = load i32*, i32** %16, align 8
  %317 = call i32 @dgemm_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %28, i32* %29, i32* @dgebrd_.nb, i32* @c_b151, i32* %293, i32* %294, i32* %303, i32* @dgebrd_.ldwrky, i32* @c_b15, i32* %315, i32* %316)
  %318 = load i32*, i32** %13, align 8
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @dgebrd_.i__, align 4
  %321 = sub nsw i32 %319, %320
  %322 = load i32, i32* @dgebrd_.nb, align 4
  %323 = sub nsw i32 %321, %322
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %28, align 4
  %325 = load i32*, i32** %14, align 8
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @dgebrd_.i__, align 4
  %328 = sub nsw i32 %326, %327
  %329 = load i32, i32* @dgebrd_.nb, align 4
  %330 = sub nsw i32 %328, %329
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %29, align 4
  %332 = load i32*, i32** %21, align 8
  %333 = load i32, i32* @dgebrd_.nb, align 4
  %334 = add nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %332, i64 %335
  %337 = load i32*, i32** %15, align 8
  %338 = load i32, i32* @dgebrd_.i__, align 4
  %339 = load i32, i32* @dgebrd_.i__, align 4
  %340 = load i32, i32* @dgebrd_.nb, align 4
  %341 = add nsw i32 %339, %340
  %342 = load i32, i32* %24, align 4
  %343 = mul nsw i32 %341, %342
  %344 = add nsw i32 %338, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %337, i64 %345
  %347 = load i32*, i32** %16, align 8
  %348 = load i32*, i32** %15, align 8
  %349 = load i32, i32* @dgebrd_.i__, align 4
  %350 = load i32, i32* @dgebrd_.nb, align 4
  %351 = add nsw i32 %349, %350
  %352 = load i32, i32* @dgebrd_.i__, align 4
  %353 = load i32, i32* @dgebrd_.nb, align 4
  %354 = add nsw i32 %352, %353
  %355 = load i32, i32* %24, align 4
  %356 = mul nsw i32 %354, %355
  %357 = add nsw i32 %351, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %348, i64 %358
  %360 = load i32*, i32** %16, align 8
  %361 = call i32 @dgemm_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %28, i32* %29, i32* @dgebrd_.nb, i32* @c_b151, i32* %336, i32* @dgebrd_.ldwrkx, i32* %346, i32* %347, i32* @c_b15, i32* %359, i32* %360)
  %362 = load i32*, i32** %13, align 8
  %363 = load i32, i32* %362, align 4
  %364 = load i32*, i32** %14, align 8
  %365 = load i32, i32* %364, align 4
  %366 = icmp sge i32 %363, %365
  br i1 %366, label %367, label %409

367:                                              ; preds = %224
  %368 = load i32, i32* @dgebrd_.i__, align 4
  %369 = load i32, i32* @dgebrd_.nb, align 4
  %370 = add nsw i32 %368, %369
  %371 = sub nsw i32 %370, 1
  store i32 %371, i32* %28, align 4
  %372 = load i32, i32* @dgebrd_.i__, align 4
  store i32 %372, i32* @dgebrd_.j, align 4
  br label %373

373:                                              ; preds = %405, %367
  %374 = load i32, i32* @dgebrd_.j, align 4
  %375 = load i32, i32* %28, align 4
  %376 = icmp sle i32 %374, %375
  br i1 %376, label %377, label %408

377:                                              ; preds = %373
  %378 = load i32*, i32** %17, align 8
  %379 = load i32, i32* @dgebrd_.j, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load i32*, i32** %15, align 8
  %384 = load i32, i32* @dgebrd_.j, align 4
  %385 = load i32, i32* @dgebrd_.j, align 4
  %386 = load i32, i32* %24, align 4
  %387 = mul nsw i32 %385, %386
  %388 = add nsw i32 %384, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %383, i64 %389
  store i32 %382, i32* %390, align 4
  %391 = load i32*, i32** %18, align 8
  %392 = load i32, i32* @dgebrd_.j, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load i32*, i32** %15, align 8
  %397 = load i32, i32* @dgebrd_.j, align 4
  %398 = load i32, i32* @dgebrd_.j, align 4
  %399 = add nsw i32 %398, 1
  %400 = load i32, i32* %24, align 4
  %401 = mul nsw i32 %399, %400
  %402 = add nsw i32 %397, %401
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %396, i64 %403
  store i32 %395, i32* %404, align 4
  br label %405

405:                                              ; preds = %377
  %406 = load i32, i32* @dgebrd_.j, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* @dgebrd_.j, align 4
  br label %373

408:                                              ; preds = %373
  br label %451

409:                                              ; preds = %224
  %410 = load i32, i32* @dgebrd_.i__, align 4
  %411 = load i32, i32* @dgebrd_.nb, align 4
  %412 = add nsw i32 %410, %411
  %413 = sub nsw i32 %412, 1
  store i32 %413, i32* %28, align 4
  %414 = load i32, i32* @dgebrd_.i__, align 4
  store i32 %414, i32* @dgebrd_.j, align 4
  br label %415

415:                                              ; preds = %447, %409
  %416 = load i32, i32* @dgebrd_.j, align 4
  %417 = load i32, i32* %28, align 4
  %418 = icmp sle i32 %416, %417
  br i1 %418, label %419, label %450

419:                                              ; preds = %415
  %420 = load i32*, i32** %17, align 8
  %421 = load i32, i32* @dgebrd_.j, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = load i32*, i32** %15, align 8
  %426 = load i32, i32* @dgebrd_.j, align 4
  %427 = load i32, i32* @dgebrd_.j, align 4
  %428 = load i32, i32* %24, align 4
  %429 = mul nsw i32 %427, %428
  %430 = add nsw i32 %426, %429
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %425, i64 %431
  store i32 %424, i32* %432, align 4
  %433 = load i32*, i32** %18, align 8
  %434 = load i32, i32* @dgebrd_.j, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = load i32*, i32** %15, align 8
  %439 = load i32, i32* @dgebrd_.j, align 4
  %440 = add nsw i32 %439, 1
  %441 = load i32, i32* @dgebrd_.j, align 4
  %442 = load i32, i32* %24, align 4
  %443 = mul nsw i32 %441, %442
  %444 = add nsw i32 %440, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %438, i64 %445
  store i32 %437, i32* %446, align 4
  br label %447

447:                                              ; preds = %419
  %448 = load i32, i32* @dgebrd_.j, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* @dgebrd_.j, align 4
  br label %415

450:                                              ; preds = %415
  br label %451

451:                                              ; preds = %450, %408
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %27, align 4
  %454 = load i32, i32* @dgebrd_.i__, align 4
  %455 = add nsw i32 %454, %453
  store i32 %455, i32* @dgebrd_.i__, align 4
  br label %208

456:                                              ; preds = %221
  %457 = load i32*, i32** %13, align 8
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @dgebrd_.i__, align 4
  %460 = sub nsw i32 %458, %459
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %27, align 4
  %462 = load i32*, i32** %14, align 8
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @dgebrd_.i__, align 4
  %465 = sub nsw i32 %463, %464
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %26, align 4
  %467 = load i32*, i32** %15, align 8
  %468 = load i32, i32* @dgebrd_.i__, align 4
  %469 = load i32, i32* @dgebrd_.i__, align 4
  %470 = load i32, i32* %24, align 4
  %471 = mul nsw i32 %469, %470
  %472 = add nsw i32 %468, %471
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %467, i64 %473
  %475 = load i32*, i32** %16, align 8
  %476 = load i32*, i32** %17, align 8
  %477 = load i32, i32* @dgebrd_.i__, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %476, i64 %478
  %480 = load i32*, i32** %18, align 8
  %481 = load i32, i32* @dgebrd_.i__, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32*, i32** %19, align 8
  %485 = load i32, i32* @dgebrd_.i__, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = load i32*, i32** %20, align 8
  %489 = load i32, i32* @dgebrd_.i__, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = load i32*, i32** %21, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 1
  %494 = call i32 @dgebd2_(i32* %27, i32* %26, i32* %474, i32* %475, i32* %479, i32* %483, i32* %487, i32* %491, i32* %493, i32* @dgebrd_.iinfo)
  %495 = load i32, i32* @dgebrd_.ws, align 4
  %496 = load i32*, i32** %21, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 1
  store i32 %495, i32* %497, align 4
  store i32 0, i32* %12, align 4
  br label %498

498:                                              ; preds = %456, %131, %121, %113
  %499 = load i32, i32* %12, align 4
  ret i32 %499
}

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dlabrd_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dgemm_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dgebd2_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
