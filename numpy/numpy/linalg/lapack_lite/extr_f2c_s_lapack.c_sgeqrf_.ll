; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgeqrf_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgeqrf_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sgeqrf_.i__ = internal global i32 0, align 4
@sgeqrf_.k = internal global i32 0, align 4
@sgeqrf_.ib = internal global i32 0, align 4
@sgeqrf_.nb = internal global i32 0, align 4
@sgeqrf_.nx = internal global i32 0, align 4
@sgeqrf_.iws = internal global i32 0, align 4
@sgeqrf_.nbmin = internal global i32 0, align 4
@sgeqrf_.iinfo = internal global i32 0, align 4
@sgeqrf_.ldwork = internal global i32 0, align 4
@sgeqrf_.lwkopt = internal global i32 0, align 4
@sgeqrf_.lquery = internal global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SGEQRF\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@c__3 = common dso_local global i32 0, align 4
@c__2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Forward\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Columnwise\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgeqrf_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = add nsw i32 1, %26
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = sext i32 %28 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 -1
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 -1
  store i32* %36, i32** %15, align 8
  %37 = load i32*, i32** %17, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %38, i32* %39, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %40, i32* @sgeqrf_.nb, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @sgeqrf_.nb, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* @sgeqrf_.lwkopt, align 4
  %45 = load i32, i32* @sgeqrf_.lwkopt, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %16, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, -1
  %51 = zext i1 %50 to i32
  store i32 %51, i32* @sgeqrf_.lquery, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %8
  %56 = load i32*, i32** %17, align 8
  store i32 -1, i32* %56, align 4
  br label %87

57:                                               ; preds = %8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32*, i32** %17, align 8
  store i32 -2, i32* %62, align 4
  br label %86

63:                                               ; preds = %57
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @max(i32 1, i32 %67)
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32*, i32** %17, align 8
  store i32 -4, i32* %71, align 4
  br label %85

72:                                               ; preds = %63
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @max(i32 1, i32 %76)
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32, i32* @sgeqrf_.lquery, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i32*, i32** %17, align 8
  store i32 -7, i32* %83, align 4
  br label %84

84:                                               ; preds = %82, %79, %72
  br label %85

85:                                               ; preds = %84, %70
  br label %86

86:                                               ; preds = %85, %61
  br label %87

87:                                               ; preds = %86, %55
  %88 = load i32*, i32** %17, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %20, align 4
  %95 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 0, i32* %9, align 4
  br label %326

96:                                               ; preds = %87
  %97 = load i32, i32* @sgeqrf_.lquery, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 0, i32* %9, align 4
  br label %326

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %100
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @min(i32 %103, i32 %105)
  store i32 %106, i32* @sgeqrf_.k, align 4
  %107 = load i32, i32* @sgeqrf_.k, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32*, i32** %15, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 1, i32* %111, align 4
  store i32 0, i32* %9, align 4
  br label %326

112:                                              ; preds = %101
  store i32 2, i32* @sgeqrf_.nbmin, align 4
  store i32 0, i32* @sgeqrf_.nx, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* @sgeqrf_.iws, align 4
  %115 = load i32, i32* @sgeqrf_.nb, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %154

117:                                              ; preds = %112
  %118 = load i32, i32* @sgeqrf_.nb, align 4
  %119 = load i32, i32* @sgeqrf_.k, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %154

121:                                              ; preds = %117
  store i32 0, i32* %20, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @ilaenv_(i32* @c__3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %122, i32* %123, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %124, i32* %21, align 4
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %21, align 4
  %127 = call i32 @max(i32 %125, i32 %126)
  store i32 %127, i32* @sgeqrf_.nx, align 4
  %128 = load i32, i32* @sgeqrf_.nx, align 4
  %129 = load i32, i32* @sgeqrf_.k, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %121
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* @sgeqrf_.ldwork, align 4
  %134 = load i32, i32* @sgeqrf_.ldwork, align 4
  %135 = load i32, i32* @sgeqrf_.nb, align 4
  %136 = mul nsw i32 %134, %135
  store i32 %136, i32* @sgeqrf_.iws, align 4
  %137 = load i32*, i32** %16, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @sgeqrf_.iws, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %131
  %142 = load i32*, i32** %16, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @sgeqrf_.ldwork, align 4
  %145 = sdiv i32 %143, %144
  store i32 %145, i32* @sgeqrf_.nb, align 4
  store i32 2, i32* %20, align 4
  %146 = load i32*, i32** %10, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @ilaenv_(i32* @c__2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %146, i32* %147, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %21, align 4
  %151 = call i32 @max(i32 %149, i32 %150)
  store i32 %151, i32* @sgeqrf_.nbmin, align 4
  br label %152

152:                                              ; preds = %141, %131
  br label %153

153:                                              ; preds = %152, %121
  br label %154

154:                                              ; preds = %153, %117, %112
  %155 = load i32, i32* @sgeqrf_.nb, align 4
  %156 = load i32, i32* @sgeqrf_.nbmin, align 4
  %157 = icmp sge i32 %155, %156
  br i1 %157, label %158, label %290

158:                                              ; preds = %154
  %159 = load i32, i32* @sgeqrf_.nb, align 4
  %160 = load i32, i32* @sgeqrf_.k, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %290

162:                                              ; preds = %158
  %163 = load i32, i32* @sgeqrf_.nx, align 4
  %164 = load i32, i32* @sgeqrf_.k, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %290

166:                                              ; preds = %162
  %167 = load i32, i32* @sgeqrf_.k, align 4
  %168 = load i32, i32* @sgeqrf_.nx, align 4
  %169 = sub nsw i32 %167, %168
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* @sgeqrf_.nb, align 4
  store i32 %170, i32* %21, align 4
  store i32 1, i32* @sgeqrf_.i__, align 4
  br label %171

171:                                              ; preds = %285, %166
  %172 = load i32, i32* %21, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i32, i32* @sgeqrf_.i__, align 4
  %176 = load i32, i32* %20, align 4
  %177 = icmp sge i32 %175, %176
  %178 = zext i1 %177 to i32
  br label %184

179:                                              ; preds = %171
  %180 = load i32, i32* @sgeqrf_.i__, align 4
  %181 = load i32, i32* %20, align 4
  %182 = icmp sle i32 %180, %181
  %183 = zext i1 %182 to i32
  br label %184

184:                                              ; preds = %179, %174
  %185 = phi i32 [ %178, %174 ], [ %183, %179 ]
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %289

187:                                              ; preds = %184
  %188 = load i32, i32* @sgeqrf_.k, align 4
  %189 = load i32, i32* @sgeqrf_.i__, align 4
  %190 = sub nsw i32 %188, %189
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %22, align 4
  %193 = load i32, i32* @sgeqrf_.nb, align 4
  %194 = call i32 @min(i32 %192, i32 %193)
  store i32 %194, i32* @sgeqrf_.ib, align 4
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @sgeqrf_.i__, align 4
  %198 = sub nsw i32 %196, %197
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %22, align 4
  %200 = load i32*, i32** %12, align 8
  %201 = load i32, i32* @sgeqrf_.i__, align 4
  %202 = load i32, i32* @sgeqrf_.i__, align 4
  %203 = load i32, i32* %18, align 4
  %204 = mul nsw i32 %202, %203
  %205 = add nsw i32 %201, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %200, i64 %206
  %208 = load i32*, i32** %13, align 8
  %209 = load i32*, i32** %14, align 8
  %210 = load i32, i32* @sgeqrf_.i__, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32*, i32** %15, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = call i32 @sgeqr2_(i32* %22, i32* @sgeqrf_.ib, i32* %207, i32* %208, i32* %212, i32* %214, i32* @sgeqrf_.iinfo)
  %216 = load i32, i32* @sgeqrf_.i__, align 4
  %217 = load i32, i32* @sgeqrf_.ib, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* %219, align 4
  %221 = icmp sle i32 %218, %220
  br i1 %221, label %222, label %284

222:                                              ; preds = %187
  %223 = load i32*, i32** %10, align 8
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @sgeqrf_.i__, align 4
  %226 = sub nsw i32 %224, %225
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %22, align 4
  %228 = load i32*, i32** %12, align 8
  %229 = load i32, i32* @sgeqrf_.i__, align 4
  %230 = load i32, i32* @sgeqrf_.i__, align 4
  %231 = load i32, i32* %18, align 4
  %232 = mul nsw i32 %230, %231
  %233 = add nsw i32 %229, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %228, i64 %234
  %236 = load i32*, i32** %13, align 8
  %237 = load i32*, i32** %14, align 8
  %238 = load i32, i32* @sgeqrf_.i__, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32*, i32** %15, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = call i32 @slarft_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %22, i32* @sgeqrf_.ib, i32* %235, i32* %236, i32* %240, i32* %242, i32* @sgeqrf_.ldwork)
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @sgeqrf_.i__, align 4
  %247 = sub nsw i32 %245, %246
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %22, align 4
  %249 = load i32*, i32** %11, align 8
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @sgeqrf_.i__, align 4
  %252 = sub nsw i32 %250, %251
  %253 = load i32, i32* @sgeqrf_.ib, align 4
  %254 = sub nsw i32 %252, %253
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %23, align 4
  %256 = load i32*, i32** %12, align 8
  %257 = load i32, i32* @sgeqrf_.i__, align 4
  %258 = load i32, i32* @sgeqrf_.i__, align 4
  %259 = load i32, i32* %18, align 4
  %260 = mul nsw i32 %258, %259
  %261 = add nsw i32 %257, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %256, i64 %262
  %264 = load i32*, i32** %13, align 8
  %265 = load i32*, i32** %15, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32*, i32** %12, align 8
  %268 = load i32, i32* @sgeqrf_.i__, align 4
  %269 = load i32, i32* @sgeqrf_.i__, align 4
  %270 = load i32, i32* @sgeqrf_.ib, align 4
  %271 = add nsw i32 %269, %270
  %272 = load i32, i32* %18, align 4
  %273 = mul nsw i32 %271, %272
  %274 = add nsw i32 %268, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %267, i64 %275
  %277 = load i32*, i32** %13, align 8
  %278 = load i32*, i32** %15, align 8
  %279 = load i32, i32* @sgeqrf_.ib, align 4
  %280 = add nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  %283 = call i32 @slarfb_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %22, i32* %23, i32* @sgeqrf_.ib, i32* %263, i32* %264, i32* %266, i32* @sgeqrf_.ldwork, i32* %276, i32* %277, i32* %282, i32* @sgeqrf_.ldwork)
  br label %284

284:                                              ; preds = %222, %187
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %21, align 4
  %287 = load i32, i32* @sgeqrf_.i__, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* @sgeqrf_.i__, align 4
  br label %171

289:                                              ; preds = %184
  br label %291

290:                                              ; preds = %162, %158, %154
  store i32 1, i32* @sgeqrf_.i__, align 4
  br label %291

291:                                              ; preds = %290, %289
  %292 = load i32, i32* @sgeqrf_.i__, align 4
  %293 = load i32, i32* @sgeqrf_.k, align 4
  %294 = icmp sle i32 %292, %293
  br i1 %294, label %295, label %322

295:                                              ; preds = %291
  %296 = load i32*, i32** %10, align 8
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @sgeqrf_.i__, align 4
  %299 = sub nsw i32 %297, %298
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %21, align 4
  %301 = load i32*, i32** %11, align 8
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @sgeqrf_.i__, align 4
  %304 = sub nsw i32 %302, %303
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %20, align 4
  %306 = load i32*, i32** %12, align 8
  %307 = load i32, i32* @sgeqrf_.i__, align 4
  %308 = load i32, i32* @sgeqrf_.i__, align 4
  %309 = load i32, i32* %18, align 4
  %310 = mul nsw i32 %308, %309
  %311 = add nsw i32 %307, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %306, i64 %312
  %314 = load i32*, i32** %13, align 8
  %315 = load i32*, i32** %14, align 8
  %316 = load i32, i32* @sgeqrf_.i__, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32*, i32** %15, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 1
  %321 = call i32 @sgeqr2_(i32* %21, i32* %20, i32* %313, i32* %314, i32* %318, i32* %320, i32* @sgeqrf_.iinfo)
  br label %322

322:                                              ; preds = %295, %291
  %323 = load i32, i32* @sgeqrf_.iws, align 4
  %324 = load i32*, i32** %15, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 1
  store i32 %323, i32* %325, align 4
  store i32 0, i32* %9, align 4
  br label %326

326:                                              ; preds = %322, %109, %99, %91
  %327 = load i32, i32* %9, align 4
  ret i32 %327
}

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sgeqr2_(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slarft_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slarfb_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
