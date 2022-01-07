; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_fog.c_gl_fog_color_vertices.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_fog.c_gl_fog_color_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { float*, float, i32, float, float }
%struct.TYPE_6__ = type { float, float, float }

@.str = private unnamed_addr constant [38 x i8] c"Bad fog mode in gl_fog_color_vertices\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_fog_color_vertices(%struct.TYPE_8__* %0, i64 %1, [4 x float]* %2, [4 x float]* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x float]*, align 8
  %8 = alloca [4 x float]*, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store [4 x float]* %2, [4 x float]** %7, align 8
  store [4 x float]* %3, [4 x float]** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load float*, float** %21, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = load float, float* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = fmul float %24, %29
  store float %30, float* %11, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 1
  %36 = load float, float* %35, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = fmul float %36, %41
  store float %42, float* %12, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 2
  %48 = load float, float* %47, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load float, float* %52, align 4
  %54 = fmul float %48, %53
  store float %54, float* %13, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load float, float* %57, align 8
  store float %58, float* %14, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %299 [
    i32 128, label %63
    i32 130, label %143
    i32 129, label %217
  ]

63:                                               ; preds = %4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load float, float* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load float, float* %70, align 8
  %72 = fsub float %67, %71
  %73 = fdiv float 1.000000e+00, %72
  store float %73, float* %10, align 4
  store i64 0, i64* %9, align 8
  br label %74

74:                                               ; preds = %139, %63
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %142

78:                                               ; preds = %74
  %79 = load float, float* %14, align 4
  %80 = load [4 x float]*, [4 x float]** %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds [4 x float], [4 x float]* %80, i64 %81
  %83 = getelementptr inbounds [4 x float], [4 x float]* %82, i64 0, i64 2
  %84 = load float, float* %83, align 4
  %85 = call float @ABSF(float %84)
  %86 = fsub float %79, %85
  %87 = load float, float* %10, align 4
  %88 = fmul float %86, %87
  store float %88, float* %15, align 4
  %89 = load float, float* %15, align 4
  %90 = call float @CLAMP(float %89, float 0.000000e+00, float 1.000000e+00)
  store float %90, float* %15, align 4
  %91 = load float, float* %15, align 4
  %92 = load [4 x float]*, [4 x float]** %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds [4 x float], [4 x float]* %92, i64 %93
  %95 = getelementptr inbounds [4 x float], [4 x float]* %94, i64 0, i64 0
  %96 = load float, float* %95, align 4
  %97 = fmul float %91, %96
  %98 = load float, float* %15, align 4
  %99 = fsub float 1.000000e+00, %98
  %100 = load float, float* %11, align 4
  %101 = fmul float %99, %100
  %102 = fadd float %97, %101
  %103 = load [4 x float]*, [4 x float]** %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds [4 x float], [4 x float]* %103, i64 %104
  %106 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 0
  store float %102, float* %106, align 4
  %107 = load float, float* %15, align 4
  %108 = load [4 x float]*, [4 x float]** %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds [4 x float], [4 x float]* %108, i64 %109
  %111 = getelementptr inbounds [4 x float], [4 x float]* %110, i64 0, i64 1
  %112 = load float, float* %111, align 4
  %113 = fmul float %107, %112
  %114 = load float, float* %15, align 4
  %115 = fsub float 1.000000e+00, %114
  %116 = load float, float* %12, align 4
  %117 = fmul float %115, %116
  %118 = fadd float %113, %117
  %119 = load [4 x float]*, [4 x float]** %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds [4 x float], [4 x float]* %119, i64 %120
  %122 = getelementptr inbounds [4 x float], [4 x float]* %121, i64 0, i64 1
  store float %118, float* %122, align 4
  %123 = load float, float* %15, align 4
  %124 = load [4 x float]*, [4 x float]** %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = getelementptr inbounds [4 x float], [4 x float]* %124, i64 %125
  %127 = getelementptr inbounds [4 x float], [4 x float]* %126, i64 0, i64 2
  %128 = load float, float* %127, align 4
  %129 = fmul float %123, %128
  %130 = load float, float* %15, align 4
  %131 = fsub float 1.000000e+00, %130
  %132 = load float, float* %13, align 4
  %133 = fmul float %131, %132
  %134 = fadd float %129, %133
  %135 = load [4 x float]*, [4 x float]** %8, align 8
  %136 = load i64, i64* %9, align 8
  %137 = getelementptr inbounds [4 x float], [4 x float]* %135, i64 %136
  %138 = getelementptr inbounds [4 x float], [4 x float]* %137, i64 0, i64 2
  store float %134, float* %138, align 4
  br label %139

139:                                              ; preds = %78
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %9, align 8
  br label %74

142:                                              ; preds = %74
  br label %302

143:                                              ; preds = %4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 4
  %147 = load float, float* %146, align 4
  %148 = fneg float %147
  store float %148, float* %10, align 4
  store i64 0, i64* %9, align 8
  br label %149

149:                                              ; preds = %213, %143
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %6, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %216

153:                                              ; preds = %149
  %154 = load float, float* %10, align 4
  %155 = load [4 x float]*, [4 x float]** %7, align 8
  %156 = load i64, i64* %9, align 8
  %157 = getelementptr inbounds [4 x float], [4 x float]* %155, i64 %156
  %158 = getelementptr inbounds [4 x float], [4 x float]* %157, i64 0, i64 2
  %159 = load float, float* %158, align 4
  %160 = call float @ABSF(float %159)
  %161 = fmul float %154, %160
  %162 = call float @exp(float %161)
  store float %162, float* %16, align 4
  %163 = load float, float* %16, align 4
  %164 = call float @CLAMP(float %163, float 0.000000e+00, float 1.000000e+00)
  store float %164, float* %16, align 4
  %165 = load float, float* %16, align 4
  %166 = load [4 x float]*, [4 x float]** %8, align 8
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds [4 x float], [4 x float]* %166, i64 %167
  %169 = getelementptr inbounds [4 x float], [4 x float]* %168, i64 0, i64 0
  %170 = load float, float* %169, align 4
  %171 = fmul float %165, %170
  %172 = load float, float* %16, align 4
  %173 = fsub float 1.000000e+00, %172
  %174 = load float, float* %11, align 4
  %175 = fmul float %173, %174
  %176 = fadd float %171, %175
  %177 = load [4 x float]*, [4 x float]** %8, align 8
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds [4 x float], [4 x float]* %177, i64 %178
  %180 = getelementptr inbounds [4 x float], [4 x float]* %179, i64 0, i64 0
  store float %176, float* %180, align 4
  %181 = load float, float* %16, align 4
  %182 = load [4 x float]*, [4 x float]** %8, align 8
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds [4 x float], [4 x float]* %182, i64 %183
  %185 = getelementptr inbounds [4 x float], [4 x float]* %184, i64 0, i64 1
  %186 = load float, float* %185, align 4
  %187 = fmul float %181, %186
  %188 = load float, float* %16, align 4
  %189 = fsub float 1.000000e+00, %188
  %190 = load float, float* %12, align 4
  %191 = fmul float %189, %190
  %192 = fadd float %187, %191
  %193 = load [4 x float]*, [4 x float]** %8, align 8
  %194 = load i64, i64* %9, align 8
  %195 = getelementptr inbounds [4 x float], [4 x float]* %193, i64 %194
  %196 = getelementptr inbounds [4 x float], [4 x float]* %195, i64 0, i64 1
  store float %192, float* %196, align 4
  %197 = load float, float* %16, align 4
  %198 = load [4 x float]*, [4 x float]** %8, align 8
  %199 = load i64, i64* %9, align 8
  %200 = getelementptr inbounds [4 x float], [4 x float]* %198, i64 %199
  %201 = getelementptr inbounds [4 x float], [4 x float]* %200, i64 0, i64 2
  %202 = load float, float* %201, align 4
  %203 = fmul float %197, %202
  %204 = load float, float* %16, align 4
  %205 = fsub float 1.000000e+00, %204
  %206 = load float, float* %13, align 4
  %207 = fmul float %205, %206
  %208 = fadd float %203, %207
  %209 = load [4 x float]*, [4 x float]** %8, align 8
  %210 = load i64, i64* %9, align 8
  %211 = getelementptr inbounds [4 x float], [4 x float]* %209, i64 %210
  %212 = getelementptr inbounds [4 x float], [4 x float]* %211, i64 0, i64 2
  store float %208, float* %212, align 4
  br label %213

213:                                              ; preds = %153
  %214 = load i64, i64* %9, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %9, align 8
  br label %149

216:                                              ; preds = %149
  br label %302

217:                                              ; preds = %4
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 4
  %221 = load float, float* %220, align 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 4
  %225 = load float, float* %224, align 4
  %226 = fmul float %221, %225
  %227 = fneg float %226
  store float %227, float* %10, align 4
  store i64 0, i64* %9, align 8
  br label %228

228:                                              ; preds = %295, %217
  %229 = load i64, i64* %9, align 8
  %230 = load i64, i64* %6, align 8
  %231 = icmp ult i64 %229, %230
  br i1 %231, label %232, label %298

232:                                              ; preds = %228
  %233 = load [4 x float]*, [4 x float]** %7, align 8
  %234 = load i64, i64* %9, align 8
  %235 = getelementptr inbounds [4 x float], [4 x float]* %233, i64 %234
  %236 = getelementptr inbounds [4 x float], [4 x float]* %235, i64 0, i64 2
  %237 = load float, float* %236, align 4
  %238 = call float @ABSF(float %237)
  store float %238, float* %17, align 4
  %239 = load float, float* %10, align 4
  %240 = load float, float* %17, align 4
  %241 = fmul float %239, %240
  %242 = load float, float* %17, align 4
  %243 = fmul float %241, %242
  %244 = call float @exp(float %243)
  store float %244, float* %18, align 4
  %245 = load float, float* %18, align 4
  %246 = call float @CLAMP(float %245, float 0.000000e+00, float 1.000000e+00)
  store float %246, float* %18, align 4
  %247 = load float, float* %18, align 4
  %248 = load [4 x float]*, [4 x float]** %8, align 8
  %249 = load i64, i64* %9, align 8
  %250 = getelementptr inbounds [4 x float], [4 x float]* %248, i64 %249
  %251 = getelementptr inbounds [4 x float], [4 x float]* %250, i64 0, i64 0
  %252 = load float, float* %251, align 4
  %253 = fmul float %247, %252
  %254 = load float, float* %18, align 4
  %255 = fsub float 1.000000e+00, %254
  %256 = load float, float* %11, align 4
  %257 = fmul float %255, %256
  %258 = fadd float %253, %257
  %259 = load [4 x float]*, [4 x float]** %8, align 8
  %260 = load i64, i64* %9, align 8
  %261 = getelementptr inbounds [4 x float], [4 x float]* %259, i64 %260
  %262 = getelementptr inbounds [4 x float], [4 x float]* %261, i64 0, i64 0
  store float %258, float* %262, align 4
  %263 = load float, float* %18, align 4
  %264 = load [4 x float]*, [4 x float]** %8, align 8
  %265 = load i64, i64* %9, align 8
  %266 = getelementptr inbounds [4 x float], [4 x float]* %264, i64 %265
  %267 = getelementptr inbounds [4 x float], [4 x float]* %266, i64 0, i64 1
  %268 = load float, float* %267, align 4
  %269 = fmul float %263, %268
  %270 = load float, float* %18, align 4
  %271 = fsub float 1.000000e+00, %270
  %272 = load float, float* %12, align 4
  %273 = fmul float %271, %272
  %274 = fadd float %269, %273
  %275 = load [4 x float]*, [4 x float]** %8, align 8
  %276 = load i64, i64* %9, align 8
  %277 = getelementptr inbounds [4 x float], [4 x float]* %275, i64 %276
  %278 = getelementptr inbounds [4 x float], [4 x float]* %277, i64 0, i64 1
  store float %274, float* %278, align 4
  %279 = load float, float* %18, align 4
  %280 = load [4 x float]*, [4 x float]** %8, align 8
  %281 = load i64, i64* %9, align 8
  %282 = getelementptr inbounds [4 x float], [4 x float]* %280, i64 %281
  %283 = getelementptr inbounds [4 x float], [4 x float]* %282, i64 0, i64 2
  %284 = load float, float* %283, align 4
  %285 = fmul float %279, %284
  %286 = load float, float* %18, align 4
  %287 = fsub float 1.000000e+00, %286
  %288 = load float, float* %13, align 4
  %289 = fmul float %287, %288
  %290 = fadd float %285, %289
  %291 = load [4 x float]*, [4 x float]** %8, align 8
  %292 = load i64, i64* %9, align 8
  %293 = getelementptr inbounds [4 x float], [4 x float]* %291, i64 %292
  %294 = getelementptr inbounds [4 x float], [4 x float]* %293, i64 0, i64 2
  store float %290, float* %294, align 4
  br label %295

295:                                              ; preds = %232
  %296 = load i64, i64* %9, align 8
  %297 = add i64 %296, 1
  store i64 %297, i64* %9, align 8
  br label %228

298:                                              ; preds = %228
  br label %302

299:                                              ; preds = %4
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %301 = call i32 @gl_problem(%struct.TYPE_8__* %300, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %302

302:                                              ; preds = %299, %298, %216, %142
  ret void
}

declare dso_local float @ABSF(float) #1

declare dso_local float @CLAMP(float, float, float) #1

declare dso_local float @exp(float) #1

declare dso_local i32 @gl_problem(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
