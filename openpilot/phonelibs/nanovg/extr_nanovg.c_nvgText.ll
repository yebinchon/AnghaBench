; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgText.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { float, i32 }
%struct.TYPE_16__ = type { i64, float, float, float, i32, i32 }
%struct.TYPE_18__ = type { i32, float }
%struct.TYPE_19__ = type { float, float, float, float, i32, i32, i32, i32 }

@FONS_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @nvgText(%struct.TYPE_17__* %0, float %1, float %2, i8* %3, i8* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_18__, align 4
  %14 = alloca %struct.TYPE_18__, align 4
  %15 = alloca %struct.TYPE_19__, align 4
  %16 = alloca i32*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [8 x float], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = call %struct.TYPE_16__* @nvg__getState(%struct.TYPE_17__* %22)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %12, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %25 = call float @nvg__getFontScale(%struct.TYPE_16__* %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = fmul float %25, %28
  store float %29, float* %17, align 4
  %30 = load float, float* %17, align 4
  %31 = fdiv float 1.000000e+00, %30
  store float %31, float* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %5
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %34, %5
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FONS_INVALID, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load float, float* %8, align 4
  store float %47, float* %6, align 4
  br label %319

48:                                               ; preds = %40
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load float, float* %53, align 8
  %55 = load float, float* %17, align 4
  %56 = fmul float %54, %55
  %57 = call i32 @fonsSetSize(i32 %51, float %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = load float, float* %62, align 4
  %64 = load float, float* %17, align 4
  %65 = fmul float %63, %64
  %66 = call i32 @fonsSetSpacing(i32 %60, float %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = load float, float* %71, align 8
  %73 = load float, float* %17, align 4
  %74 = fmul float %72, %73
  %75 = call i32 @fonsSetBlur(i32 %69, float %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @fonsSetAlign(i32 %78, i32 %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @fonsSetFont(i32 %85, i64 %88)
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @nvg__maxi(i32 2, i32 %95)
  %97 = mul nsw i32 %96, 6
  store i32 %97, i32* %19, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %99 = load i32, i32* %19, align 4
  %100 = call i32* @nvg__allocTempVerts(%struct.TYPE_17__* %98, i32 %99)
  store i32* %100, i32** %16, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %48
  %104 = load float, float* %8, align 4
  store float %104, float* %6, align 4
  br label %319

105:                                              ; preds = %48
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load float, float* %8, align 4
  %110 = load float, float* %17, align 4
  %111 = fmul float %109, %110
  %112 = load float, float* %9, align 4
  %113 = load float, float* %17, align 4
  %114 = fmul float %112, %113
  %115 = load i8*, i8** %10, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @fonsTextIterInit(i32 %108, %struct.TYPE_18__* %13, float %111, float %114, i8* %115, i8* %116)
  %118 = bitcast %struct.TYPE_18__* %14 to i8*
  %119 = bitcast %struct.TYPE_18__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 8, i1 false)
  br label %120

120:                                              ; preds = %309, %105
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @fonsTextIterNext(i32 %123, %struct.TYPE_18__* %13, %struct.TYPE_19__* %15)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %310

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %155

130:                                              ; preds = %126
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %132 = call i32 @nvg__allocTextAtlas(%struct.TYPE_17__* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  br label %310

135:                                              ; preds = %130
  %136 = load i32, i32* %20, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = load i32*, i32** %16, align 8
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @nvg__renderText(%struct.TYPE_17__* %139, i32* %140, i32 %141)
  store i32 0, i32* %20, align 4
  br label %143

143:                                              ; preds = %138, %135
  %144 = bitcast %struct.TYPE_18__* %13 to i8*
  %145 = bitcast %struct.TYPE_18__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 4 %145, i64 8, i1 false)
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @fonsTextIterNext(i32 %148, %struct.TYPE_18__* %13, %struct.TYPE_19__* %15)
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %310

154:                                              ; preds = %143
  br label %155

155:                                              ; preds = %154, %126
  %156 = bitcast %struct.TYPE_18__* %14 to i8*
  %157 = bitcast %struct.TYPE_18__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %156, i8* align 4 %157, i64 8, i1 false)
  %158 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 0
  %159 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 1
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %164 = load float, float* %163, align 4
  %165 = load float, float* %18, align 4
  %166 = fmul float %164, %165
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %168 = load float, float* %167, align 4
  %169 = load float, float* %18, align 4
  %170 = fmul float %168, %169
  %171 = call i32 @nvgTransformPoint(float* %158, float* %159, i32 %162, float %166, float %170)
  %172 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 2
  %173 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 3
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  %178 = load float, float* %177, align 4
  %179 = load float, float* %18, align 4
  %180 = fmul float %178, %179
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %182 = load float, float* %181, align 4
  %183 = load float, float* %18, align 4
  %184 = fmul float %182, %183
  %185 = call i32 @nvgTransformPoint(float* %172, float* %173, i32 %176, float %180, float %184)
  %186 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 4
  %187 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 5
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  %192 = load float, float* %191, align 4
  %193 = load float, float* %18, align 4
  %194 = fmul float %192, %193
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 3
  %196 = load float, float* %195, align 4
  %197 = load float, float* %18, align 4
  %198 = fmul float %196, %197
  %199 = call i32 @nvgTransformPoint(float* %186, float* %187, i32 %190, float %194, float %198)
  %200 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 6
  %201 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 7
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %206 = load float, float* %205, align 4
  %207 = load float, float* %18, align 4
  %208 = fmul float %206, %207
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 3
  %210 = load float, float* %209, align 4
  %211 = load float, float* %18, align 4
  %212 = fmul float %210, %211
  %213 = call i32 @nvgTransformPoint(float* %200, float* %201, i32 %204, float %208, float %212)
  %214 = load i32, i32* %20, align 4
  %215 = add nsw i32 %214, 6
  %216 = load i32, i32* %19, align 4
  %217 = icmp sle i32 %215, %216
  br i1 %217, label %218, label %309

218:                                              ; preds = %155
  %219 = load i32*, i32** %16, align 8
  %220 = load i32, i32* %20, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 0
  %224 = load float, float* %223, align 16
  %225 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 1
  %226 = load float, float* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @nvg__vset(i32* %222, float %224, float %226, i32 %228, i32 %230)
  %232 = load i32, i32* %20, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %20, align 4
  %234 = load i32*, i32** %16, align 8
  %235 = load i32, i32* %20, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 4
  %239 = load float, float* %238, align 16
  %240 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 5
  %241 = load float, float* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @nvg__vset(i32* %237, float %239, float %241, i32 %243, i32 %245)
  %247 = load i32, i32* %20, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %20, align 4
  %249 = load i32*, i32** %16, align 8
  %250 = load i32, i32* %20, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 2
  %254 = load float, float* %253, align 8
  %255 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 3
  %256 = load float, float* %255, align 4
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @nvg__vset(i32* %252, float %254, float %256, i32 %258, i32 %260)
  %262 = load i32, i32* %20, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %20, align 4
  %264 = load i32*, i32** %16, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 0
  %269 = load float, float* %268, align 16
  %270 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 1
  %271 = load float, float* %270, align 4
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 6
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 7
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @nvg__vset(i32* %267, float %269, float %271, i32 %273, i32 %275)
  %277 = load i32, i32* %20, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %20, align 4
  %279 = load i32*, i32** %16, align 8
  %280 = load i32, i32* %20, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 6
  %284 = load float, float* %283, align 8
  %285 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 7
  %286 = load float, float* %285, align 4
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 4
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @nvg__vset(i32* %282, float %284, float %286, i32 %288, i32 %290)
  %292 = load i32, i32* %20, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %20, align 4
  %294 = load i32*, i32** %16, align 8
  %295 = load i32, i32* %20, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 4
  %299 = load float, float* %298, align 16
  %300 = getelementptr inbounds [8 x float], [8 x float]* %21, i64 0, i64 5
  %301 = load float, float* %300, align 4
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 5
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @nvg__vset(i32* %297, float %299, float %301, i32 %303, i32 %305)
  %307 = load i32, i32* %20, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %20, align 4
  br label %309

309:                                              ; preds = %218, %155
  br label %120

310:                                              ; preds = %153, %134, %120
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %312 = call i32 @nvg__flushTextTexture(%struct.TYPE_17__* %311)
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %314 = load i32*, i32** %16, align 8
  %315 = load i32, i32* %20, align 4
  %316 = call i32 @nvg__renderText(%struct.TYPE_17__* %313, i32* %314, i32 %315)
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %318 = load float, float* %317, align 4
  store float %318, float* %6, align 4
  br label %319

319:                                              ; preds = %310, %103, %46
  %320 = load float, float* %6, align 4
  ret float %320
}

declare dso_local %struct.TYPE_16__* @nvg__getState(%struct.TYPE_17__*) #1

declare dso_local float @nvg__getFontScale(%struct.TYPE_16__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fonsSetSize(i32, float) #1

declare dso_local i32 @fonsSetSpacing(i32, float) #1

declare dso_local i32 @fonsSetBlur(i32, float) #1

declare dso_local i32 @fonsSetAlign(i32, i32) #1

declare dso_local i32 @fonsSetFont(i32, i64) #1

declare dso_local i32 @nvg__maxi(i32, i32) #1

declare dso_local i32* @nvg__allocTempVerts(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @fonsTextIterInit(i32, %struct.TYPE_18__*, float, float, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fonsTextIterNext(i32, %struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @nvg__allocTextAtlas(%struct.TYPE_17__*) #1

declare dso_local i32 @nvg__renderText(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @nvgTransformPoint(float*, float*, i32, float, float) #1

declare dso_local i32 @nvg__vset(i32*, float, float, i32, i32) #1

declare dso_local i32 @nvg__flushTextTexture(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
