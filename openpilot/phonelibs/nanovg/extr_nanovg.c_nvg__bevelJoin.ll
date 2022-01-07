; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__bevelJoin.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__bevelJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, i32, float, float, float, float }

@NVG_PT_LEFT = common dso_local global i32 0, align 4
@NVG_PR_INNERBEVEL = common dso_local global i32 0, align 4
@NVG_PT_BEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, float, float, float, float, float)* @nvg__bevelJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nvg__bevelJoin(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, float %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %11, align 8
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load float, float* %30, align 4
  store float %31, float* %25, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load float, float* %33, align 4
  %35 = fneg float %34
  store float %35, float* %26, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load float, float* %37, align 4
  store float %38, float* %27, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = fneg float %41
  store float %42, float* %28, align 4
  %43 = load float, float* %16, align 4
  %44 = call i32 @NVG_NOTUSED(float %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NVG_PT_LEFT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %264

51:                                               ; preds = %8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NVG_PR_INNERBEVEL, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %59 = load float, float* %12, align 4
  %60 = call i32 @nvg__chooseBevel(i32 %56, %struct.TYPE_6__* %57, %struct.TYPE_6__* %58, float %59, float* %21, float* %22, float* %23, float* %24)
  %61 = load i32*, i32** %9, align 8
  %62 = load float, float* %21, align 4
  %63 = load float, float* %22, align 4
  %64 = load float, float* %14, align 4
  %65 = call i32 @nvg__vset(i32* %61, float %62, float %63, float %64, i32 1)
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %9, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load float, float* %70, align 4
  %72 = load float, float* %25, align 4
  %73 = load float, float* %13, align 4
  %74 = fmul float %72, %73
  %75 = fsub float %71, %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = load float, float* %77, align 4
  %79 = load float, float* %26, align 4
  %80 = load float, float* %13, align 4
  %81 = fmul float %79, %80
  %82 = fsub float %78, %81
  %83 = load float, float* %15, align 4
  %84 = call i32 @nvg__vset(i32* %68, float %75, float %82, float %83, i32 1)
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %9, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NVG_PT_BEVEL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %146

93:                                               ; preds = %51
  %94 = load i32*, i32** %9, align 8
  %95 = load float, float* %21, align 4
  %96 = load float, float* %22, align 4
  %97 = load float, float* %14, align 4
  %98 = call i32 @nvg__vset(i32* %94, float %95, float %96, float %97, i32 1)
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %9, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load float, float* %103, align 4
  %105 = load float, float* %25, align 4
  %106 = load float, float* %13, align 4
  %107 = fmul float %105, %106
  %108 = fsub float %104, %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = load float, float* %110, align 4
  %112 = load float, float* %26, align 4
  %113 = load float, float* %13, align 4
  %114 = fmul float %112, %113
  %115 = fsub float %111, %114
  %116 = load float, float* %15, align 4
  %117 = call i32 @nvg__vset(i32* %101, float %108, float %115, float %116, i32 1)
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load float, float* %23, align 4
  %122 = load float, float* %24, align 4
  %123 = load float, float* %14, align 4
  %124 = call i32 @nvg__vset(i32* %120, float %121, float %122, float %123, i32 1)
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %9, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load float, float* %129, align 4
  %131 = load float, float* %27, align 4
  %132 = load float, float* %13, align 4
  %133 = fmul float %131, %132
  %134 = fsub float %130, %133
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 4
  %137 = load float, float* %136, align 4
  %138 = load float, float* %28, align 4
  %139 = load float, float* %13, align 4
  %140 = fmul float %138, %139
  %141 = fsub float %137, %140
  %142 = load float, float* %15, align 4
  %143 = call i32 @nvg__vset(i32* %127, float %134, float %141, float %142, i32 1)
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %9, align 8
  br label %237

146:                                              ; preds = %51
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  %149 = load float, float* %148, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 5
  %152 = load float, float* %151, align 4
  %153 = load float, float* %13, align 4
  %154 = fmul float %152, %153
  %155 = fsub float %149, %154
  store float %155, float* %17, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 4
  %158 = load float, float* %157, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 6
  %161 = load float, float* %160, align 4
  %162 = load float, float* %13, align 4
  %163 = fmul float %161, %162
  %164 = fsub float %158, %163
  store float %164, float* %18, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load float, float* %167, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 4
  %171 = load float, float* %170, align 4
  %172 = call i32 @nvg__vset(i32* %165, float %168, float %171, float 5.000000e-01, i32 1)
  %173 = load i32*, i32** %9, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %9, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  %178 = load float, float* %177, align 4
  %179 = load float, float* %25, align 4
  %180 = load float, float* %13, align 4
  %181 = fmul float %179, %180
  %182 = fsub float %178, %181
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 4
  %185 = load float, float* %184, align 4
  %186 = load float, float* %26, align 4
  %187 = load float, float* %13, align 4
  %188 = fmul float %186, %187
  %189 = fsub float %185, %188
  %190 = load float, float* %15, align 4
  %191 = call i32 @nvg__vset(i32* %175, float %182, float %189, float %190, i32 1)
  %192 = load i32*, i32** %9, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %9, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = load float, float* %17, align 4
  %196 = load float, float* %18, align 4
  %197 = load float, float* %15, align 4
  %198 = call i32 @nvg__vset(i32* %194, float %195, float %196, float %197, i32 1)
  %199 = load i32*, i32** %9, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %9, align 8
  %201 = load i32*, i32** %9, align 8
  %202 = load float, float* %17, align 4
  %203 = load float, float* %18, align 4
  %204 = load float, float* %15, align 4
  %205 = call i32 @nvg__vset(i32* %201, float %202, float %203, float %204, i32 1)
  %206 = load i32*, i32** %9, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %9, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 3
  %211 = load float, float* %210, align 4
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 4
  %214 = load float, float* %213, align 4
  %215 = call i32 @nvg__vset(i32* %208, float %211, float %214, float 5.000000e-01, i32 1)
  %216 = load i32*, i32** %9, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %9, align 8
  %218 = load i32*, i32** %9, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 3
  %221 = load float, float* %220, align 4
  %222 = load float, float* %27, align 4
  %223 = load float, float* %13, align 4
  %224 = fmul float %222, %223
  %225 = fsub float %221, %224
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 4
  %228 = load float, float* %227, align 4
  %229 = load float, float* %28, align 4
  %230 = load float, float* %13, align 4
  %231 = fmul float %229, %230
  %232 = fsub float %228, %231
  %233 = load float, float* %15, align 4
  %234 = call i32 @nvg__vset(i32* %218, float %225, float %232, float %233, i32 1)
  %235 = load i32*, i32** %9, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %236, i32** %9, align 8
  br label %237

237:                                              ; preds = %146, %93
  %238 = load i32*, i32** %9, align 8
  %239 = load float, float* %23, align 4
  %240 = load float, float* %24, align 4
  %241 = load float, float* %14, align 4
  %242 = call i32 @nvg__vset(i32* %238, float %239, float %240, float %241, i32 1)
  %243 = load i32*, i32** %9, align 8
  %244 = getelementptr inbounds i32, i32* %243, i32 1
  store i32* %244, i32** %9, align 8
  %245 = load i32*, i32** %9, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 3
  %248 = load float, float* %247, align 4
  %249 = load float, float* %27, align 4
  %250 = load float, float* %13, align 4
  %251 = fmul float %249, %250
  %252 = fsub float %248, %251
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 4
  %255 = load float, float* %254, align 4
  %256 = load float, float* %28, align 4
  %257 = load float, float* %13, align 4
  %258 = fmul float %256, %257
  %259 = fsub float %255, %258
  %260 = load float, float* %15, align 4
  %261 = call i32 @nvg__vset(i32* %245, float %252, float %259, float %260, i32 1)
  %262 = load i32*, i32** %9, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %9, align 8
  br label %478

264:                                              ; preds = %8
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @NVG_PR_INNERBEVEL, align 4
  %269 = and i32 %267, %268
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %272 = load float, float* %13, align 4
  %273 = fneg float %272
  %274 = call i32 @nvg__chooseBevel(i32 %269, %struct.TYPE_6__* %270, %struct.TYPE_6__* %271, float %273, float* %17, float* %18, float* %19, float* %20)
  %275 = load i32*, i32** %9, align 8
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 3
  %278 = load float, float* %277, align 4
  %279 = load float, float* %25, align 4
  %280 = load float, float* %12, align 4
  %281 = fmul float %279, %280
  %282 = fadd float %278, %281
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 4
  %285 = load float, float* %284, align 4
  %286 = load float, float* %26, align 4
  %287 = load float, float* %12, align 4
  %288 = fmul float %286, %287
  %289 = fadd float %285, %288
  %290 = load float, float* %14, align 4
  %291 = call i32 @nvg__vset(i32* %275, float %282, float %289, float %290, i32 1)
  %292 = load i32*, i32** %9, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %9, align 8
  %294 = load i32*, i32** %9, align 8
  %295 = load float, float* %17, align 4
  %296 = load float, float* %18, align 4
  %297 = load float, float* %15, align 4
  %298 = call i32 @nvg__vset(i32* %294, float %295, float %296, float %297, i32 1)
  %299 = load i32*, i32** %9, align 8
  %300 = getelementptr inbounds i32, i32* %299, i32 1
  store i32* %300, i32** %9, align 8
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @NVG_PT_BEVEL, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %360

307:                                              ; preds = %264
  %308 = load i32*, i32** %9, align 8
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 3
  %311 = load float, float* %310, align 4
  %312 = load float, float* %25, align 4
  %313 = load float, float* %12, align 4
  %314 = fmul float %312, %313
  %315 = fadd float %311, %314
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 4
  %318 = load float, float* %317, align 4
  %319 = load float, float* %26, align 4
  %320 = load float, float* %12, align 4
  %321 = fmul float %319, %320
  %322 = fadd float %318, %321
  %323 = load float, float* %14, align 4
  %324 = call i32 @nvg__vset(i32* %308, float %315, float %322, float %323, i32 1)
  %325 = load i32*, i32** %9, align 8
  %326 = getelementptr inbounds i32, i32* %325, i32 1
  store i32* %326, i32** %9, align 8
  %327 = load i32*, i32** %9, align 8
  %328 = load float, float* %17, align 4
  %329 = load float, float* %18, align 4
  %330 = load float, float* %15, align 4
  %331 = call i32 @nvg__vset(i32* %327, float %328, float %329, float %330, i32 1)
  %332 = load i32*, i32** %9, align 8
  %333 = getelementptr inbounds i32, i32* %332, i32 1
  store i32* %333, i32** %9, align 8
  %334 = load i32*, i32** %9, align 8
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 3
  %337 = load float, float* %336, align 4
  %338 = load float, float* %27, align 4
  %339 = load float, float* %12, align 4
  %340 = fmul float %338, %339
  %341 = fadd float %337, %340
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 4
  %344 = load float, float* %343, align 4
  %345 = load float, float* %28, align 4
  %346 = load float, float* %12, align 4
  %347 = fmul float %345, %346
  %348 = fadd float %344, %347
  %349 = load float, float* %14, align 4
  %350 = call i32 @nvg__vset(i32* %334, float %341, float %348, float %349, i32 1)
  %351 = load i32*, i32** %9, align 8
  %352 = getelementptr inbounds i32, i32* %351, i32 1
  store i32* %352, i32** %9, align 8
  %353 = load i32*, i32** %9, align 8
  %354 = load float, float* %19, align 4
  %355 = load float, float* %20, align 4
  %356 = load float, float* %15, align 4
  %357 = call i32 @nvg__vset(i32* %353, float %354, float %355, float %356, i32 1)
  %358 = load i32*, i32** %9, align 8
  %359 = getelementptr inbounds i32, i32* %358, i32 1
  store i32* %359, i32** %9, align 8
  br label %451

360:                                              ; preds = %264
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 3
  %363 = load float, float* %362, align 4
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 5
  %366 = load float, float* %365, align 4
  %367 = load float, float* %12, align 4
  %368 = fmul float %366, %367
  %369 = fadd float %363, %368
  store float %369, float* %21, align 4
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 4
  %372 = load float, float* %371, align 4
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 6
  %375 = load float, float* %374, align 4
  %376 = load float, float* %12, align 4
  %377 = fmul float %375, %376
  %378 = fadd float %372, %377
  store float %378, float* %22, align 4
  %379 = load i32*, i32** %9, align 8
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 3
  %382 = load float, float* %381, align 4
  %383 = load float, float* %25, align 4
  %384 = load float, float* %12, align 4
  %385 = fmul float %383, %384
  %386 = fadd float %382, %385
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 4
  %389 = load float, float* %388, align 4
  %390 = load float, float* %26, align 4
  %391 = load float, float* %12, align 4
  %392 = fmul float %390, %391
  %393 = fadd float %389, %392
  %394 = load float, float* %14, align 4
  %395 = call i32 @nvg__vset(i32* %379, float %386, float %393, float %394, i32 1)
  %396 = load i32*, i32** %9, align 8
  %397 = getelementptr inbounds i32, i32* %396, i32 1
  store i32* %397, i32** %9, align 8
  %398 = load i32*, i32** %9, align 8
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 3
  %401 = load float, float* %400, align 4
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 4
  %404 = load float, float* %403, align 4
  %405 = call i32 @nvg__vset(i32* %398, float %401, float %404, float 5.000000e-01, i32 1)
  %406 = load i32*, i32** %9, align 8
  %407 = getelementptr inbounds i32, i32* %406, i32 1
  store i32* %407, i32** %9, align 8
  %408 = load i32*, i32** %9, align 8
  %409 = load float, float* %21, align 4
  %410 = load float, float* %22, align 4
  %411 = load float, float* %14, align 4
  %412 = call i32 @nvg__vset(i32* %408, float %409, float %410, float %411, i32 1)
  %413 = load i32*, i32** %9, align 8
  %414 = getelementptr inbounds i32, i32* %413, i32 1
  store i32* %414, i32** %9, align 8
  %415 = load i32*, i32** %9, align 8
  %416 = load float, float* %21, align 4
  %417 = load float, float* %22, align 4
  %418 = load float, float* %14, align 4
  %419 = call i32 @nvg__vset(i32* %415, float %416, float %417, float %418, i32 1)
  %420 = load i32*, i32** %9, align 8
  %421 = getelementptr inbounds i32, i32* %420, i32 1
  store i32* %421, i32** %9, align 8
  %422 = load i32*, i32** %9, align 8
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 3
  %425 = load float, float* %424, align 4
  %426 = load float, float* %27, align 4
  %427 = load float, float* %12, align 4
  %428 = fmul float %426, %427
  %429 = fadd float %425, %428
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 4
  %432 = load float, float* %431, align 4
  %433 = load float, float* %28, align 4
  %434 = load float, float* %12, align 4
  %435 = fmul float %433, %434
  %436 = fadd float %432, %435
  %437 = load float, float* %14, align 4
  %438 = call i32 @nvg__vset(i32* %422, float %429, float %436, float %437, i32 1)
  %439 = load i32*, i32** %9, align 8
  %440 = getelementptr inbounds i32, i32* %439, i32 1
  store i32* %440, i32** %9, align 8
  %441 = load i32*, i32** %9, align 8
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 3
  %444 = load float, float* %443, align 4
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 4
  %447 = load float, float* %446, align 4
  %448 = call i32 @nvg__vset(i32* %441, float %444, float %447, float 5.000000e-01, i32 1)
  %449 = load i32*, i32** %9, align 8
  %450 = getelementptr inbounds i32, i32* %449, i32 1
  store i32* %450, i32** %9, align 8
  br label %451

451:                                              ; preds = %360, %307
  %452 = load i32*, i32** %9, align 8
  %453 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i32 0, i32 3
  %455 = load float, float* %454, align 4
  %456 = load float, float* %27, align 4
  %457 = load float, float* %12, align 4
  %458 = fmul float %456, %457
  %459 = fadd float %455, %458
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 4
  %462 = load float, float* %461, align 4
  %463 = load float, float* %28, align 4
  %464 = load float, float* %12, align 4
  %465 = fmul float %463, %464
  %466 = fadd float %462, %465
  %467 = load float, float* %14, align 4
  %468 = call i32 @nvg__vset(i32* %452, float %459, float %466, float %467, i32 1)
  %469 = load i32*, i32** %9, align 8
  %470 = getelementptr inbounds i32, i32* %469, i32 1
  store i32* %470, i32** %9, align 8
  %471 = load i32*, i32** %9, align 8
  %472 = load float, float* %19, align 4
  %473 = load float, float* %20, align 4
  %474 = load float, float* %15, align 4
  %475 = call i32 @nvg__vset(i32* %471, float %472, float %473, float %474, i32 1)
  %476 = load i32*, i32** %9, align 8
  %477 = getelementptr inbounds i32, i32* %476, i32 1
  store i32* %477, i32** %9, align 8
  br label %478

478:                                              ; preds = %451, %237
  %479 = load i32*, i32** %9, align 8
  ret i32* %479
}

declare dso_local i32 @NVG_NOTUSED(float) #1

declare dso_local i32 @nvg__chooseBevel(i32, %struct.TYPE_6__*, %struct.TYPE_6__*, float, float*, float*, float*, float*) #1

declare dso_local i32 @nvg__vset(i32*, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
