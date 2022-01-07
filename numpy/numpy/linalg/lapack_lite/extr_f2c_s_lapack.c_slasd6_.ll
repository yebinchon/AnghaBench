; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slasd6_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slasd6_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slasd6_.i__ = internal global i32 0, align 4
@slasd6_.m = internal global i32 0, align 4
@slasd6_.n = internal global i32 0, align 4
@slasd6_.n1 = internal global i32 0, align 4
@slasd6_.n2 = internal global i32 0, align 4
@slasd6_.iw = internal global i32 0, align 4
@slasd6_.idx = internal global i32 0, align 4
@slasd6_.idxc = internal global i32 0, align 4
@slasd6_.idxp = internal global i32 0, align 4
@slasd6_.ivfw = internal global i32 0, align 4
@slasd6_.ivlw = internal global i32 0, align 4
@slasd6_.isigma = internal global i32 0, align 4
@slasd6_.orgnrm = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SLASD6\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@c__0 = common dso_local global i32 0, align 4
@c_b15 = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@c_n1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slasd6_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25) #0 {
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i32*, align 8
  %49 = alloca i32*, align 8
  %50 = alloca i32*, align 8
  %51 = alloca i32*, align 8
  %52 = alloca i32*, align 8
  %53 = alloca i32*, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  store i32* %0, i32** %28, align 8
  store i32* %1, i32** %29, align 8
  store i32* %2, i32** %30, align 8
  store i32* %3, i32** %31, align 8
  store i32* %4, i32** %32, align 8
  store i32* %5, i32** %33, align 8
  store i32* %6, i32** %34, align 8
  store i32* %7, i32** %35, align 8
  store i32* %8, i32** %36, align 8
  store i32* %9, i32** %37, align 8
  store i32* %10, i32** %38, align 8
  store i32* %11, i32** %39, align 8
  store i32* %12, i32** %40, align 8
  store i32* %13, i32** %41, align 8
  store i32* %14, i32** %42, align 8
  store i32* %15, i32** %43, align 8
  store i32* %16, i32** %44, align 8
  store i32* %17, i32** %45, align 8
  store i32* %18, i32** %46, align 8
  store i32* %19, i32** %47, align 8
  store i32* %20, i32** %48, align 8
  store i32* %21, i32** %49, align 8
  store i32* %22, i32** %50, align 8
  store i32* %23, i32** %51, align 8
  store i32* %24, i32** %52, align 8
  store i32* %25, i32** %53, align 8
  %63 = load i32*, i32** %32, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 -1
  store i32* %64, i32** %32, align 8
  %65 = load i32*, i32** %33, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 -1
  store i32* %66, i32** %33, align 8
  %67 = load i32*, i32** %34, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 -1
  store i32* %68, i32** %34, align 8
  %69 = load i32*, i32** %37, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 -1
  store i32* %70, i32** %37, align 8
  %71 = load i32*, i32** %38, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 -1
  store i32* %72, i32** %38, align 8
  %73 = load i32*, i32** %41, align 8
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %54, align 4
  %75 = load i32, i32* %54, align 4
  %76 = add nsw i32 1, %75
  store i32 %76, i32* %55, align 4
  %77 = load i32, i32* %55, align 4
  %78 = load i32*, i32** %40, align 8
  %79 = sext i32 %77 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %40, align 8
  %82 = load i32*, i32** %43, align 8
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %58, align 4
  %84 = load i32, i32* %58, align 4
  %85 = add nsw i32 1, %84
  store i32 %85, i32* %59, align 4
  %86 = load i32, i32* %59, align 4
  %87 = load i32*, i32** %44, align 8
  %88 = sext i32 %86 to i64
  %89 = sub i64 0, %88
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32* %90, i32** %44, align 8
  %91 = load i32*, i32** %43, align 8
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %56, align 4
  %93 = load i32, i32* %56, align 4
  %94 = add nsw i32 1, %93
  store i32 %94, i32* %57, align 4
  %95 = load i32, i32* %57, align 4
  %96 = load i32*, i32** %42, align 8
  %97 = sext i32 %95 to i64
  %98 = sub i64 0, %97
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32* %99, i32** %42, align 8
  %100 = load i32*, i32** %45, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 -1
  store i32* %101, i32** %45, align 8
  %102 = load i32*, i32** %46, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 -1
  store i32* %103, i32** %46, align 8
  %104 = load i32*, i32** %47, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 -1
  store i32* %105, i32** %47, align 8
  %106 = load i32*, i32** %51, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 -1
  store i32* %107, i32** %51, align 8
  %108 = load i32*, i32** %52, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 -1
  store i32* %109, i32** %52, align 8
  %110 = load i32*, i32** %53, align 8
  store i32 0, i32* %110, align 4
  %111 = load i32*, i32** %29, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %30, align 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %112, %114
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @slasd6_.n, align 4
  %117 = load i32, i32* @slasd6_.n, align 4
  %118 = load i32*, i32** %31, align 8
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %117, %119
  store i32 %120, i32* @slasd6_.m, align 4
  %121 = load i32*, i32** %28, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %26
  %125 = load i32*, i32** %28, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %124, %26
  %129 = load i32*, i32** %53, align 8
  store i32 -1, i32* %129, align 4
  br label %171

130:                                              ; preds = %124
  %131 = load i32*, i32** %29, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 1
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32*, i32** %53, align 8
  store i32 -2, i32* %135, align 4
  br label %170

136:                                              ; preds = %130
  %137 = load i32*, i32** %30, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32*, i32** %53, align 8
  store i32 -3, i32* %141, align 4
  br label %169

142:                                              ; preds = %136
  %143 = load i32*, i32** %31, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i32*, i32** %31, align 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %150, label %152

150:                                              ; preds = %146, %142
  %151 = load i32*, i32** %53, align 8
  store i32 -4, i32* %151, align 4
  br label %168

152:                                              ; preds = %146
  %153 = load i32*, i32** %41, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @slasd6_.n, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32*, i32** %53, align 8
  store i32 -14, i32* %158, align 4
  br label %167

159:                                              ; preds = %152
  %160 = load i32*, i32** %43, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @slasd6_.n, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32*, i32** %53, align 8
  store i32 -16, i32* %165, align 4
  br label %166

166:                                              ; preds = %164, %159
  br label %167

167:                                              ; preds = %166, %157
  br label %168

168:                                              ; preds = %167, %150
  br label %169

169:                                              ; preds = %168, %140
  br label %170

170:                                              ; preds = %169, %134
  br label %171

171:                                              ; preds = %170, %128
  %172 = load i32*, i32** %53, align 8
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load i32*, i32** %53, align 8
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %60, align 4
  %179 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %60)
  store i32 0, i32* %27, align 4
  br label %375

180:                                              ; preds = %171
  store i32 1, i32* @slasd6_.isigma, align 4
  %181 = load i32, i32* @slasd6_.isigma, align 4
  %182 = load i32, i32* @slasd6_.n, align 4
  %183 = add nsw i32 %181, %182
  store i32 %183, i32* @slasd6_.iw, align 4
  %184 = load i32, i32* @slasd6_.iw, align 4
  %185 = load i32, i32* @slasd6_.m, align 4
  %186 = add nsw i32 %184, %185
  store i32 %186, i32* @slasd6_.ivfw, align 4
  %187 = load i32, i32* @slasd6_.ivfw, align 4
  %188 = load i32, i32* @slasd6_.m, align 4
  %189 = add nsw i32 %187, %188
  store i32 %189, i32* @slasd6_.ivlw, align 4
  store i32 1, i32* @slasd6_.idx, align 4
  %190 = load i32, i32* @slasd6_.idx, align 4
  %191 = load i32, i32* @slasd6_.n, align 4
  %192 = add nsw i32 %190, %191
  store i32 %192, i32* @slasd6_.idxc, align 4
  %193 = load i32, i32* @slasd6_.idxc, align 4
  %194 = load i32, i32* @slasd6_.n, align 4
  %195 = add nsw i32 %193, %194
  store i32 %195, i32* @slasd6_.idxp, align 4
  %196 = load i32*, i32** %35, align 8
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @dabs(i32 %197)
  store i32 %198, i32* %61, align 4
  %199 = load i32*, i32** %36, align 8
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @dabs(i32 %200)
  store i32 %201, i32* %62, align 4
  %202 = load i32, i32* %61, align 4
  %203 = load i32, i32* %62, align 4
  %204 = call i32 @dmax(i32 %202, i32 %203)
  store i32 %204, i32* @slasd6_.orgnrm, align 4
  %205 = load i32*, i32** %32, align 8
  %206 = load i32*, i32** %29, align 8
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  store i32 0, i32* %210, align 4
  %211 = load i32, i32* @slasd6_.n, align 4
  store i32 %211, i32* %60, align 4
  store i32 1, i32* @slasd6_.i__, align 4
  br label %212

212:                                              ; preds = %235, %180
  %213 = load i32, i32* @slasd6_.i__, align 4
  %214 = load i32, i32* %60, align 4
  %215 = icmp sle i32 %213, %214
  br i1 %215, label %216, label %238

216:                                              ; preds = %212
  %217 = load i32*, i32** %32, align 8
  %218 = load i32, i32* @slasd6_.i__, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %61, align 4
  %222 = load i32, i32* %61, align 4
  %223 = call i32 @dabs(i32 %222)
  %224 = load i32, i32* @slasd6_.orgnrm, align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %216
  %227 = load i32*, i32** %32, align 8
  %228 = load i32, i32* @slasd6_.i__, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %61, align 4
  %232 = load i32, i32* %61, align 4
  %233 = call i32 @dabs(i32 %232)
  store i32 %233, i32* @slasd6_.orgnrm, align 4
  br label %234

234:                                              ; preds = %226, %216
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* @slasd6_.i__, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* @slasd6_.i__, align 4
  br label %212

238:                                              ; preds = %212
  %239 = load i32*, i32** %32, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = load i32*, i32** %53, align 8
  %242 = call i32 @slascl_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* @c__0, i32* @c__0, i32* @slasd6_.orgnrm, i32* @c_b15, i32* @slasd6_.n, i32* @c__1, i32* %240, i32* @slasd6_.n, i32* %241)
  %243 = load i32, i32* @slasd6_.orgnrm, align 4
  %244 = load i32*, i32** %35, align 8
  %245 = load i32, i32* %244, align 4
  %246 = sdiv i32 %245, %243
  store i32 %246, i32* %244, align 4
  %247 = load i32, i32* @slasd6_.orgnrm, align 4
  %248 = load i32*, i32** %36, align 8
  %249 = load i32, i32* %248, align 4
  %250 = sdiv i32 %249, %247
  store i32 %250, i32* %248, align 4
  %251 = load i32*, i32** %28, align 8
  %252 = load i32*, i32** %29, align 8
  %253 = load i32*, i32** %30, align 8
  %254 = load i32*, i32** %31, align 8
  %255 = load i32*, i32** %48, align 8
  %256 = load i32*, i32** %32, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32*, i32** %47, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  %260 = load i32*, i32** %51, align 8
  %261 = load i32, i32* @slasd6_.iw, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32*, i32** %33, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  %266 = load i32*, i32** %51, align 8
  %267 = load i32, i32* @slasd6_.ivfw, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32*, i32** %34, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = load i32*, i32** %51, align 8
  %273 = load i32, i32* @slasd6_.ivlw, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32*, i32** %35, align 8
  %277 = load i32*, i32** %36, align 8
  %278 = load i32*, i32** %51, align 8
  %279 = load i32, i32* @slasd6_.isigma, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32*, i32** %52, align 8
  %283 = load i32, i32* @slasd6_.idx, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32*, i32** %52, align 8
  %287 = load i32, i32* @slasd6_.idxp, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32*, i32** %37, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  %292 = load i32*, i32** %38, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  %294 = load i32*, i32** %39, align 8
  %295 = load i32*, i32** %40, align 8
  %296 = load i32, i32* %55, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32*, i32** %41, align 8
  %300 = load i32*, i32** %42, align 8
  %301 = load i32, i32* %57, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32*, i32** %43, align 8
  %305 = load i32*, i32** %49, align 8
  %306 = load i32*, i32** %50, align 8
  %307 = load i32*, i32** %53, align 8
  %308 = call i32 @slasd7_(i32* %251, i32* %252, i32* %253, i32* %254, i32* %255, i32* %257, i32* %259, i32* %263, i32* %265, i32* %269, i32* %271, i32* %275, i32* %276, i32* %277, i32* %281, i32* %285, i32* %289, i32* %291, i32* %293, i32* %294, i32* %298, i32* %299, i32* %303, i32* %304, i32* %305, i32* %306, i32* %307)
  %309 = load i32*, i32** %28, align 8
  %310 = load i32*, i32** %48, align 8
  %311 = load i32*, i32** %32, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  %313 = load i32*, i32** %47, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  %315 = load i32*, i32** %33, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 1
  %317 = load i32*, i32** %34, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 1
  %319 = load i32*, i32** %45, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 1
  %321 = load i32*, i32** %46, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  %323 = load i32*, i32** %43, align 8
  %324 = load i32*, i32** %51, align 8
  %325 = load i32, i32* @slasd6_.isigma, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32*, i32** %51, align 8
  %329 = load i32, i32* @slasd6_.iw, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32*, i32** %53, align 8
  %333 = call i32 @slasd8_(i32* %309, i32* %310, i32* %312, i32* %314, i32* %316, i32* %318, i32* %320, i32* %322, i32* %323, i32* %327, i32* %331, i32* %332)
  %334 = load i32*, i32** %28, align 8
  %335 = load i32, i32* %334, align 4
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %359

337:                                              ; preds = %238
  %338 = load i32*, i32** %48, align 8
  %339 = load i32*, i32** %32, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 1
  %341 = load i32*, i32** %44, align 8
  %342 = load i32, i32* %58, align 4
  %343 = add nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  %346 = call i32 @scopy_(i32* %338, i32* %340, i32* @c__1, i32* %345, i32* @c__1)
  %347 = load i32*, i32** %48, align 8
  %348 = load i32*, i32** %51, align 8
  %349 = load i32, i32* @slasd6_.isigma, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32*, i32** %44, align 8
  %353 = load i32, i32* %58, align 4
  %354 = shl i32 %353, 1
  %355 = add nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %352, i64 %356
  %358 = call i32 @scopy_(i32* %347, i32* %351, i32* @c__1, i32* %357, i32* @c__1)
  br label %359

359:                                              ; preds = %337, %238
  %360 = load i32*, i32** %32, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 1
  %362 = load i32*, i32** %53, align 8
  %363 = call i32 @slascl_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* @c__0, i32* @c__0, i32* @c_b15, i32* @slasd6_.orgnrm, i32* @slasd6_.n, i32* @c__1, i32* %361, i32* @slasd6_.n, i32* %362)
  %364 = load i32*, i32** %48, align 8
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* @slasd6_.n1, align 4
  %366 = load i32, i32* @slasd6_.n, align 4
  %367 = load i32*, i32** %48, align 8
  %368 = load i32, i32* %367, align 4
  %369 = sub nsw i32 %366, %368
  store i32 %369, i32* @slasd6_.n2, align 4
  %370 = load i32*, i32** %32, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 1
  %372 = load i32*, i32** %37, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  %374 = call i32 @slamrg_(i32* @slasd6_.n1, i32* @slasd6_.n2, i32* %371, i32* @c__1, i32* @c_n1, i32* %373)
  store i32 0, i32* %27, align 4
  br label %375

375:                                              ; preds = %359, %175
  %376 = load i32, i32* %27, align 4
  ret i32 %376
}

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @dabs(i32) #1

declare dso_local i32 @dmax(i32, i32) #1

declare dso_local i32 @slascl_(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slasd7_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slasd8_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @scopy_(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slamrg_(i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
