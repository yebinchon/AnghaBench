; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgetrf_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgetrf_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sgetrf_.i__ = internal global i32 0, align 4
@sgetrf_.j = internal global i32 0, align 4
@sgetrf_.jb = internal global i32 0, align 4
@sgetrf_.nb = internal global i32 0, align 4
@sgetrf_.iinfo = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SGETRF\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@c_b15 = common dso_local global i32 0, align 4
@c_b151 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgetrf_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 1, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = sext i32 %25 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 -1
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %13, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32*, i32** %13, align 8
  store i32 -1, i32* %37, align 4
  br label %55

38:                                               ; preds = %6
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32*, i32** %13, align 8
  store i32 -2, i32* %43, align 4
  br label %54

44:                                               ; preds = %38
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @max(i32 1, i32 %48)
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32*, i32** %13, align 8
  store i32 -4, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %44
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %16, align 4
  %63 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 0, i32* %7, align 4
  br label %335

64:                                               ; preds = %55
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %64
  store i32 0, i32* %7, align 4
  br label %335

73:                                               ; preds = %68
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %74, i32* %75, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %76, i32* @sgetrf_.nb, align 4
  %77 = load i32, i32* @sgetrf_.nb, align 4
  %78 = icmp sle i32 %77, 1
  br i1 %78, label %87, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @sgetrf_.nb, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @min(i32 %82, i32 %84)
  %86 = icmp sge i32 %80, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %79, %73
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32*, i32** %11, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @sgetf2_(i32* %88, i32* %89, i32* %93, i32* %94, i32* %96, i32* %97)
  br label %334

99:                                               ; preds = %79
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @min(i32 %101, i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* @sgetrf_.nb, align 4
  store i32 %105, i32* %17, align 4
  store i32 1, i32* @sgetrf_.j, align 4
  br label %106

106:                                              ; preds = %329, %99
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* @sgetrf_.j, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp sge i32 %110, %111
  %113 = zext i1 %112 to i32
  br label %119

114:                                              ; preds = %106
  %115 = load i32, i32* @sgetrf_.j, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp sle i32 %115, %116
  %118 = zext i1 %117 to i32
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i32 [ %113, %109 ], [ %118, %114 ]
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %333

122:                                              ; preds = %119
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @min(i32 %124, i32 %126)
  %128 = load i32, i32* @sgetrf_.j, align 4
  %129 = sub nsw i32 %127, %128
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* @sgetrf_.nb, align 4
  %133 = call i32 @min(i32 %131, i32 %132)
  store i32 %133, i32* @sgetrf_.jb, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @sgetrf_.j, align 4
  %137 = sub nsw i32 %135, %136
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %18, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* @sgetrf_.j, align 4
  %141 = load i32, i32* @sgetrf_.j, align 4
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %140, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %139, i64 %145
  %147 = load i32*, i32** %11, align 8
  %148 = load i32*, i32** %12, align 8
  %149 = load i32, i32* @sgetrf_.j, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = call i32 @sgetf2_(i32* %18, i32* @sgetrf_.jb, i32* %146, i32* %147, i32* %151, i32* @sgetrf_.iinfo)
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %122
  %157 = load i32, i32* @sgetrf_.iinfo, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, i32* @sgetrf_.iinfo, align 4
  %161 = load i32, i32* @sgetrf_.j, align 4
  %162 = add nsw i32 %160, %161
  %163 = sub nsw i32 %162, 1
  %164 = load i32*, i32** %13, align 8
  store i32 %163, i32* %164, align 4
  br label %165

165:                                              ; preds = %159, %156, %122
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* @sgetrf_.j, align 4
  %169 = load i32, i32* @sgetrf_.jb, align 4
  %170 = add nsw i32 %168, %169
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %20, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %20, align 4
  %174 = call i32 @min(i32 %172, i32 %173)
  store i32 %174, i32* %18, align 4
  %175 = load i32, i32* @sgetrf_.j, align 4
  store i32 %175, i32* @sgetrf_.i__, align 4
  br label %176

176:                                              ; preds = %193, %165
  %177 = load i32, i32* @sgetrf_.i__, align 4
  %178 = load i32, i32* %18, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %180, label %196

180:                                              ; preds = %176
  %181 = load i32, i32* @sgetrf_.j, align 4
  %182 = sub nsw i32 %181, 1
  %183 = load i32*, i32** %12, align 8
  %184 = load i32, i32* @sgetrf_.i__, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %182, %187
  %189 = load i32*, i32** %12, align 8
  %190 = load i32, i32* @sgetrf_.i__, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %188, i32* %192, align 4
  br label %193

193:                                              ; preds = %180
  %194 = load i32, i32* @sgetrf_.i__, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* @sgetrf_.i__, align 4
  br label %176

196:                                              ; preds = %176
  %197 = load i32, i32* @sgetrf_.j, align 4
  %198 = sub nsw i32 %197, 1
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* @sgetrf_.j, align 4
  %200 = load i32, i32* @sgetrf_.jb, align 4
  %201 = add nsw i32 %199, %200
  %202 = sub nsw i32 %201, 1
  store i32 %202, i32* %19, align 4
  %203 = load i32*, i32** %10, align 8
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32*, i32** %11, align 8
  %208 = load i32*, i32** %12, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = call i32 @slaswp_(i32* %18, i32* %206, i32* %207, i32* @sgetrf_.j, i32* %19, i32* %209, i32* @c__1)
  %211 = load i32, i32* @sgetrf_.j, align 4
  %212 = load i32, i32* @sgetrf_.jb, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32*, i32** %9, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp sle i32 %213, %215
  br i1 %216, label %217, label %328

217:                                              ; preds = %196
  %218 = load i32*, i32** %9, align 8
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @sgetrf_.j, align 4
  %221 = sub nsw i32 %219, %220
  %222 = load i32, i32* @sgetrf_.jb, align 4
  %223 = sub nsw i32 %221, %222
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %18, align 4
  %225 = load i32, i32* @sgetrf_.j, align 4
  %226 = load i32, i32* @sgetrf_.jb, align 4
  %227 = add nsw i32 %225, %226
  %228 = sub nsw i32 %227, 1
  store i32 %228, i32* %19, align 4
  %229 = load i32*, i32** %10, align 8
  %230 = load i32, i32* @sgetrf_.j, align 4
  %231 = load i32, i32* @sgetrf_.jb, align 4
  %232 = add nsw i32 %230, %231
  %233 = load i32, i32* %14, align 4
  %234 = mul nsw i32 %232, %233
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %229, i64 %236
  %238 = load i32*, i32** %11, align 8
  %239 = load i32*, i32** %12, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = call i32 @slaswp_(i32* %18, i32* %237, i32* %238, i32* @sgetrf_.j, i32* %19, i32* %240, i32* @c__1)
  %242 = load i32*, i32** %9, align 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @sgetrf_.j, align 4
  %245 = sub nsw i32 %243, %244
  %246 = load i32, i32* @sgetrf_.jb, align 4
  %247 = sub nsw i32 %245, %246
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %18, align 4
  %249 = load i32*, i32** %10, align 8
  %250 = load i32, i32* @sgetrf_.j, align 4
  %251 = load i32, i32* @sgetrf_.j, align 4
  %252 = load i32, i32* %14, align 4
  %253 = mul nsw i32 %251, %252
  %254 = add nsw i32 %250, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %249, i64 %255
  %257 = load i32*, i32** %11, align 8
  %258 = load i32*, i32** %10, align 8
  %259 = load i32, i32* @sgetrf_.j, align 4
  %260 = load i32, i32* @sgetrf_.j, align 4
  %261 = load i32, i32* @sgetrf_.jb, align 4
  %262 = add nsw i32 %260, %261
  %263 = load i32, i32* %14, align 4
  %264 = mul nsw i32 %262, %263
  %265 = add nsw i32 %259, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %258, i64 %266
  %268 = load i32*, i32** %11, align 8
  %269 = call i32 @strsm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* @sgetrf_.jb, i32* %18, i32* @c_b15, i32* %256, i32* %257, i32* %267, i32* %268)
  %270 = load i32, i32* @sgetrf_.j, align 4
  %271 = load i32, i32* @sgetrf_.jb, align 4
  %272 = add nsw i32 %270, %271
  %273 = load i32*, i32** %8, align 8
  %274 = load i32, i32* %273, align 4
  %275 = icmp sle i32 %272, %274
  br i1 %275, label %276, label %327

276:                                              ; preds = %217
  %277 = load i32*, i32** %8, align 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @sgetrf_.j, align 4
  %280 = sub nsw i32 %278, %279
  %281 = load i32, i32* @sgetrf_.jb, align 4
  %282 = sub nsw i32 %280, %281
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %18, align 4
  %284 = load i32*, i32** %9, align 8
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @sgetrf_.j, align 4
  %287 = sub nsw i32 %285, %286
  %288 = load i32, i32* @sgetrf_.jb, align 4
  %289 = sub nsw i32 %287, %288
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %19, align 4
  %291 = load i32*, i32** %10, align 8
  %292 = load i32, i32* @sgetrf_.j, align 4
  %293 = load i32, i32* @sgetrf_.jb, align 4
  %294 = add nsw i32 %292, %293
  %295 = load i32, i32* @sgetrf_.j, align 4
  %296 = load i32, i32* %14, align 4
  %297 = mul nsw i32 %295, %296
  %298 = add nsw i32 %294, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %291, i64 %299
  %301 = load i32*, i32** %11, align 8
  %302 = load i32*, i32** %10, align 8
  %303 = load i32, i32* @sgetrf_.j, align 4
  %304 = load i32, i32* @sgetrf_.j, align 4
  %305 = load i32, i32* @sgetrf_.jb, align 4
  %306 = add nsw i32 %304, %305
  %307 = load i32, i32* %14, align 4
  %308 = mul nsw i32 %306, %307
  %309 = add nsw i32 %303, %308
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %302, i64 %310
  %312 = load i32*, i32** %11, align 8
  %313 = load i32*, i32** %10, align 8
  %314 = load i32, i32* @sgetrf_.j, align 4
  %315 = load i32, i32* @sgetrf_.jb, align 4
  %316 = add nsw i32 %314, %315
  %317 = load i32, i32* @sgetrf_.j, align 4
  %318 = load i32, i32* @sgetrf_.jb, align 4
  %319 = add nsw i32 %317, %318
  %320 = load i32, i32* %14, align 4
  %321 = mul nsw i32 %319, %320
  %322 = add nsw i32 %316, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %313, i64 %323
  %325 = load i32*, i32** %11, align 8
  %326 = call i32 @sgemm_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %18, i32* %19, i32* @sgetrf_.jb, i32* @c_b151, i32* %300, i32* %301, i32* %311, i32* %312, i32* @c_b15, i32* %324, i32* %325)
  br label %327

327:                                              ; preds = %276, %217
  br label %328

328:                                              ; preds = %327, %196
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %17, align 4
  %331 = load i32, i32* @sgetrf_.j, align 4
  %332 = add nsw i32 %331, %330
  store i32 %332, i32* @sgetrf_.j, align 4
  br label %106

333:                                              ; preds = %119
  br label %334

334:                                              ; preds = %333, %87
  store i32 0, i32* %7, align 4
  br label %335

335:                                              ; preds = %334, %72, %59
  %336 = load i32, i32* %7, align 4
  ret i32 %336
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sgetf2_(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slaswp_(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @strsm_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sgemm_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
