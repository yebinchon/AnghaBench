; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_gl_texgen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_gl_texgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@S_BIT = common dso_local global i32 0, align 4
@T_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Bad S texgen\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Bad T texgen\00", align 1
@R_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Bad R texgen\00", align 1
@Q_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Bad Q texgen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_texgen(%struct.TYPE_6__* %0, i64 %1, [4 x float]* %2, [4 x float]* %3, [3 x float]* %4, [4 x float]* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4 x float]*, align 8
  %10 = alloca [4 x float]*, align 8
  %11 = alloca [3 x float]*, align 8
  %12 = alloca [4 x float]*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [3 x float], align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i64, align 8
  %22 = alloca [3 x float], align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca i64, align 8
  %29 = alloca [3 x float], align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store [4 x float]* %2, [4 x float]** %9, align 8
  store [4 x float]* %3, [4 x float]** %10, align 8
  store [3 x float]* %4, [3 x float]** %11, align 8
  store [4 x float]* %5, [4 x float]** %12, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @S_BIT, align 4
  %42 = load i32, i32* @T_BIT, align 4
  %43 = or i32 %41, %42
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %159

45:                                               ; preds = %6
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 128
  br i1 %50, label %51, label %159

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %57, label %159

57:                                               ; preds = %51
  store i64 0, i64* %13, align 8
  br label %58

58:                                               ; preds = %155, %57
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %158

62:                                               ; preds = %58
  %63 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %64 = load [4 x float]*, [4 x float]** %10, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds [4 x float], [4 x float]* %64, i64 %65
  %67 = getelementptr inbounds [4 x float], [4 x float]* %66, i64 0, i64 0
  %68 = call i32 @COPY_3V(float* %63, float* %67)
  %69 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %70 = call i32 @NORMALIZE_3FV(float* %69)
  %71 = load [3 x float]*, [3 x float]** %11, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds [3 x float], [3 x float]* %71, i64 %72
  %74 = getelementptr inbounds [3 x float], [3 x float]* %73, i64 0, i64 0
  %75 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %76 = call double @DOT3(float* %74, float* %75)
  %77 = fmul double 2.000000e+00, %76
  %78 = fptrunc double %77 to float
  store float %78, float* %15, align 4
  %79 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %80 = load float, float* %79, align 4
  %81 = load [3 x float]*, [3 x float]** %11, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds [3 x float], [3 x float]* %81, i64 %82
  %84 = getelementptr inbounds [3 x float], [3 x float]* %83, i64 0, i64 0
  %85 = load float, float* %84, align 4
  %86 = load float, float* %15, align 4
  %87 = fmul float %85, %86
  %88 = fsub float %80, %87
  store float %88, float* %17, align 4
  %89 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 1
  %90 = load float, float* %89, align 4
  %91 = load [3 x float]*, [3 x float]** %11, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds [3 x float], [3 x float]* %91, i64 %92
  %94 = getelementptr inbounds [3 x float], [3 x float]* %93, i64 0, i64 1
  %95 = load float, float* %94, align 4
  %96 = load float, float* %15, align 4
  %97 = fmul float %95, %96
  %98 = fsub float %90, %97
  store float %98, float* %18, align 4
  %99 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 2
  %100 = load float, float* %99, align 4
  %101 = load [3 x float]*, [3 x float]** %11, align 8
  %102 = load i64, i64* %13, align 8
  %103 = getelementptr inbounds [3 x float], [3 x float]* %101, i64 %102
  %104 = getelementptr inbounds [3 x float], [3 x float]* %103, i64 0, i64 2
  %105 = load float, float* %104, align 4
  %106 = load float, float* %15, align 4
  %107 = fmul float %105, %106
  %108 = fsub float %100, %107
  store float %108, float* %19, align 4
  %109 = load float, float* %17, align 4
  %110 = load float, float* %17, align 4
  %111 = fmul float %109, %110
  %112 = load float, float* %18, align 4
  %113 = load float, float* %18, align 4
  %114 = fmul float %112, %113
  %115 = fadd float %111, %114
  %116 = load float, float* %19, align 4
  %117 = fadd float %116, 1.000000e+00
  %118 = load float, float* %19, align 4
  %119 = fadd float %118, 1.000000e+00
  %120 = fmul float %117, %119
  %121 = fadd float %115, %120
  %122 = call float @GL_SQRT(float %121)
  %123 = fmul float 2.000000e+00, %122
  store float %123, float* %16, align 4
  %124 = load float, float* %16, align 4
  %125 = fcmp oeq float %124, 0.000000e+00
  br i1 %125, label %126, label %135

126:                                              ; preds = %62
  %127 = load [4 x float]*, [4 x float]** %12, align 8
  %128 = load i64, i64* %13, align 8
  %129 = getelementptr inbounds [4 x float], [4 x float]* %127, i64 %128
  %130 = getelementptr inbounds [4 x float], [4 x float]* %129, i64 0, i64 0
  store float 5.000000e-01, float* %130, align 4
  %131 = load [4 x float]*, [4 x float]** %12, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds [4 x float], [4 x float]* %131, i64 %132
  %134 = getelementptr inbounds [4 x float], [4 x float]* %133, i64 0, i64 1
  store float 5.000000e-01, float* %134, align 4
  br label %154

135:                                              ; preds = %62
  %136 = load float, float* %16, align 4
  %137 = fdiv float 1.000000e+00, %136
  store float %137, float* %20, align 4
  %138 = load float, float* %17, align 4
  %139 = load float, float* %20, align 4
  %140 = fmul float %138, %139
  %141 = fadd float %140, 5.000000e-01
  %142 = load [4 x float]*, [4 x float]** %12, align 8
  %143 = load i64, i64* %13, align 8
  %144 = getelementptr inbounds [4 x float], [4 x float]* %142, i64 %143
  %145 = getelementptr inbounds [4 x float], [4 x float]* %144, i64 0, i64 0
  store float %141, float* %145, align 4
  %146 = load float, float* %18, align 4
  %147 = load float, float* %20, align 4
  %148 = fmul float %146, %147
  %149 = fadd float %148, 5.000000e-01
  %150 = load [4 x float]*, [4 x float]** %12, align 8
  %151 = load i64, i64* %13, align 8
  %152 = getelementptr inbounds [4 x float], [4 x float]* %150, i64 %151
  %153 = getelementptr inbounds [4 x float], [4 x float]* %152, i64 0, i64 1
  store float %149, float* %153, align 4
  br label %154

154:                                              ; preds = %135, %126
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %13, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %13, align 8
  br label %58

158:                                              ; preds = %58
  br label %595

159:                                              ; preds = %51, %45, %6
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @S_BIT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %314

167:                                              ; preds = %159
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  switch i32 %171, label %310 [
    i32 129, label %172
    i32 130, label %195
    i32 128, label %218
  ]

172:                                              ; preds = %167
  store i64 0, i64* %21, align 8
  br label %173

173:                                              ; preds = %191, %172
  %174 = load i64, i64* %21, align 8
  %175 = load i64, i64* %8, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %194

177:                                              ; preds = %173
  %178 = load [4 x float]*, [4 x float]** %9, align 8
  %179 = load i64, i64* %21, align 8
  %180 = getelementptr inbounds [4 x float], [4 x float]* %178, i64 %179
  %181 = getelementptr inbounds [4 x float], [4 x float]* %180, i64 0, i64 0
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 12
  %185 = load i32, i32* %184, align 4
  %186 = call float @DOT4(float* %181, i32 %185)
  %187 = load [4 x float]*, [4 x float]** %12, align 8
  %188 = load i64, i64* %21, align 8
  %189 = getelementptr inbounds [4 x float], [4 x float]* %187, i64 %188
  %190 = getelementptr inbounds [4 x float], [4 x float]* %189, i64 0, i64 0
  store float %186, float* %190, align 4
  br label %191

191:                                              ; preds = %177
  %192 = load i64, i64* %21, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %21, align 8
  br label %173

194:                                              ; preds = %173
  br label %313

195:                                              ; preds = %167
  store i64 0, i64* %21, align 8
  br label %196

196:                                              ; preds = %214, %195
  %197 = load i64, i64* %21, align 8
  %198 = load i64, i64* %8, align 8
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %196
  %201 = load [4 x float]*, [4 x float]** %10, align 8
  %202 = load i64, i64* %21, align 8
  %203 = getelementptr inbounds [4 x float], [4 x float]* %201, i64 %202
  %204 = getelementptr inbounds [4 x float], [4 x float]* %203, i64 0, i64 0
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 11
  %208 = load i32, i32* %207, align 4
  %209 = call float @DOT4(float* %204, i32 %208)
  %210 = load [4 x float]*, [4 x float]** %12, align 8
  %211 = load i64, i64* %21, align 8
  %212 = getelementptr inbounds [4 x float], [4 x float]* %210, i64 %211
  %213 = getelementptr inbounds [4 x float], [4 x float]* %212, i64 0, i64 0
  store float %209, float* %213, align 4
  br label %214

214:                                              ; preds = %200
  %215 = load i64, i64* %21, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %21, align 8
  br label %196

217:                                              ; preds = %196
  br label %313

218:                                              ; preds = %167
  store i64 0, i64* %21, align 8
  br label %219

219:                                              ; preds = %306, %218
  %220 = load i64, i64* %21, align 8
  %221 = load i64, i64* %8, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %309

223:                                              ; preds = %219
  %224 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %225 = load [4 x float]*, [4 x float]** %10, align 8
  %226 = load i64, i64* %21, align 8
  %227 = getelementptr inbounds [4 x float], [4 x float]* %225, i64 %226
  %228 = getelementptr inbounds [4 x float], [4 x float]* %227, i64 0, i64 0
  %229 = call i32 @COPY_3V(float* %224, float* %228)
  %230 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %231 = call i32 @NORMALIZE_3FV(float* %230)
  %232 = load [3 x float]*, [3 x float]** %11, align 8
  %233 = load i64, i64* %21, align 8
  %234 = getelementptr inbounds [3 x float], [3 x float]* %232, i64 %233
  %235 = getelementptr inbounds [3 x float], [3 x float]* %234, i64 0, i64 0
  %236 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %237 = call double @DOT3(float* %235, float* %236)
  %238 = fmul double 2.000000e+00, %237
  %239 = fptrunc double %238 to float
  store float %239, float* %23, align 4
  %240 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %241 = load float, float* %240, align 4
  %242 = load [3 x float]*, [3 x float]** %11, align 8
  %243 = load i64, i64* %21, align 8
  %244 = getelementptr inbounds [3 x float], [3 x float]* %242, i64 %243
  %245 = getelementptr inbounds [3 x float], [3 x float]* %244, i64 0, i64 0
  %246 = load float, float* %245, align 4
  %247 = load float, float* %23, align 4
  %248 = fmul float %246, %247
  %249 = fsub float %241, %248
  store float %249, float* %25, align 4
  %250 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 1
  %251 = load float, float* %250, align 4
  %252 = load [3 x float]*, [3 x float]** %11, align 8
  %253 = load i64, i64* %21, align 8
  %254 = getelementptr inbounds [3 x float], [3 x float]* %252, i64 %253
  %255 = getelementptr inbounds [3 x float], [3 x float]* %254, i64 0, i64 1
  %256 = load float, float* %255, align 4
  %257 = load float, float* %23, align 4
  %258 = fmul float %256, %257
  %259 = fsub float %251, %258
  store float %259, float* %26, align 4
  %260 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 2
  %261 = load float, float* %260, align 4
  %262 = load [3 x float]*, [3 x float]** %11, align 8
  %263 = load i64, i64* %21, align 8
  %264 = getelementptr inbounds [3 x float], [3 x float]* %262, i64 %263
  %265 = getelementptr inbounds [3 x float], [3 x float]* %264, i64 0, i64 2
  %266 = load float, float* %265, align 4
  %267 = load float, float* %23, align 4
  %268 = fmul float %266, %267
  %269 = fsub float %261, %268
  store float %269, float* %27, align 4
  %270 = load float, float* %25, align 4
  %271 = load float, float* %25, align 4
  %272 = fmul float %270, %271
  %273 = load float, float* %26, align 4
  %274 = load float, float* %26, align 4
  %275 = fmul float %273, %274
  %276 = fadd float %272, %275
  %277 = fpext float %276 to double
  %278 = load float, float* %27, align 4
  %279 = fpext float %278 to double
  %280 = fadd double %279, 1.000000e+00
  %281 = load float, float* %27, align 4
  %282 = fpext float %281 to double
  %283 = fadd double %282, 1.000000e+00
  %284 = fmul double %280, %283
  %285 = fadd double %277, %284
  %286 = fptrunc double %285 to float
  %287 = call float @GL_SQRT(float %286)
  %288 = fmul float 2.000000e+00, %287
  store float %288, float* %24, align 4
  %289 = load float, float* %24, align 4
  %290 = fcmp oeq float %289, 0.000000e+00
  br i1 %290, label %291, label %296

291:                                              ; preds = %223
  %292 = load [4 x float]*, [4 x float]** %12, align 8
  %293 = load i64, i64* %21, align 8
  %294 = getelementptr inbounds [4 x float], [4 x float]* %292, i64 %293
  %295 = getelementptr inbounds [4 x float], [4 x float]* %294, i64 0, i64 0
  store float 5.000000e-01, float* %295, align 4
  br label %305

296:                                              ; preds = %223
  %297 = load float, float* %25, align 4
  %298 = load float, float* %24, align 4
  %299 = fdiv float %297, %298
  %300 = fadd float %299, 5.000000e-01
  %301 = load [4 x float]*, [4 x float]** %12, align 8
  %302 = load i64, i64* %21, align 8
  %303 = getelementptr inbounds [4 x float], [4 x float]* %301, i64 %302
  %304 = getelementptr inbounds [4 x float], [4 x float]* %303, i64 0, i64 0
  store float %300, float* %304, align 4
  br label %305

305:                                              ; preds = %296, %291
  br label %306

306:                                              ; preds = %305
  %307 = load i64, i64* %21, align 8
  %308 = add i64 %307, 1
  store i64 %308, i64* %21, align 8
  br label %219

309:                                              ; preds = %219
  br label %313

310:                                              ; preds = %167
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %312 = call i32 @gl_problem(%struct.TYPE_6__* %311, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %595

313:                                              ; preds = %309, %217, %194
  br label %314

314:                                              ; preds = %313, %159
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @T_BIT, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %469

322:                                              ; preds = %314
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  switch i32 %326, label %465 [
    i32 129, label %327
    i32 130, label %350
    i32 128, label %373
  ]

327:                                              ; preds = %322
  store i64 0, i64* %28, align 8
  br label %328

328:                                              ; preds = %346, %327
  %329 = load i64, i64* %28, align 8
  %330 = load i64, i64* %8, align 8
  %331 = icmp ult i64 %329, %330
  br i1 %331, label %332, label %349

332:                                              ; preds = %328
  %333 = load [4 x float]*, [4 x float]** %9, align 8
  %334 = load i64, i64* %28, align 8
  %335 = getelementptr inbounds [4 x float], [4 x float]* %333, i64 %334
  %336 = getelementptr inbounds [4 x float], [4 x float]* %335, i64 0, i64 0
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 10
  %340 = load i32, i32* %339, align 4
  %341 = call float @DOT4(float* %336, i32 %340)
  %342 = load [4 x float]*, [4 x float]** %12, align 8
  %343 = load i64, i64* %28, align 8
  %344 = getelementptr inbounds [4 x float], [4 x float]* %342, i64 %343
  %345 = getelementptr inbounds [4 x float], [4 x float]* %344, i64 0, i64 1
  store float %341, float* %345, align 4
  br label %346

346:                                              ; preds = %332
  %347 = load i64, i64* %28, align 8
  %348 = add i64 %347, 1
  store i64 %348, i64* %28, align 8
  br label %328

349:                                              ; preds = %328
  br label %468

350:                                              ; preds = %322
  store i64 0, i64* %28, align 8
  br label %351

351:                                              ; preds = %369, %350
  %352 = load i64, i64* %28, align 8
  %353 = load i64, i64* %8, align 8
  %354 = icmp ult i64 %352, %353
  br i1 %354, label %355, label %372

355:                                              ; preds = %351
  %356 = load [4 x float]*, [4 x float]** %10, align 8
  %357 = load i64, i64* %28, align 8
  %358 = getelementptr inbounds [4 x float], [4 x float]* %356, i64 %357
  %359 = getelementptr inbounds [4 x float], [4 x float]* %358, i64 0, i64 0
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 9
  %363 = load i32, i32* %362, align 4
  %364 = call float @DOT4(float* %359, i32 %363)
  %365 = load [4 x float]*, [4 x float]** %12, align 8
  %366 = load i64, i64* %28, align 8
  %367 = getelementptr inbounds [4 x float], [4 x float]* %365, i64 %366
  %368 = getelementptr inbounds [4 x float], [4 x float]* %367, i64 0, i64 1
  store float %364, float* %368, align 4
  br label %369

369:                                              ; preds = %355
  %370 = load i64, i64* %28, align 8
  %371 = add i64 %370, 1
  store i64 %371, i64* %28, align 8
  br label %351

372:                                              ; preds = %351
  br label %468

373:                                              ; preds = %322
  store i64 0, i64* %28, align 8
  br label %374

374:                                              ; preds = %461, %373
  %375 = load i64, i64* %28, align 8
  %376 = load i64, i64* %8, align 8
  %377 = icmp ult i64 %375, %376
  br i1 %377, label %378, label %464

378:                                              ; preds = %374
  %379 = getelementptr inbounds [3 x float], [3 x float]* %29, i64 0, i64 0
  %380 = load [4 x float]*, [4 x float]** %10, align 8
  %381 = load i64, i64* %28, align 8
  %382 = getelementptr inbounds [4 x float], [4 x float]* %380, i64 %381
  %383 = getelementptr inbounds [4 x float], [4 x float]* %382, i64 0, i64 0
  %384 = call i32 @COPY_3V(float* %379, float* %383)
  %385 = getelementptr inbounds [3 x float], [3 x float]* %29, i64 0, i64 0
  %386 = call i32 @NORMALIZE_3FV(float* %385)
  %387 = load [3 x float]*, [3 x float]** %11, align 8
  %388 = load i64, i64* %28, align 8
  %389 = getelementptr inbounds [3 x float], [3 x float]* %387, i64 %388
  %390 = getelementptr inbounds [3 x float], [3 x float]* %389, i64 0, i64 0
  %391 = getelementptr inbounds [3 x float], [3 x float]* %29, i64 0, i64 0
  %392 = call double @DOT3(float* %390, float* %391)
  %393 = fmul double 2.000000e+00, %392
  %394 = fptrunc double %393 to float
  store float %394, float* %30, align 4
  %395 = getelementptr inbounds [3 x float], [3 x float]* %29, i64 0, i64 0
  %396 = load float, float* %395, align 4
  %397 = load [3 x float]*, [3 x float]** %11, align 8
  %398 = load i64, i64* %28, align 8
  %399 = getelementptr inbounds [3 x float], [3 x float]* %397, i64 %398
  %400 = getelementptr inbounds [3 x float], [3 x float]* %399, i64 0, i64 0
  %401 = load float, float* %400, align 4
  %402 = load float, float* %30, align 4
  %403 = fmul float %401, %402
  %404 = fsub float %396, %403
  store float %404, float* %32, align 4
  %405 = getelementptr inbounds [3 x float], [3 x float]* %29, i64 0, i64 1
  %406 = load float, float* %405, align 4
  %407 = load [3 x float]*, [3 x float]** %11, align 8
  %408 = load i64, i64* %28, align 8
  %409 = getelementptr inbounds [3 x float], [3 x float]* %407, i64 %408
  %410 = getelementptr inbounds [3 x float], [3 x float]* %409, i64 0, i64 1
  %411 = load float, float* %410, align 4
  %412 = load float, float* %30, align 4
  %413 = fmul float %411, %412
  %414 = fsub float %406, %413
  store float %414, float* %33, align 4
  %415 = getelementptr inbounds [3 x float], [3 x float]* %29, i64 0, i64 2
  %416 = load float, float* %415, align 4
  %417 = load [3 x float]*, [3 x float]** %11, align 8
  %418 = load i64, i64* %28, align 8
  %419 = getelementptr inbounds [3 x float], [3 x float]* %417, i64 %418
  %420 = getelementptr inbounds [3 x float], [3 x float]* %419, i64 0, i64 2
  %421 = load float, float* %420, align 4
  %422 = load float, float* %30, align 4
  %423 = fmul float %421, %422
  %424 = fsub float %416, %423
  store float %424, float* %34, align 4
  %425 = load float, float* %32, align 4
  %426 = load float, float* %32, align 4
  %427 = fmul float %425, %426
  %428 = load float, float* %33, align 4
  %429 = load float, float* %33, align 4
  %430 = fmul float %428, %429
  %431 = fadd float %427, %430
  %432 = fpext float %431 to double
  %433 = load float, float* %34, align 4
  %434 = fpext float %433 to double
  %435 = fadd double %434, 1.000000e+00
  %436 = load float, float* %34, align 4
  %437 = fpext float %436 to double
  %438 = fadd double %437, 1.000000e+00
  %439 = fmul double %435, %438
  %440 = fadd double %432, %439
  %441 = fptrunc double %440 to float
  %442 = call float @GL_SQRT(float %441)
  %443 = fmul float 2.000000e+00, %442
  store float %443, float* %31, align 4
  %444 = load float, float* %31, align 4
  %445 = fcmp oeq float %444, 0.000000e+00
  br i1 %445, label %446, label %451

446:                                              ; preds = %378
  %447 = load [4 x float]*, [4 x float]** %12, align 8
  %448 = load i64, i64* %28, align 8
  %449 = getelementptr inbounds [4 x float], [4 x float]* %447, i64 %448
  %450 = getelementptr inbounds [4 x float], [4 x float]* %449, i64 0, i64 1
  store float 5.000000e-01, float* %450, align 4
  br label %460

451:                                              ; preds = %378
  %452 = load float, float* %33, align 4
  %453 = load float, float* %31, align 4
  %454 = fdiv float %452, %453
  %455 = fadd float %454, 5.000000e-01
  %456 = load [4 x float]*, [4 x float]** %12, align 8
  %457 = load i64, i64* %28, align 8
  %458 = getelementptr inbounds [4 x float], [4 x float]* %456, i64 %457
  %459 = getelementptr inbounds [4 x float], [4 x float]* %458, i64 0, i64 1
  store float %455, float* %459, align 4
  br label %460

460:                                              ; preds = %451, %446
  br label %461

461:                                              ; preds = %460
  %462 = load i64, i64* %28, align 8
  %463 = add i64 %462, 1
  store i64 %463, i64* %28, align 8
  br label %374

464:                                              ; preds = %374
  br label %468

465:                                              ; preds = %322
  %466 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %467 = call i32 @gl_problem(%struct.TYPE_6__* %466, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %595

468:                                              ; preds = %464, %372, %349
  br label %469

469:                                              ; preds = %468, %314
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @R_BIT, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %532

477:                                              ; preds = %469
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %479, i32 0, i32 3
  %481 = load i32, i32* %480, align 4
  switch i32 %481, label %528 [
    i32 129, label %482
    i32 130, label %505
  ]

482:                                              ; preds = %477
  store i64 0, i64* %35, align 8
  br label %483

483:                                              ; preds = %501, %482
  %484 = load i64, i64* %35, align 8
  %485 = load i64, i64* %8, align 8
  %486 = icmp ult i64 %484, %485
  br i1 %486, label %487, label %504

487:                                              ; preds = %483
  %488 = load [4 x float]*, [4 x float]** %9, align 8
  %489 = load i64, i64* %35, align 8
  %490 = getelementptr inbounds [4 x float], [4 x float]* %488, i64 %489
  %491 = getelementptr inbounds [4 x float], [4 x float]* %490, i64 0, i64 0
  %492 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %493, i32 0, i32 8
  %495 = load i32, i32* %494, align 4
  %496 = call float @DOT4(float* %491, i32 %495)
  %497 = load [4 x float]*, [4 x float]** %12, align 8
  %498 = load i64, i64* %35, align 8
  %499 = getelementptr inbounds [4 x float], [4 x float]* %497, i64 %498
  %500 = getelementptr inbounds [4 x float], [4 x float]* %499, i64 0, i64 2
  store float %496, float* %500, align 4
  br label %501

501:                                              ; preds = %487
  %502 = load i64, i64* %35, align 8
  %503 = add i64 %502, 1
  store i64 %503, i64* %35, align 8
  br label %483

504:                                              ; preds = %483
  br label %531

505:                                              ; preds = %477
  store i64 0, i64* %35, align 8
  br label %506

506:                                              ; preds = %524, %505
  %507 = load i64, i64* %35, align 8
  %508 = load i64, i64* %8, align 8
  %509 = icmp ult i64 %507, %508
  br i1 %509, label %510, label %527

510:                                              ; preds = %506
  %511 = load [4 x float]*, [4 x float]** %10, align 8
  %512 = load i64, i64* %35, align 8
  %513 = getelementptr inbounds [4 x float], [4 x float]* %511, i64 %512
  %514 = getelementptr inbounds [4 x float], [4 x float]* %513, i64 0, i64 0
  %515 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %516, i32 0, i32 7
  %518 = load i32, i32* %517, align 4
  %519 = call float @DOT4(float* %514, i32 %518)
  %520 = load [4 x float]*, [4 x float]** %12, align 8
  %521 = load i64, i64* %35, align 8
  %522 = getelementptr inbounds [4 x float], [4 x float]* %520, i64 %521
  %523 = getelementptr inbounds [4 x float], [4 x float]* %522, i64 0, i64 2
  store float %519, float* %523, align 4
  br label %524

524:                                              ; preds = %510
  %525 = load i64, i64* %35, align 8
  %526 = add i64 %525, 1
  store i64 %526, i64* %35, align 8
  br label %506

527:                                              ; preds = %506
  br label %531

528:                                              ; preds = %477
  %529 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %530 = call i32 @gl_problem(%struct.TYPE_6__* %529, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %595

531:                                              ; preds = %527, %504
  br label %532

532:                                              ; preds = %531, %469
  %533 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %534 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* @Q_BIT, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %595

540:                                              ; preds = %532
  %541 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %542, i32 0, i32 4
  %544 = load i32, i32* %543, align 4
  switch i32 %544, label %591 [
    i32 129, label %545
    i32 130, label %568
  ]

545:                                              ; preds = %540
  store i64 0, i64* %36, align 8
  br label %546

546:                                              ; preds = %564, %545
  %547 = load i64, i64* %36, align 8
  %548 = load i64, i64* %8, align 8
  %549 = icmp ult i64 %547, %548
  br i1 %549, label %550, label %567

550:                                              ; preds = %546
  %551 = load [4 x float]*, [4 x float]** %9, align 8
  %552 = load i64, i64* %36, align 8
  %553 = getelementptr inbounds [4 x float], [4 x float]* %551, i64 %552
  %554 = getelementptr inbounds [4 x float], [4 x float]* %553, i64 0, i64 0
  %555 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %556 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %556, i32 0, i32 6
  %558 = load i32, i32* %557, align 4
  %559 = call float @DOT4(float* %554, i32 %558)
  %560 = load [4 x float]*, [4 x float]** %12, align 8
  %561 = load i64, i64* %36, align 8
  %562 = getelementptr inbounds [4 x float], [4 x float]* %560, i64 %561
  %563 = getelementptr inbounds [4 x float], [4 x float]* %562, i64 0, i64 3
  store float %559, float* %563, align 4
  br label %564

564:                                              ; preds = %550
  %565 = load i64, i64* %36, align 8
  %566 = add i64 %565, 1
  store i64 %566, i64* %36, align 8
  br label %546

567:                                              ; preds = %546
  br label %594

568:                                              ; preds = %540
  store i64 0, i64* %36, align 8
  br label %569

569:                                              ; preds = %587, %568
  %570 = load i64, i64* %36, align 8
  %571 = load i64, i64* %8, align 8
  %572 = icmp ult i64 %570, %571
  br i1 %572, label %573, label %590

573:                                              ; preds = %569
  %574 = load [4 x float]*, [4 x float]** %10, align 8
  %575 = load i64, i64* %36, align 8
  %576 = getelementptr inbounds [4 x float], [4 x float]* %574, i64 %575
  %577 = getelementptr inbounds [4 x float], [4 x float]* %576, i64 0, i64 0
  %578 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %579 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %579, i32 0, i32 5
  %581 = load i32, i32* %580, align 4
  %582 = call float @DOT4(float* %577, i32 %581)
  %583 = load [4 x float]*, [4 x float]** %12, align 8
  %584 = load i64, i64* %36, align 8
  %585 = getelementptr inbounds [4 x float], [4 x float]* %583, i64 %584
  %586 = getelementptr inbounds [4 x float], [4 x float]* %585, i64 0, i64 3
  store float %582, float* %586, align 4
  br label %587

587:                                              ; preds = %573
  %588 = load i64, i64* %36, align 8
  %589 = add i64 %588, 1
  store i64 %589, i64* %36, align 8
  br label %569

590:                                              ; preds = %569
  br label %594

591:                                              ; preds = %540
  %592 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %593 = call i32 @gl_problem(%struct.TYPE_6__* %592, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %595

594:                                              ; preds = %590, %567
  br label %595

595:                                              ; preds = %158, %310, %465, %528, %591, %594, %532
  ret void
}

declare dso_local i32 @COPY_3V(float*, float*) #1

declare dso_local i32 @NORMALIZE_3FV(float*) #1

declare dso_local double @DOT3(float*, float*) #1

declare dso_local float @GL_SQRT(float) #1

declare dso_local float @DOT4(float*, i32) #1

declare dso_local i32 @gl_problem(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
