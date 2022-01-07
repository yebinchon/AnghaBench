; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_reinit.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { float, i32, i32, i32, i32, i32, i8*, i8*, float, i8*, i8*, i32, i32, i32, i8*, i32, i32, i32, i64, i64, i32*, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { float, i32, float }

@AF_FORMAT_S16 = common dso_local global i32 0, align 4
@AF_FORMAT_FLOAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@output_overlap_s16 = common dso_local global i32* null, align 8
@output_overlap_float = common dso_local global i32* null, align 8
@UNROLL_PADDING = common dso_local global i32 0, align 4
@best_overlap_offset_s16 = common dso_local global i32* null, align 8
@best_overlap_offset_float = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [86 x i8] c"%.2f stride_in, %i stride_out, %i standing, %i overlap, %i search, %i queue, %s mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"s16\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*)* @reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reinit(%struct.mp_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float*, align 8
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  %30 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %31 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %30, i32 0, i32 0
  %32 = load %struct.priv*, %struct.priv** %31, align 8
  store %struct.priv* %32, %struct.priv** %4, align 8
  %33 = load %struct.priv*, %struct.priv** %4, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mp_aframe_reset(i32 %35)
  %37 = load %struct.priv*, %struct.priv** %4, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 15
  %39 = load i32, i32* %38, align 8
  %40 = call double @mp_aframe_get_rate(i32 %39)
  %41 = fdiv double %40, 1.000000e+03
  %42 = fptrunc double %41 to float
  store float %42, float* %5, align 4
  %43 = load %struct.priv*, %struct.priv** %4, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @mp_aframe_get_channels(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.priv*, %struct.priv** %4, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 15
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mp_aframe_get_format(i32 %49)
  store i32 %50, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @AF_FORMAT_S16, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %61

55:                                               ; preds = %1
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @AF_FORMAT_FLOAT, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %552

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 2, i32 4
  store i32 %65, i32* %9, align 4
  %66 = load float, float* %5, align 4
  %67 = load %struct.priv*, %struct.priv** %4, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 21
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load float, float* %70, align 4
  %72 = fmul float %66, %71
  %73 = load %struct.priv*, %struct.priv** %4, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 0
  store float %72, float* %74, align 8
  %75 = load %struct.priv*, %struct.priv** %4, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 0
  %77 = load float, float* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sitofp i32 %78 to float
  %80 = fmul float %77, %79
  %81 = load i32, i32* %6, align 4
  %82 = sitofp i32 %81 to float
  %83 = fmul float %80, %82
  %84 = fptosi float %83 to i32
  %85 = load %struct.priv*, %struct.priv** %4, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.priv*, %struct.priv** %4, align 8
  %88 = load %struct.priv*, %struct.priv** %4, align 8
  %89 = getelementptr inbounds %struct.priv, %struct.priv* %88, i32 0, i32 23
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @update_speed(%struct.priv* %87, i32 %90)
  %92 = load %struct.priv*, %struct.priv** %4, align 8
  %93 = getelementptr inbounds %struct.priv, %struct.priv* %92, i32 0, i32 0
  %94 = load float, float* %93, align 8
  %95 = load %struct.priv*, %struct.priv** %4, align 8
  %96 = getelementptr inbounds %struct.priv, %struct.priv* %95, i32 0, i32 21
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sitofp i32 %99 to float
  %101 = fmul float %94, %100
  %102 = fptosi float %101 to i32
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %61
  %106 = load %struct.priv*, %struct.priv** %4, align 8
  %107 = getelementptr inbounds %struct.priv, %struct.priv* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.priv*, %struct.priv** %4, align 8
  %110 = getelementptr inbounds %struct.priv, %struct.priv* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.priv*, %struct.priv** %4, align 8
  %112 = getelementptr inbounds %struct.priv, %struct.priv* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sdiv i32 %113, %114
  %116 = load %struct.priv*, %struct.priv** %4, align 8
  %117 = getelementptr inbounds %struct.priv, %struct.priv* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.priv*, %struct.priv** %4, align 8
  %119 = getelementptr inbounds %struct.priv, %struct.priv* %118, i32 0, i32 22
  store i32* null, i32** %119, align 8
  %120 = load %struct.priv*, %struct.priv** %4, align 8
  %121 = getelementptr inbounds %struct.priv, %struct.priv* %120, i32 0, i32 4
  store i32 0, i32* %121, align 8
  br label %261

122:                                              ; preds = %61
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %6, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load %struct.priv*, %struct.priv** %4, align 8
  %127 = getelementptr inbounds %struct.priv, %struct.priv* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %6, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* %9, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load %struct.priv*, %struct.priv** %4, align 8
  %134 = getelementptr inbounds %struct.priv, %struct.priv* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load %struct.priv*, %struct.priv** %4, align 8
  %136 = getelementptr inbounds %struct.priv, %struct.priv* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.priv*, %struct.priv** %4, align 8
  %139 = getelementptr inbounds %struct.priv, %struct.priv* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %137, %140
  %142 = load %struct.priv*, %struct.priv** %4, align 8
  %143 = getelementptr inbounds %struct.priv, %struct.priv* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.priv*, %struct.priv** %4, align 8
  %145 = getelementptr inbounds %struct.priv, %struct.priv* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sdiv i32 %146, %147
  %149 = load %struct.priv*, %struct.priv** %4, align 8
  %150 = getelementptr inbounds %struct.priv, %struct.priv* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load %struct.priv*, %struct.priv** %4, align 8
  %152 = getelementptr inbounds %struct.priv, %struct.priv* %151, i32 0, i32 6
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.priv*, %struct.priv** %4, align 8
  %155 = getelementptr inbounds %struct.priv, %struct.priv* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @realloc(i8* %153, i32 %156)
  %158 = load %struct.priv*, %struct.priv** %4, align 8
  %159 = getelementptr inbounds %struct.priv, %struct.priv* %158, i32 0, i32 6
  store i8* %157, i8** %159, align 8
  %160 = load %struct.priv*, %struct.priv** %4, align 8
  %161 = getelementptr inbounds %struct.priv, %struct.priv* %160, i32 0, i32 7
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.priv*, %struct.priv** %4, align 8
  %164 = getelementptr inbounds %struct.priv, %struct.priv* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = mul nsw i32 %165, 4
  %167 = call i8* @realloc(i8* %162, i32 %166)
  %168 = load %struct.priv*, %struct.priv** %4, align 8
  %169 = getelementptr inbounds %struct.priv, %struct.priv* %168, i32 0, i32 7
  store i8* %167, i8** %169, align 8
  %170 = load %struct.priv*, %struct.priv** %4, align 8
  %171 = getelementptr inbounds %struct.priv, %struct.priv* %170, i32 0, i32 6
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %122
  %175 = load %struct.priv*, %struct.priv** %4, align 8
  %176 = getelementptr inbounds %struct.priv, %struct.priv* %175, i32 0, i32 7
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %174, %122
  %180 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %181 = call i32 @MP_FATAL(%struct.mp_filter* %180, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %552

182:                                              ; preds = %174
  %183 = load %struct.priv*, %struct.priv** %4, align 8
  %184 = getelementptr inbounds %struct.priv, %struct.priv* %183, i32 0, i32 6
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.priv*, %struct.priv** %4, align 8
  %187 = getelementptr inbounds %struct.priv, %struct.priv* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @memset(i8* %185, i32 0, i32 %188)
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %226

192:                                              ; preds = %182
  %193 = load %struct.priv*, %struct.priv** %4, align 8
  %194 = getelementptr inbounds %struct.priv, %struct.priv* %193, i32 0, i32 7
  %195 = load i8*, i8** %194, align 8
  %196 = bitcast i8* %195 to i32*
  store i32* %196, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %197

197:                                              ; preds = %219, %192
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %222

201:                                              ; preds = %197
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %10, align 4
  %204 = sdiv i32 %202, %203
  store i32 %204, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %205

205:                                              ; preds = %213, %201
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = load i32, i32* %14, align 4
  %211 = load i32*, i32** %11, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %11, align 8
  store i32 %210, i32* %211, align 4
  br label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %205

216:                                              ; preds = %205
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 65536
  store i32 %218, i32* %12, align 4
  br label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %13, align 4
  br label %197

222:                                              ; preds = %197
  %223 = load i32*, i32** @output_overlap_s16, align 8
  %224 = load %struct.priv*, %struct.priv** %4, align 8
  %225 = getelementptr inbounds %struct.priv, %struct.priv* %224, i32 0, i32 22
  store i32* %223, i32** %225, align 8
  br label %260

226:                                              ; preds = %182
  %227 = load %struct.priv*, %struct.priv** %4, align 8
  %228 = getelementptr inbounds %struct.priv, %struct.priv* %227, i32 0, i32 7
  %229 = load i8*, i8** %228, align 8
  %230 = bitcast i8* %229 to float*
  store float* %230, float** %16, align 8
  store i32 0, i32* %17, align 4
  br label %231

231:                                              ; preds = %253, %226
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %256

235:                                              ; preds = %231
  %236 = load i32, i32* %17, align 4
  %237 = sitofp i32 %236 to float
  %238 = load i32, i32* %10, align 4
  %239 = sitofp i32 %238 to float
  %240 = fdiv float %237, %239
  store float %240, float* %18, align 4
  store i32 0, i32* %19, align 4
  br label %241

241:                                              ; preds = %249, %235
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %241
  %246 = load float, float* %18, align 4
  %247 = load float*, float** %16, align 8
  %248 = getelementptr inbounds float, float* %247, i32 1
  store float* %248, float** %16, align 8
  store float %246, float* %247, align 4
  br label %249

249:                                              ; preds = %245
  %250 = load i32, i32* %19, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %19, align 4
  br label %241

252:                                              ; preds = %241
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %17, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %17, align 4
  br label %231

256:                                              ; preds = %231
  %257 = load i32*, i32** @output_overlap_float, align 8
  %258 = load %struct.priv*, %struct.priv** %4, align 8
  %259 = getelementptr inbounds %struct.priv, %struct.priv* %258, i32 0, i32 22
  store i32* %257, i32** %259, align 8
  br label %260

260:                                              ; preds = %256, %222
  br label %261

261:                                              ; preds = %260, %105
  %262 = load i32, i32* %10, align 4
  %263 = icmp sgt i32 %262, 1
  br i1 %263, label %264, label %272

264:                                              ; preds = %261
  %265 = load float, float* %5, align 4
  %266 = load %struct.priv*, %struct.priv** %4, align 8
  %267 = getelementptr inbounds %struct.priv, %struct.priv* %266, i32 0, i32 21
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 2
  %270 = load float, float* %269, align 4
  %271 = fmul float %265, %270
  br label %273

272:                                              ; preds = %261
  br label %273

273:                                              ; preds = %272, %264
  %274 = phi float [ %271, %264 ], [ 0.000000e+00, %272 ]
  %275 = load %struct.priv*, %struct.priv** %4, align 8
  %276 = getelementptr inbounds %struct.priv, %struct.priv* %275, i32 0, i32 8
  store float %274, float* %276, align 8
  %277 = load %struct.priv*, %struct.priv** %4, align 8
  %278 = getelementptr inbounds %struct.priv, %struct.priv* %277, i32 0, i32 8
  %279 = load float, float* %278, align 8
  %280 = fcmp ole float %279, 0.000000e+00
  br i1 %280, label %281, label %284

281:                                              ; preds = %273
  %282 = load %struct.priv*, %struct.priv** %4, align 8
  %283 = getelementptr inbounds %struct.priv, %struct.priv* %282, i32 0, i32 20
  store i32* null, i32** %283, align 8
  br label %453

284:                                              ; preds = %273
  %285 = load i32, i32* %8, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %382

287:                                              ; preds = %284
  %288 = load i32, i32* %10, align 4
  store i32 %288, i32* %20, align 4
  %289 = load i32, i32* %20, align 4
  %290 = load i32, i32* %20, align 4
  %291 = mul nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = sdiv i64 8589934588, %292
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %21, align 4
  %295 = load %struct.priv*, %struct.priv** %4, align 8
  %296 = getelementptr inbounds %struct.priv, %struct.priv* %295, i32 0, i32 9
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.priv*, %struct.priv** %4, align 8
  %299 = getelementptr inbounds %struct.priv, %struct.priv* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = mul nsw i32 %300, 2
  %302 = load i32, i32* @UNROLL_PADDING, align 4
  %303 = add nsw i32 %301, %302
  %304 = call i8* @realloc(i8* %297, i32 %303)
  %305 = load %struct.priv*, %struct.priv** %4, align 8
  %306 = getelementptr inbounds %struct.priv, %struct.priv* %305, i32 0, i32 9
  store i8* %304, i8** %306, align 8
  %307 = load %struct.priv*, %struct.priv** %4, align 8
  %308 = getelementptr inbounds %struct.priv, %struct.priv* %307, i32 0, i32 10
  %309 = load i8*, i8** %308, align 8
  %310 = load %struct.priv*, %struct.priv** %4, align 8
  %311 = getelementptr inbounds %struct.priv, %struct.priv* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = mul nsw i32 %312, 2
  %314 = load i32, i32* %6, align 4
  %315 = load i32, i32* %9, align 4
  %316 = mul nsw i32 %314, %315
  %317 = mul nsw i32 %316, 2
  %318 = sub nsw i32 %313, %317
  %319 = call i8* @realloc(i8* %309, i32 %318)
  %320 = load %struct.priv*, %struct.priv** %4, align 8
  %321 = getelementptr inbounds %struct.priv, %struct.priv* %320, i32 0, i32 10
  store i8* %319, i8** %321, align 8
  %322 = load %struct.priv*, %struct.priv** %4, align 8
  %323 = getelementptr inbounds %struct.priv, %struct.priv* %322, i32 0, i32 9
  %324 = load i8*, i8** %323, align 8
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %331

326:                                              ; preds = %287
  %327 = load %struct.priv*, %struct.priv** %4, align 8
  %328 = getelementptr inbounds %struct.priv, %struct.priv* %327, i32 0, i32 10
  %329 = load i8*, i8** %328, align 8
  %330 = icmp ne i8* %329, null
  br i1 %330, label %334, label %331

331:                                              ; preds = %326, %287
  %332 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %333 = call i32 @MP_FATAL(%struct.mp_filter* %332, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %552

334:                                              ; preds = %326
  %335 = load %struct.priv*, %struct.priv** %4, align 8
  %336 = getelementptr inbounds %struct.priv, %struct.priv* %335, i32 0, i32 9
  %337 = load i8*, i8** %336, align 8
  %338 = load %struct.priv*, %struct.priv** %4, align 8
  %339 = getelementptr inbounds %struct.priv, %struct.priv* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = mul nsw i32 %340, 2
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, i8* %337, i64 %342
  %344 = load i32, i32* @UNROLL_PADDING, align 4
  %345 = call i32 @memset(i8* %343, i32 0, i32 %344)
  %346 = load %struct.priv*, %struct.priv** %4, align 8
  %347 = getelementptr inbounds %struct.priv, %struct.priv* %346, i32 0, i32 10
  %348 = load i8*, i8** %347, align 8
  %349 = bitcast i8* %348 to i32*
  store i32* %349, i32** %22, align 8
  store i32 1, i32* %23, align 4
  br label %350

350:                                              ; preds = %375, %334
  %351 = load i32, i32* %23, align 4
  %352 = load i32, i32* %10, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %378

354:                                              ; preds = %350
  %355 = load i32, i32* %23, align 4
  %356 = load i32, i32* %20, align 4
  %357 = load i32, i32* %23, align 4
  %358 = sub nsw i32 %356, %357
  %359 = mul nsw i32 %355, %358
  %360 = load i32, i32* %21, align 4
  %361 = mul nsw i32 %359, %360
  %362 = ashr i32 %361, 15
  store i32 %362, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %363

363:                                              ; preds = %371, %354
  %364 = load i32, i32* %25, align 4
  %365 = load i32, i32* %6, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %367, label %374

367:                                              ; preds = %363
  %368 = load i32, i32* %24, align 4
  %369 = load i32*, i32** %22, align 8
  %370 = getelementptr inbounds i32, i32* %369, i32 1
  store i32* %370, i32** %22, align 8
  store i32 %368, i32* %369, align 4
  br label %371

371:                                              ; preds = %367
  %372 = load i32, i32* %25, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %25, align 4
  br label %363

374:                                              ; preds = %363
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %23, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %23, align 4
  br label %350

378:                                              ; preds = %350
  %379 = load i32*, i32** @best_overlap_offset_s16, align 8
  %380 = load %struct.priv*, %struct.priv** %4, align 8
  %381 = getelementptr inbounds %struct.priv, %struct.priv* %380, i32 0, i32 20
  store i32* %379, i32** %381, align 8
  br label %452

382:                                              ; preds = %284
  %383 = load %struct.priv*, %struct.priv** %4, align 8
  %384 = getelementptr inbounds %struct.priv, %struct.priv* %383, i32 0, i32 9
  %385 = load i8*, i8** %384, align 8
  %386 = load %struct.priv*, %struct.priv** %4, align 8
  %387 = getelementptr inbounds %struct.priv, %struct.priv* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 8
  %389 = call i8* @realloc(i8* %385, i32 %388)
  %390 = load %struct.priv*, %struct.priv** %4, align 8
  %391 = getelementptr inbounds %struct.priv, %struct.priv* %390, i32 0, i32 9
  store i8* %389, i8** %391, align 8
  %392 = load %struct.priv*, %struct.priv** %4, align 8
  %393 = getelementptr inbounds %struct.priv, %struct.priv* %392, i32 0, i32 10
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.priv*, %struct.priv** %4, align 8
  %396 = getelementptr inbounds %struct.priv, %struct.priv* %395, i32 0, i32 4
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* %6, align 4
  %399 = load i32, i32* %9, align 4
  %400 = mul nsw i32 %398, %399
  %401 = sub nsw i32 %397, %400
  %402 = call i8* @realloc(i8* %394, i32 %401)
  %403 = load %struct.priv*, %struct.priv** %4, align 8
  %404 = getelementptr inbounds %struct.priv, %struct.priv* %403, i32 0, i32 10
  store i8* %402, i8** %404, align 8
  %405 = load %struct.priv*, %struct.priv** %4, align 8
  %406 = getelementptr inbounds %struct.priv, %struct.priv* %405, i32 0, i32 9
  %407 = load i8*, i8** %406, align 8
  %408 = icmp ne i8* %407, null
  br i1 %408, label %409, label %414

409:                                              ; preds = %382
  %410 = load %struct.priv*, %struct.priv** %4, align 8
  %411 = getelementptr inbounds %struct.priv, %struct.priv* %410, i32 0, i32 10
  %412 = load i8*, i8** %411, align 8
  %413 = icmp ne i8* %412, null
  br i1 %413, label %417, label %414

414:                                              ; preds = %409, %382
  %415 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %416 = call i32 @MP_FATAL(%struct.mp_filter* %415, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %552

417:                                              ; preds = %409
  %418 = load %struct.priv*, %struct.priv** %4, align 8
  %419 = getelementptr inbounds %struct.priv, %struct.priv* %418, i32 0, i32 10
  %420 = load i8*, i8** %419, align 8
  %421 = bitcast i8* %420 to float*
  store float* %421, float** %26, align 8
  store i32 1, i32* %27, align 4
  br label %422

422:                                              ; preds = %445, %417
  %423 = load i32, i32* %27, align 4
  %424 = load i32, i32* %10, align 4
  %425 = icmp slt i32 %423, %424
  br i1 %425, label %426, label %448

426:                                              ; preds = %422
  %427 = load i32, i32* %27, align 4
  %428 = load i32, i32* %10, align 4
  %429 = load i32, i32* %27, align 4
  %430 = sub nsw i32 %428, %429
  %431 = mul nsw i32 %427, %430
  %432 = sitofp i32 %431 to float
  store float %432, float* %28, align 4
  store i32 0, i32* %29, align 4
  br label %433

433:                                              ; preds = %441, %426
  %434 = load i32, i32* %29, align 4
  %435 = load i32, i32* %6, align 4
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %437, label %444

437:                                              ; preds = %433
  %438 = load float, float* %28, align 4
  %439 = load float*, float** %26, align 8
  %440 = getelementptr inbounds float, float* %439, i32 1
  store float* %440, float** %26, align 8
  store float %438, float* %439, align 4
  br label %441

441:                                              ; preds = %437
  %442 = load i32, i32* %29, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %29, align 4
  br label %433

444:                                              ; preds = %433
  br label %445

445:                                              ; preds = %444
  %446 = load i32, i32* %27, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %27, align 4
  br label %422

448:                                              ; preds = %422
  %449 = load i32*, i32** @best_overlap_offset_float, align 8
  %450 = load %struct.priv*, %struct.priv** %4, align 8
  %451 = getelementptr inbounds %struct.priv, %struct.priv* %450, i32 0, i32 20
  store i32* %449, i32** %451, align 8
  br label %452

452:                                              ; preds = %448, %378
  br label %453

453:                                              ; preds = %452, %281
  %454 = load i32, i32* %9, align 4
  %455 = load i32, i32* %6, align 4
  %456 = mul nsw i32 %454, %455
  %457 = load %struct.priv*, %struct.priv** %4, align 8
  %458 = getelementptr inbounds %struct.priv, %struct.priv* %457, i32 0, i32 11
  store i32 %456, i32* %458, align 8
  %459 = load i32, i32* %6, align 4
  %460 = load %struct.priv*, %struct.priv** %4, align 8
  %461 = getelementptr inbounds %struct.priv, %struct.priv* %460, i32 0, i32 12
  store i32 %459, i32* %461, align 4
  %462 = load %struct.priv*, %struct.priv** %4, align 8
  %463 = getelementptr inbounds %struct.priv, %struct.priv* %462, i32 0, i32 8
  %464 = load float, float* %463, align 8
  %465 = load %struct.priv*, %struct.priv** %4, align 8
  %466 = getelementptr inbounds %struct.priv, %struct.priv* %465, i32 0, i32 0
  %467 = load float, float* %466, align 8
  %468 = fadd float %464, %467
  %469 = load i32, i32* %10, align 4
  %470 = sitofp i32 %469 to float
  %471 = fadd float %468, %470
  %472 = load i32, i32* %9, align 4
  %473 = sitofp i32 %472 to float
  %474 = fmul float %471, %473
  %475 = load i32, i32* %6, align 4
  %476 = sitofp i32 %475 to float
  %477 = fmul float %474, %476
  %478 = fptosi float %477 to i32
  %479 = load %struct.priv*, %struct.priv** %4, align 8
  %480 = getelementptr inbounds %struct.priv, %struct.priv* %479, i32 0, i32 13
  store i32 %478, i32* %480, align 8
  %481 = load %struct.priv*, %struct.priv** %4, align 8
  %482 = getelementptr inbounds %struct.priv, %struct.priv* %481, i32 0, i32 14
  %483 = load i8*, i8** %482, align 8
  %484 = load %struct.priv*, %struct.priv** %4, align 8
  %485 = getelementptr inbounds %struct.priv, %struct.priv* %484, i32 0, i32 13
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* @UNROLL_PADDING, align 4
  %488 = add nsw i32 %486, %487
  %489 = call i8* @realloc(i8* %483, i32 %488)
  %490 = load %struct.priv*, %struct.priv** %4, align 8
  %491 = getelementptr inbounds %struct.priv, %struct.priv* %490, i32 0, i32 14
  store i8* %489, i8** %491, align 8
  %492 = load %struct.priv*, %struct.priv** %4, align 8
  %493 = getelementptr inbounds %struct.priv, %struct.priv* %492, i32 0, i32 14
  %494 = load i8*, i8** %493, align 8
  %495 = icmp ne i8* %494, null
  br i1 %495, label %499, label %496

496:                                              ; preds = %453
  %497 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %498 = call i32 @MP_FATAL(%struct.mp_filter* %497, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %552

499:                                              ; preds = %453
  %500 = load %struct.priv*, %struct.priv** %4, align 8
  %501 = getelementptr inbounds %struct.priv, %struct.priv* %500, i32 0, i32 19
  store i64 0, i64* %501, align 8
  %502 = load %struct.priv*, %struct.priv** %4, align 8
  %503 = getelementptr inbounds %struct.priv, %struct.priv* %502, i32 0, i32 18
  store i64 0, i64* %503, align 8
  %504 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %505 = load %struct.priv*, %struct.priv** %4, align 8
  %506 = getelementptr inbounds %struct.priv, %struct.priv* %505, i32 0, i32 17
  %507 = load i32, i32* %506, align 8
  %508 = load %struct.priv*, %struct.priv** %4, align 8
  %509 = getelementptr inbounds %struct.priv, %struct.priv* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = load i32, i32* %6, align 4
  %512 = sdiv i32 %510, %511
  %513 = load i32, i32* %9, align 4
  %514 = sdiv i32 %512, %513
  %515 = load %struct.priv*, %struct.priv** %4, align 8
  %516 = getelementptr inbounds %struct.priv, %struct.priv* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 8
  %518 = load i32, i32* %6, align 4
  %519 = sdiv i32 %517, %518
  %520 = load i32, i32* %9, align 4
  %521 = sdiv i32 %519, %520
  %522 = load %struct.priv*, %struct.priv** %4, align 8
  %523 = getelementptr inbounds %struct.priv, %struct.priv* %522, i32 0, i32 4
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* %6, align 4
  %526 = sdiv i32 %524, %525
  %527 = load i32, i32* %9, align 4
  %528 = sdiv i32 %526, %527
  %529 = load %struct.priv*, %struct.priv** %4, align 8
  %530 = getelementptr inbounds %struct.priv, %struct.priv* %529, i32 0, i32 8
  %531 = load float, float* %530, align 8
  %532 = fptosi float %531 to i32
  %533 = load %struct.priv*, %struct.priv** %4, align 8
  %534 = getelementptr inbounds %struct.priv, %struct.priv* %533, i32 0, i32 13
  %535 = load i32, i32* %534, align 8
  %536 = load i32, i32* %6, align 4
  %537 = sdiv i32 %535, %536
  %538 = load i32, i32* %9, align 4
  %539 = sdiv i32 %537, %538
  %540 = load i32, i32* %8, align 4
  %541 = icmp ne i32 %540, 0
  %542 = zext i1 %541 to i64
  %543 = select i1 %541, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %544 = call i32 @MP_DBG(%struct.mp_filter* %504, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %507, i32 %514, i32 %521, i32 %528, i32 %532, i32 %539, i8* %543)
  %545 = load %struct.priv*, %struct.priv** %4, align 8
  %546 = getelementptr inbounds %struct.priv, %struct.priv* %545, i32 0, i32 16
  %547 = load i32, i32* %546, align 4
  %548 = load %struct.priv*, %struct.priv** %4, align 8
  %549 = getelementptr inbounds %struct.priv, %struct.priv* %548, i32 0, i32 15
  %550 = load i32, i32* %549, align 8
  %551 = call i32 @mp_aframe_config_copy(i32 %547, i32 %550)
  store i32 1, i32* %2, align 4
  br label %552

552:                                              ; preds = %499, %496, %414, %331, %179, %59
  %553 = load i32, i32* %2, align 4
  ret i32 %553
}

declare dso_local i32 @mp_aframe_reset(i32) #1

declare dso_local double @mp_aframe_get_rate(i32) #1

declare dso_local i32 @mp_aframe_get_channels(i32) #1

declare dso_local i32 @mp_aframe_get_format(i32) #1

declare dso_local i32 @update_speed(%struct.priv*, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @MP_FATAL(%struct.mp_filter*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @MP_DBG(%struct.mp_filter*, i8*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @mp_aframe_config_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
