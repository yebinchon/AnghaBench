; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__expandStroke.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__expandStroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { float, i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, %struct.TYPE_32__*, %struct.TYPE_34__* }
%struct.TYPE_32__ = type { float, float, i32, float, float }
%struct.TYPE_34__ = type { i64, i32, i32, i64, i32, %struct.TYPE_31__*, i64, i64 }
%struct.TYPE_31__ = type { float, float }

@NVG_PI = common dso_local global i32 0, align 4
@NVG_ROUND = common dso_local global i32 0, align 4
@NVG_BUTT = common dso_local global i32 0, align 4
@NVG_SQUARE = common dso_local global i32 0, align 4
@NVG_PT_BEVEL = common dso_local global i32 0, align 4
@NVG_PR_INNERBEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, float, i32, i32, float)* @nvg__expandStroke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvg__expandStroke(%struct.TYPE_35__* %0, float %1, i32 %2, i32 %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_34__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_34__*, align 8
  %23 = alloca %struct.TYPE_32__*, align 8
  %24 = alloca %struct.TYPE_32__*, align 8
  %25 = alloca %struct.TYPE_32__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %7, align 8
  store float %1, float* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  store %struct.TYPE_33__* %33, %struct.TYPE_33__** %12, align 8
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 8
  store float %36, float* %18, align 4
  %37 = load float, float* %8, align 4
  %38 = load i32, i32* @NVG_PI, align 4
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nvg__curveDivs(float %37, i32 %38, i32 %41)
  store i32 %42, i32* %19, align 4
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %44 = load float, float* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load float, float* %11, align 4
  %47 = call i32 @nvg__calculateJoins(%struct.TYPE_35__* %43, float %44, i32 %45, float %46)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %117, %5
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %120

54:                                               ; preds = %48
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %56, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %57, i64 %59
  store %struct.TYPE_34__* %60, %struct.TYPE_34__** %20, align 8
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 1
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @NVG_ROUND, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %54
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %19, align 4
  %78 = add nsw i32 %77, 2
  %79 = mul nsw i32 %76, %78
  %80 = add nsw i32 %73, %79
  %81 = add nsw i32 %80, 1
  %82 = mul nsw i32 %81, 2
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %15, align 4
  br label %98

85:                                               ; preds = %54
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 5
  %93 = add nsw i32 %88, %92
  %94 = add nsw i32 %93, 1
  %95 = mul nsw i32 %94, 2
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %85, %70
  %99 = load i32, i32* %21, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @NVG_ROUND, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32, i32* %19, align 4
  %107 = mul nsw i32 %106, 2
  %108 = add nsw i32 %107, 2
  %109 = mul nsw i32 %108, 2
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %15, align 4
  br label %115

112:                                              ; preds = %101
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 12
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %112, %105
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %48

120:                                              ; preds = %48
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call %struct.TYPE_31__* @nvg__allocTempVerts(%struct.TYPE_35__* %121, i32 %122)
  store %struct.TYPE_31__* %123, %struct.TYPE_31__** %13, align 8
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %125 = icmp eq %struct.TYPE_31__* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 0, i32* %6, align 4
  br label %450

127:                                              ; preds = %120
  store i32 0, i32* %16, align 4
  br label %128

128:                                              ; preds = %446, %127
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %449

134:                                              ; preds = %128
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i64 %139
  store %struct.TYPE_34__* %140, %struct.TYPE_34__** %22, align 8
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %142, align 8
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i64 %146
  store %struct.TYPE_32__* %147, %struct.TYPE_32__** %23, align 8
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %149 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %148, i32 0, i32 7
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 6
  store i64 0, i64* %151, align 8
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 0, i32 1
  store i32 %157, i32* %28, align 4
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  store %struct.TYPE_31__* %158, %struct.TYPE_31__** %14, align 8
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 5
  store %struct.TYPE_31__* %159, %struct.TYPE_31__** %161, align 8
  %162 = load i32, i32* %28, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %134
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %23, align 8
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i64 %170
  store %struct.TYPE_32__* %171, %struct.TYPE_32__** %24, align 8
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %23, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i64 0
  store %struct.TYPE_32__* %173, %struct.TYPE_32__** %25, align 8
  store i32 0, i32* %26, align 4
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %27, align 4
  br label %186

177:                                              ; preds = %134
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %23, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i64 0
  store %struct.TYPE_32__* %179, %struct.TYPE_32__** %24, align 8
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %23, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i64 1
  store %struct.TYPE_32__* %181, %struct.TYPE_32__** %25, align 8
  store i32 1, i32* %26, align 4
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %183 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %184, 1
  store i32 %185, i32* %27, align 4
  br label %186

186:                                              ; preds = %177, %164
  %187 = load i32, i32* %28, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %254

189:                                              ; preds = %186
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 0
  %192 = load float, float* %191, align 4
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %193, i32 0, i32 0
  %195 = load float, float* %194, align 4
  %196 = fsub float %192, %195
  store float %196, float* %29, align 4
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 1
  %199 = load float, float* %198, align 4
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i32 0, i32 1
  %202 = load float, float* %201, align 4
  %203 = fsub float %199, %202
  store float %203, float* %30, align 4
  %204 = call i32 @nvg__normalize(float* %29, float* %30)
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @NVG_BUTT, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %219

208:                                              ; preds = %189
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %211 = load float, float* %29, align 4
  %212 = load float, float* %30, align 4
  %213 = load float, float* %8, align 4
  %214 = load float, float* %18, align 4
  %215 = fneg float %214
  %216 = fmul float %215, 5.000000e-01
  %217 = load float, float* %18, align 4
  %218 = call %struct.TYPE_31__* @nvg__buttCapStart(%struct.TYPE_31__* %209, %struct.TYPE_32__* %210, float %211, float %212, float %213, float %216, float %217)
  store %struct.TYPE_31__* %218, %struct.TYPE_31__** %14, align 8
  br label %253

219:                                              ; preds = %189
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* @NVG_BUTT, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %227, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* @NVG_SQUARE, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %223, %219
  %228 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %230 = load float, float* %29, align 4
  %231 = load float, float* %30, align 4
  %232 = load float, float* %8, align 4
  %233 = load float, float* %8, align 4
  %234 = load float, float* %18, align 4
  %235 = fsub float %233, %234
  %236 = load float, float* %18, align 4
  %237 = call %struct.TYPE_31__* @nvg__buttCapStart(%struct.TYPE_31__* %228, %struct.TYPE_32__* %229, float %230, float %231, float %232, float %235, float %236)
  store %struct.TYPE_31__* %237, %struct.TYPE_31__** %14, align 8
  br label %252

238:                                              ; preds = %223
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* @NVG_ROUND, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %251

242:                                              ; preds = %238
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %244 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %245 = load float, float* %29, align 4
  %246 = load float, float* %30, align 4
  %247 = load float, float* %8, align 4
  %248 = load i32, i32* %19, align 4
  %249 = load float, float* %18, align 4
  %250 = call %struct.TYPE_31__* @nvg__roundCapStart(%struct.TYPE_31__* %243, %struct.TYPE_32__* %244, float %245, float %246, float %247, i32 %248, float %249)
  store %struct.TYPE_31__* %250, %struct.TYPE_31__** %14, align 8
  br label %251

251:                                              ; preds = %242, %238
  br label %252

252:                                              ; preds = %251, %227
  br label %253

253:                                              ; preds = %252, %208
  br label %254

254:                                              ; preds = %253, %186
  %255 = load i32, i32* %26, align 4
  store i32 %255, i32* %17, align 4
  br label %256

256:                                              ; preds = %339, %254
  %257 = load i32, i32* %17, align 4
  %258 = load i32, i32* %27, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %342

260:                                              ; preds = %256
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @NVG_PT_BEVEL, align 4
  %265 = load i32, i32* @NVG_PR_INNERBEVEL, align 4
  %266 = or i32 %264, %265
  %267 = and i32 %263, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %291

269:                                              ; preds = %260
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* @NVG_ROUND, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %269
  %274 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %276 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %277 = load float, float* %8, align 4
  %278 = load float, float* %8, align 4
  %279 = load i32, i32* %19, align 4
  %280 = load float, float* %18, align 4
  %281 = call %struct.TYPE_31__* @nvg__roundJoin(%struct.TYPE_31__* %274, %struct.TYPE_32__* %275, %struct.TYPE_32__* %276, float %277, float %278, i32 0, i32 1, i32 %279, float %280)
  store %struct.TYPE_31__* %281, %struct.TYPE_31__** %14, align 8
  br label %290

282:                                              ; preds = %269
  %283 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %285 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %286 = load float, float* %8, align 4
  %287 = load float, float* %8, align 4
  %288 = load float, float* %18, align 4
  %289 = call %struct.TYPE_31__* @nvg__bevelJoin(%struct.TYPE_31__* %283, %struct.TYPE_32__* %284, %struct.TYPE_32__* %285, float %286, float %287, i32 0, i32 1, float %288)
  store %struct.TYPE_31__* %289, %struct.TYPE_31__** %14, align 8
  br label %290

290:                                              ; preds = %282, %273
  br label %336

291:                                              ; preds = %260
  %292 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %293 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %294 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %293, i32 0, i32 0
  %295 = load float, float* %294, align 4
  %296 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %297 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %296, i32 0, i32 3
  %298 = load float, float* %297, align 4
  %299 = load float, float* %8, align 4
  %300 = fmul float %298, %299
  %301 = fadd float %295, %300
  %302 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %303 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %302, i32 0, i32 1
  %304 = load float, float* %303, align 4
  %305 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %306 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %305, i32 0, i32 4
  %307 = load float, float* %306, align 4
  %308 = load float, float* %8, align 4
  %309 = fmul float %307, %308
  %310 = fadd float %304, %309
  %311 = call i32 @nvg__vset(%struct.TYPE_31__* %292, float %301, float %310, i32 0, i32 1)
  %312 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %312, i32 1
  store %struct.TYPE_31__* %313, %struct.TYPE_31__** %14, align 8
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %315 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %316 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %315, i32 0, i32 0
  %317 = load float, float* %316, align 4
  %318 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %319 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %318, i32 0, i32 3
  %320 = load float, float* %319, align 4
  %321 = load float, float* %8, align 4
  %322 = fmul float %320, %321
  %323 = fsub float %317, %322
  %324 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 1
  %326 = load float, float* %325, align 4
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %328 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %327, i32 0, i32 4
  %329 = load float, float* %328, align 4
  %330 = load float, float* %8, align 4
  %331 = fmul float %329, %330
  %332 = fsub float %326, %331
  %333 = call i32 @nvg__vset(%struct.TYPE_31__* %314, float %323, float %332, i32 1, i32 1)
  %334 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %334, i32 1
  store %struct.TYPE_31__* %335, %struct.TYPE_31__** %14, align 8
  br label %336

336:                                              ; preds = %291, %290
  %337 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %338 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %337, i32 1
  store %struct.TYPE_32__* %338, %struct.TYPE_32__** %25, align 8
  store %struct.TYPE_32__* %337, %struct.TYPE_32__** %24, align 8
  br label %339

339:                                              ; preds = %336
  %340 = load i32, i32* %17, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %17, align 4
  br label %256

342:                                              ; preds = %256
  %343 = load i32, i32* %28, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %370

345:                                              ; preds = %342
  %346 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %347 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %348 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %347, i64 0
  %349 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %348, i32 0, i32 0
  %350 = load float, float* %349, align 4
  %351 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %352 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %351, i64 0
  %353 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %352, i32 0, i32 1
  %354 = load float, float* %353, align 4
  %355 = call i32 @nvg__vset(%struct.TYPE_31__* %346, float %350, float %354, i32 0, i32 1)
  %356 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %357 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %356, i32 1
  store %struct.TYPE_31__* %357, %struct.TYPE_31__** %14, align 8
  %358 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %359 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %359, i64 1
  %361 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %360, i32 0, i32 0
  %362 = load float, float* %361, align 4
  %363 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %364 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %363, i64 1
  %365 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %364, i32 0, i32 1
  %366 = load float, float* %365, align 4
  %367 = call i32 @nvg__vset(%struct.TYPE_31__* %358, float %362, float %366, i32 1, i32 1)
  %368 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %369 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %368, i32 1
  store %struct.TYPE_31__* %369, %struct.TYPE_31__** %14, align 8
  br label %435

370:                                              ; preds = %342
  %371 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %372 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %371, i32 0, i32 0
  %373 = load float, float* %372, align 4
  %374 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %375 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %374, i32 0, i32 0
  %376 = load float, float* %375, align 4
  %377 = fsub float %373, %376
  store float %377, float* %29, align 4
  %378 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %379 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %378, i32 0, i32 1
  %380 = load float, float* %379, align 4
  %381 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %382 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %381, i32 0, i32 1
  %383 = load float, float* %382, align 4
  %384 = fsub float %380, %383
  store float %384, float* %30, align 4
  %385 = call i32 @nvg__normalize(float* %29, float* %30)
  %386 = load i32, i32* %9, align 4
  %387 = load i32, i32* @NVG_BUTT, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %400

389:                                              ; preds = %370
  %390 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %391 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %392 = load float, float* %29, align 4
  %393 = load float, float* %30, align 4
  %394 = load float, float* %8, align 4
  %395 = load float, float* %18, align 4
  %396 = fneg float %395
  %397 = fmul float %396, 5.000000e-01
  %398 = load float, float* %18, align 4
  %399 = call %struct.TYPE_31__* @nvg__buttCapEnd(%struct.TYPE_31__* %390, %struct.TYPE_32__* %391, float %392, float %393, float %394, float %397, float %398)
  store %struct.TYPE_31__* %399, %struct.TYPE_31__** %14, align 8
  br label %434

400:                                              ; preds = %370
  %401 = load i32, i32* %9, align 4
  %402 = load i32, i32* @NVG_BUTT, align 4
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %408, label %404

404:                                              ; preds = %400
  %405 = load i32, i32* %9, align 4
  %406 = load i32, i32* @NVG_SQUARE, align 4
  %407 = icmp eq i32 %405, %406
  br i1 %407, label %408, label %419

408:                                              ; preds = %404, %400
  %409 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %410 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %411 = load float, float* %29, align 4
  %412 = load float, float* %30, align 4
  %413 = load float, float* %8, align 4
  %414 = load float, float* %8, align 4
  %415 = load float, float* %18, align 4
  %416 = fsub float %414, %415
  %417 = load float, float* %18, align 4
  %418 = call %struct.TYPE_31__* @nvg__buttCapEnd(%struct.TYPE_31__* %409, %struct.TYPE_32__* %410, float %411, float %412, float %413, float %416, float %417)
  store %struct.TYPE_31__* %418, %struct.TYPE_31__** %14, align 8
  br label %433

419:                                              ; preds = %404
  %420 = load i32, i32* %9, align 4
  %421 = load i32, i32* @NVG_ROUND, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %432

423:                                              ; preds = %419
  %424 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %425 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %426 = load float, float* %29, align 4
  %427 = load float, float* %30, align 4
  %428 = load float, float* %8, align 4
  %429 = load i32, i32* %19, align 4
  %430 = load float, float* %18, align 4
  %431 = call %struct.TYPE_31__* @nvg__roundCapEnd(%struct.TYPE_31__* %424, %struct.TYPE_32__* %425, float %426, float %427, float %428, i32 %429, float %430)
  store %struct.TYPE_31__* %431, %struct.TYPE_31__** %14, align 8
  br label %432

432:                                              ; preds = %423, %419
  br label %433

433:                                              ; preds = %432, %408
  br label %434

434:                                              ; preds = %433, %389
  br label %435

435:                                              ; preds = %434, %345
  %436 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %437 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %438 = ptrtoint %struct.TYPE_31__* %436 to i64
  %439 = ptrtoint %struct.TYPE_31__* %437 to i64
  %440 = sub i64 %438, %439
  %441 = sdiv exact i64 %440, 8
  %442 = trunc i64 %441 to i32
  %443 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %444 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %443, i32 0, i32 4
  store i32 %442, i32* %444, align 8
  %445 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  store %struct.TYPE_31__* %445, %struct.TYPE_31__** %13, align 8
  br label %446

446:                                              ; preds = %435
  %447 = load i32, i32* %16, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %16, align 4
  br label %128

449:                                              ; preds = %128
  store i32 1, i32* %6, align 4
  br label %450

450:                                              ; preds = %449, %126
  %451 = load i32, i32* %6, align 4
  ret i32 %451
}

declare dso_local i32 @nvg__curveDivs(float, i32, i32) #1

declare dso_local i32 @nvg__calculateJoins(%struct.TYPE_35__*, float, i32, float) #1

declare dso_local %struct.TYPE_31__* @nvg__allocTempVerts(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @nvg__normalize(float*, float*) #1

declare dso_local %struct.TYPE_31__* @nvg__buttCapStart(%struct.TYPE_31__*, %struct.TYPE_32__*, float, float, float, float, float) #1

declare dso_local %struct.TYPE_31__* @nvg__roundCapStart(%struct.TYPE_31__*, %struct.TYPE_32__*, float, float, float, i32, float) #1

declare dso_local %struct.TYPE_31__* @nvg__roundJoin(%struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_32__*, float, float, i32, i32, i32, float) #1

declare dso_local %struct.TYPE_31__* @nvg__bevelJoin(%struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_32__*, float, float, i32, i32, float) #1

declare dso_local i32 @nvg__vset(%struct.TYPE_31__*, float, float, i32, i32) #1

declare dso_local %struct.TYPE_31__* @nvg__buttCapEnd(%struct.TYPE_31__*, %struct.TYPE_32__*, float, float, float, float, float) #1

declare dso_local %struct.TYPE_31__* @nvg__roundCapEnd(%struct.TYPE_31__*, %struct.TYPE_32__*, float, float, float, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
