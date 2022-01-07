; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__expandFill.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__expandFill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { float, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, float, float, float, float, float, float }
%struct.TYPE_18__ = type { i32, i32, i64, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { float, float }

@NVG_PT_BEVEL = common dso_local global i32 0, align 4
@NVG_PT_LEFT = common dso_local global i32 0, align 4
@NVG_PR_INNERBEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, float, i32, float)* @nvg__expandFill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvg__expandFill(%struct.TYPE_19__* %0, float %1, i32 %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca %struct.TYPE_16__*, align 8
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %10, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 8
  store float %44, float* %17, align 4
  %45 = load float, float* %7, align 4
  %46 = fcmp ogt float %45, 0.000000e+00
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %18, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = load float, float* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load float, float* %9, align 4
  %52 = call i32 @nvg__calculateJoins(%struct.TYPE_19__* %48, float %49, i32 %50, float %51)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %92, %4
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %95

59:                                               ; preds = %53
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i64 %64
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %19, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %59
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 5
  %86 = add nsw i32 %81, %85
  %87 = add nsw i32 %86, 1
  %88 = mul nsw i32 %87, 2
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %78, %59
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %53

95:                                               ; preds = %53
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call %struct.TYPE_15__* @nvg__allocTempVerts(%struct.TYPE_19__* %96, i32 %97)
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %11, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %100 = icmp eq %struct.TYPE_15__* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  br label %480

102:                                              ; preds = %95
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %107, %102
  %116 = phi i1 [ false, %102 ], [ %114, %107 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %476, %115
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %479

124:                                              ; preds = %118
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i64 %129
  store %struct.TYPE_18__* %130, %struct.TYPE_18__** %20, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i64 %136
  store %struct.TYPE_16__* %137, %struct.TYPE_16__** %21, align 8
  %138 = load float, float* %17, align 4
  %139 = fmul float 5.000000e-01, %138
  store float %139, float* %26, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %140, %struct.TYPE_15__** %12, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 6
  store %struct.TYPE_15__* %141, %struct.TYPE_15__** %143, align 8
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %287

146:                                              ; preds = %124
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i64 %152
  store %struct.TYPE_16__* %153, %struct.TYPE_16__** %22, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i64 0
  store %struct.TYPE_16__* %155, %struct.TYPE_16__** %23, align 8
  store i32 0, i32* %16, align 4
  br label %156

156:                                              ; preds = %283, %146
  %157 = load i32, i32* %16, align 4
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %286

162:                                              ; preds = %156
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @NVG_PT_BEVEL, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %257

169:                                              ; preds = %162
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load float, float* %171, align 4
  store float %172, float* %29, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  %175 = load float, float* %174, align 4
  %176 = fneg float %175
  store float %176, float* %30, align 4
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load float, float* %178, align 4
  store float %179, float* %31, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  %182 = load float, float* %181, align 4
  %183 = fneg float %182
  store float %183, float* %32, align 4
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @NVG_PT_LEFT, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %169
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 3
  %193 = load float, float* %192, align 4
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 4
  %196 = load float, float* %195, align 4
  %197 = load float, float* %26, align 4
  %198 = fmul float %196, %197
  %199 = fadd float %193, %198
  store float %199, float* %33, align 4
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 5
  %202 = load float, float* %201, align 4
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 6
  %205 = load float, float* %204, align 4
  %206 = load float, float* %26, align 4
  %207 = fmul float %205, %206
  %208 = fadd float %202, %207
  store float %208, float* %34, align 4
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %210 = load float, float* %33, align 4
  %211 = load float, float* %34, align 4
  %212 = call i32 @nvg__vset(%struct.TYPE_15__* %209, float %210, float %211, float 5.000000e-01, i32 1)
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 1
  store %struct.TYPE_15__* %214, %struct.TYPE_15__** %12, align 8
  br label %256

215:                                              ; preds = %169
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 3
  %218 = load float, float* %217, align 4
  %219 = load float, float* %29, align 4
  %220 = load float, float* %26, align 4
  %221 = fmul float %219, %220
  %222 = fadd float %218, %221
  store float %222, float* %35, align 4
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 5
  %225 = load float, float* %224, align 4
  %226 = load float, float* %30, align 4
  %227 = load float, float* %26, align 4
  %228 = fmul float %226, %227
  %229 = fadd float %225, %228
  store float %229, float* %36, align 4
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 3
  %232 = load float, float* %231, align 4
  %233 = load float, float* %31, align 4
  %234 = load float, float* %26, align 4
  %235 = fmul float %233, %234
  %236 = fadd float %232, %235
  store float %236, float* %37, align 4
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 5
  %239 = load float, float* %238, align 4
  %240 = load float, float* %32, align 4
  %241 = load float, float* %26, align 4
  %242 = fmul float %240, %241
  %243 = fadd float %239, %242
  store float %243, float* %38, align 4
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %245 = load float, float* %35, align 4
  %246 = load float, float* %36, align 4
  %247 = call i32 @nvg__vset(%struct.TYPE_15__* %244, float %245, float %246, float 5.000000e-01, i32 1)
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 1
  store %struct.TYPE_15__* %249, %struct.TYPE_15__** %12, align 8
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %251 = load float, float* %37, align 4
  %252 = load float, float* %38, align 4
  %253 = call i32 @nvg__vset(%struct.TYPE_15__* %250, float %251, float %252, float 5.000000e-01, i32 1)
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 1
  store %struct.TYPE_15__* %255, %struct.TYPE_15__** %12, align 8
  br label %256

256:                                              ; preds = %215, %190
  br label %280

257:                                              ; preds = %162
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 3
  %261 = load float, float* %260, align 4
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 4
  %264 = load float, float* %263, align 4
  %265 = load float, float* %26, align 4
  %266 = fmul float %264, %265
  %267 = fadd float %261, %266
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 5
  %270 = load float, float* %269, align 4
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 6
  %273 = load float, float* %272, align 4
  %274 = load float, float* %26, align 4
  %275 = fmul float %273, %274
  %276 = fadd float %270, %275
  %277 = call i32 @nvg__vset(%struct.TYPE_15__* %258, float %267, float %276, float 5.000000e-01, i32 1)
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 1
  store %struct.TYPE_15__* %279, %struct.TYPE_15__** %12, align 8
  br label %280

280:                                              ; preds = %257, %256
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 1
  store %struct.TYPE_16__* %282, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %281, %struct.TYPE_16__** %22, align 8
  br label %283

283:                                              ; preds = %280
  %284 = load i32, i32* %16, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %16, align 4
  br label %156

286:                                              ; preds = %156
  br label %315

287:                                              ; preds = %124
  store i32 0, i32* %16, align 4
  br label %288

288:                                              ; preds = %311, %287
  %289 = load i32, i32* %16, align 4
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp slt i32 %289, %292
  br i1 %293, label %294, label %314

294:                                              ; preds = %288
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %297 = load i32, i32* %16, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 3
  %301 = load float, float* %300, align 4
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %303 = load i32, i32* %16, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 5
  %307 = load float, float* %306, align 4
  %308 = call i32 @nvg__vset(%struct.TYPE_15__* %295, float %301, float %307, float 5.000000e-01, i32 1)
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 1
  store %struct.TYPE_15__* %310, %struct.TYPE_15__** %12, align 8
  br label %311

311:                                              ; preds = %294
  %312 = load i32, i32* %16, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %16, align 4
  br label %288

314:                                              ; preds = %288
  br label %315

315:                                              ; preds = %314, %286
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %318 = ptrtoint %struct.TYPE_15__* %316 to i64
  %319 = ptrtoint %struct.TYPE_15__* %317 to i64
  %320 = sub i64 %318, %319
  %321 = sdiv exact i64 %320, 8
  %322 = trunc i64 %321 to i32
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 3
  store i32 %322, i32* %324, align 8
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %325, %struct.TYPE_15__** %11, align 8
  %326 = load i32, i32* %18, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %470

328:                                              ; preds = %315
  %329 = load float, float* %7, align 4
  %330 = load float, float* %26, align 4
  %331 = fadd float %329, %330
  store float %331, float* %25, align 4
  %332 = load float, float* %7, align 4
  %333 = load float, float* %26, align 4
  %334 = fsub float %332, %333
  store float %334, float* %24, align 4
  store float 0.000000e+00, float* %28, align 4
  store float 1.000000e+00, float* %27, align 4
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %335, %struct.TYPE_15__** %12, align 8
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 5
  store %struct.TYPE_15__* %336, %struct.TYPE_15__** %338, align 8
  %339 = load i32, i32* %14, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %328
  %342 = load float, float* %26, align 4
  store float %342, float* %25, align 4
  store float 5.000000e-01, float* %28, align 4
  br label %343

343:                                              ; preds = %341, %328
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i64 %349
  store %struct.TYPE_16__* %350, %struct.TYPE_16__** %22, align 8
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i64 0
  store %struct.TYPE_16__* %352, %struct.TYPE_16__** %23, align 8
  store i32 0, i32* %16, align 4
  br label %353

353:                                              ; preds = %430, %343
  %354 = load i32, i32* %16, align 4
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = icmp slt i32 %354, %357
  br i1 %358, label %359, label %433

359:                                              ; preds = %353
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @NVG_PT_BEVEL, align 4
  %364 = load i32, i32* @NVG_PR_INNERBEVEL, align 4
  %365 = or i32 %363, %364
  %366 = and i32 %362, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %380

368:                                              ; preds = %359
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %372 = load float, float* %25, align 4
  %373 = load float, float* %24, align 4
  %374 = load float, float* %28, align 4
  %375 = load float, float* %27, align 4
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 0
  %378 = load float, float* %377, align 8
  %379 = call %struct.TYPE_15__* @nvg__bevelJoin(%struct.TYPE_15__* %369, %struct.TYPE_16__* %370, %struct.TYPE_16__* %371, float %372, float %373, float %374, float %375, float %378)
  store %struct.TYPE_15__* %379, %struct.TYPE_15__** %12, align 8
  br label %427

380:                                              ; preds = %359
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 3
  %384 = load float, float* %383, align 4
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 4
  %387 = load float, float* %386, align 4
  %388 = load float, float* %25, align 4
  %389 = fmul float %387, %388
  %390 = fadd float %384, %389
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 5
  %393 = load float, float* %392, align 4
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 6
  %396 = load float, float* %395, align 4
  %397 = load float, float* %25, align 4
  %398 = fmul float %396, %397
  %399 = fadd float %393, %398
  %400 = load float, float* %28, align 4
  %401 = call i32 @nvg__vset(%struct.TYPE_15__* %381, float %390, float %399, float %400, i32 1)
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 1
  store %struct.TYPE_15__* %403, %struct.TYPE_15__** %12, align 8
  %404 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %405 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 3
  %407 = load float, float* %406, align 4
  %408 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 4
  %410 = load float, float* %409, align 4
  %411 = load float, float* %24, align 4
  %412 = fmul float %410, %411
  %413 = fsub float %407, %412
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 5
  %416 = load float, float* %415, align 4
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %417, i32 0, i32 6
  %419 = load float, float* %418, align 4
  %420 = load float, float* %24, align 4
  %421 = fmul float %419, %420
  %422 = fsub float %416, %421
  %423 = load float, float* %27, align 4
  %424 = call i32 @nvg__vset(%struct.TYPE_15__* %404, float %413, float %422, float %423, i32 1)
  %425 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %426 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %425, i32 1
  store %struct.TYPE_15__* %426, %struct.TYPE_15__** %12, align 8
  br label %427

427:                                              ; preds = %380, %368
  %428 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %429 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %428, i32 1
  store %struct.TYPE_16__* %429, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %428, %struct.TYPE_16__** %22, align 8
  br label %430

430:                                              ; preds = %427
  %431 = load i32, i32* %16, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %16, align 4
  br label %353

433:                                              ; preds = %353
  %434 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %435 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %435, i64 0
  %437 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %436, i32 0, i32 0
  %438 = load float, float* %437, align 4
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i64 0
  %441 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %440, i32 0, i32 1
  %442 = load float, float* %441, align 4
  %443 = load float, float* %28, align 4
  %444 = call i32 @nvg__vset(%struct.TYPE_15__* %434, float %438, float %442, float %443, i32 1)
  %445 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %446 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %445, i32 1
  store %struct.TYPE_15__* %446, %struct.TYPE_15__** %12, align 8
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %448 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i64 1
  %450 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %449, i32 0, i32 0
  %451 = load float, float* %450, align 4
  %452 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %452, i64 1
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 1
  %455 = load float, float* %454, align 4
  %456 = load float, float* %27, align 4
  %457 = call i32 @nvg__vset(%struct.TYPE_15__* %447, float %451, float %455, float %456, i32 1)
  %458 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %459 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %458, i32 1
  store %struct.TYPE_15__* %459, %struct.TYPE_15__** %12, align 8
  %460 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %461 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %462 = ptrtoint %struct.TYPE_15__* %460 to i64
  %463 = ptrtoint %struct.TYPE_15__* %461 to i64
  %464 = sub i64 %462, %463
  %465 = sdiv exact i64 %464, 8
  %466 = trunc i64 %465 to i32
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 4
  store i32 %466, i32* %468, align 4
  %469 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %469, %struct.TYPE_15__** %11, align 8
  br label %475

470:                                              ; preds = %315
  %471 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %472 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %471, i32 0, i32 5
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %472, align 8
  %473 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %474 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %473, i32 0, i32 4
  store i32 0, i32* %474, align 4
  br label %475

475:                                              ; preds = %470, %433
  br label %476

476:                                              ; preds = %475
  %477 = load i32, i32* %15, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %15, align 4
  br label %118

479:                                              ; preds = %118
  store i32 1, i32* %5, align 4
  br label %480

480:                                              ; preds = %479, %101
  %481 = load i32, i32* %5, align 4
  ret i32 %481
}

declare dso_local i32 @nvg__calculateJoins(%struct.TYPE_19__*, float, i32, float) #1

declare dso_local %struct.TYPE_15__* @nvg__allocTempVerts(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @nvg__vset(%struct.TYPE_15__*, float, float, float, i32) #1

declare dso_local %struct.TYPE_15__* @nvg__bevelJoin(%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_16__*, float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
