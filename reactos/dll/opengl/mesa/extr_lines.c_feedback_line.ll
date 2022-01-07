; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_lines.c_feedback_line.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_lines.c_feedback_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, %struct.vertex_buffer* }
%struct.TYPE_6__ = type { double, double, double, double }
%struct.vertex_buffer = type { double**, double**, double**, i64*, i64** }

@DEPTH_SCALE = common dso_local global double 0.000000e+00, align 8
@GL_LINE_RESET_TOKEN = common dso_local global i64 0, align 8
@GL_LINE_TOKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i64, i64)* @feedback_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feedback_line(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vertex_buffer*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca [4 x double], align 16
  %19 = alloca [4 x double], align 16
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca [4 x double], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.vertex_buffer*, %struct.vertex_buffer** %27, align 8
  store %struct.vertex_buffer* %28, %struct.vertex_buffer** %9, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  store double %33, double* %21, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  store double %38, double* %22, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load double, double* %42, align 8
  store double %43, double* %23, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load double, double* %47, align 8
  store double %48, double* %24, align 8
  %49 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %50 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %49, i32 0, i32 0
  %51 = load double**, double*** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds double*, double** %51, i64 %52
  %54 = load double*, double** %53, align 8
  %55 = getelementptr inbounds double, double* %54, i64 0
  %56 = load double, double* %55, align 8
  store double %56, double* %10, align 8
  %57 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %58 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %57, i32 0, i32 0
  %59 = load double**, double*** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds double*, double** %59, i64 %60
  %62 = load double*, double** %61, align 8
  %63 = getelementptr inbounds double, double* %62, i64 1
  %64 = load double, double* %63, align 8
  store double %64, double* %11, align 8
  %65 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %66 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %65, i32 0, i32 0
  %67 = load double**, double*** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds double*, double** %67, i64 %68
  %70 = load double*, double** %69, align 8
  %71 = getelementptr inbounds double, double* %70, i64 2
  %72 = load double, double* %71, align 8
  %73 = load double, double* @DEPTH_SCALE, align 8
  %74 = fdiv double %72, %73
  store double %74, double* %12, align 8
  %75 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %76 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %75, i32 0, i32 1
  %77 = load double**, double*** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds double*, double** %77, i64 %78
  %80 = load double*, double** %79, align 8
  %81 = getelementptr inbounds double, double* %80, i64 3
  %82 = load double, double* %81, align 8
  store double %82, double* %13, align 8
  %83 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %84 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %83, i32 0, i32 0
  %85 = load double**, double*** %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds double*, double** %85, i64 %86
  %88 = load double*, double** %87, align 8
  %89 = getelementptr inbounds double, double* %88, i64 0
  %90 = load double, double* %89, align 8
  store double %90, double* %14, align 8
  %91 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %92 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %91, i32 0, i32 0
  %93 = load double**, double*** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds double*, double** %93, i64 %94
  %96 = load double*, double** %95, align 8
  %97 = getelementptr inbounds double, double* %96, i64 1
  %98 = load double, double* %97, align 8
  store double %98, double* %15, align 8
  %99 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %100 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %99, i32 0, i32 0
  %101 = load double**, double*** %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds double*, double** %101, i64 %102
  %104 = load double*, double** %103, align 8
  %105 = getelementptr inbounds double, double* %104, i64 2
  %106 = load double, double* %105, align 8
  %107 = load double, double* @DEPTH_SCALE, align 8
  %108 = fdiv double %106, %107
  store double %108, double* %16, align 8
  %109 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %110 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %109, i32 0, i32 1
  %111 = load double**, double*** %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds double*, double** %111, i64 %112
  %114 = load double*, double** %113, align 8
  %115 = getelementptr inbounds double, double* %114, i64 3
  %116 = load double, double* %115, align 8
  store double %116, double* %17, align 8
  %117 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %118 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %117, i32 0, i32 2
  %119 = load double**, double*** %118, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds double*, double** %119, i64 %120
  %122 = load double*, double** %121, align 8
  %123 = getelementptr inbounds double, double* %122, i64 3
  %124 = load double, double* %123, align 8
  %125 = fcmp oeq double %124, 0.000000e+00
  br i1 %125, label %126, label %127

126:                                              ; preds = %4
  br label %137

127:                                              ; preds = %4
  %128 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %129 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %128, i32 0, i32 2
  %130 = load double**, double*** %129, align 8
  %131 = load i64, i64* %6, align 8
  %132 = getelementptr inbounds double*, double** %130, i64 %131
  %133 = load double*, double** %132, align 8
  %134 = getelementptr inbounds double, double* %133, i64 3
  %135 = load double, double* %134, align 8
  %136 = fdiv double 1.000000e+00, %135
  br label %137

137:                                              ; preds = %127, %126
  %138 = phi double [ 1.000000e+00, %126 ], [ %136, %127 ]
  store double %138, double* %20, align 8
  %139 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %140 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %139, i32 0, i32 2
  %141 = load double**, double*** %140, align 8
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds double*, double** %141, i64 %142
  %144 = load double*, double** %143, align 8
  %145 = getelementptr inbounds double, double* %144, i64 0
  %146 = load double, double* %145, align 8
  %147 = load double, double* %20, align 8
  %148 = fmul double %146, %147
  %149 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 0
  store double %148, double* %149, align 16
  %150 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %151 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %150, i32 0, i32 2
  %152 = load double**, double*** %151, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds double*, double** %152, i64 %153
  %155 = load double*, double** %154, align 8
  %156 = getelementptr inbounds double, double* %155, i64 1
  %157 = load double, double* %156, align 8
  %158 = load double, double* %20, align 8
  %159 = fmul double %157, %158
  %160 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 1
  store double %159, double* %160, align 8
  %161 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %162 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %161, i32 0, i32 2
  %163 = load double**, double*** %162, align 8
  %164 = load i64, i64* %6, align 8
  %165 = getelementptr inbounds double*, double** %163, i64 %164
  %166 = load double*, double** %165, align 8
  %167 = getelementptr inbounds double, double* %166, i64 2
  %168 = load double, double* %167, align 8
  %169 = load double, double* %20, align 8
  %170 = fmul double %168, %169
  %171 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 2
  store double %170, double* %171, align 16
  %172 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %173 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %172, i32 0, i32 2
  %174 = load double**, double*** %173, align 8
  %175 = load i64, i64* %6, align 8
  %176 = getelementptr inbounds double*, double** %174, i64 %175
  %177 = load double*, double** %176, align 8
  %178 = getelementptr inbounds double, double* %177, i64 3
  %179 = load double, double* %178, align 8
  %180 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 3
  store double %179, double* %180, align 8
  %181 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %182 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %181, i32 0, i32 2
  %183 = load double**, double*** %182, align 8
  %184 = load i64, i64* %7, align 8
  %185 = getelementptr inbounds double*, double** %183, i64 %184
  %186 = load double*, double** %185, align 8
  %187 = getelementptr inbounds double, double* %186, i64 3
  %188 = load double, double* %187, align 8
  %189 = fcmp oeq double %188, 0.000000e+00
  br i1 %189, label %190, label %191

190:                                              ; preds = %137
  br label %201

191:                                              ; preds = %137
  %192 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %193 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %192, i32 0, i32 2
  %194 = load double**, double*** %193, align 8
  %195 = load i64, i64* %7, align 8
  %196 = getelementptr inbounds double*, double** %194, i64 %195
  %197 = load double*, double** %196, align 8
  %198 = getelementptr inbounds double, double* %197, i64 3
  %199 = load double, double* %198, align 8
  %200 = fdiv double 1.000000e+00, %199
  br label %201

201:                                              ; preds = %191, %190
  %202 = phi double [ 1.000000e+00, %190 ], [ %200, %191 ]
  store double %202, double* %20, align 8
  %203 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %204 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %203, i32 0, i32 2
  %205 = load double**, double*** %204, align 8
  %206 = load i64, i64* %7, align 8
  %207 = getelementptr inbounds double*, double** %205, i64 %206
  %208 = load double*, double** %207, align 8
  %209 = getelementptr inbounds double, double* %208, i64 0
  %210 = load double, double* %209, align 8
  %211 = load double, double* %20, align 8
  %212 = fmul double %210, %211
  %213 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 0
  store double %212, double* %213, align 16
  %214 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %215 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %214, i32 0, i32 2
  %216 = load double**, double*** %215, align 8
  %217 = load i64, i64* %7, align 8
  %218 = getelementptr inbounds double*, double** %216, i64 %217
  %219 = load double*, double** %218, align 8
  %220 = getelementptr inbounds double, double* %219, i64 1
  %221 = load double, double* %220, align 8
  %222 = load double, double* %20, align 8
  %223 = fmul double %221, %222
  %224 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 1
  store double %223, double* %224, align 8
  %225 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %226 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %225, i32 0, i32 2
  %227 = load double**, double*** %226, align 8
  %228 = load i64, i64* %7, align 8
  %229 = getelementptr inbounds double*, double** %227, i64 %228
  %230 = load double*, double** %229, align 8
  %231 = getelementptr inbounds double, double* %230, i64 2
  %232 = load double, double* %231, align 8
  %233 = load double, double* %20, align 8
  %234 = fmul double %232, %233
  %235 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 2
  store double %234, double* %235, align 16
  %236 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %237 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %236, i32 0, i32 2
  %238 = load double**, double*** %237, align 8
  %239 = load i64, i64* %7, align 8
  %240 = getelementptr inbounds double*, double** %238, i64 %239
  %241 = load double*, double** %240, align 8
  %242 = getelementptr inbounds double, double* %241, i64 3
  %243 = load double, double* %242, align 8
  %244 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 3
  store double %243, double* %244, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %201
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %251 = load i64, i64* @GL_LINE_RESET_TOKEN, align 8
  %252 = sitofp i64 %251 to double
  %253 = call i32 @FEEDBACK_TOKEN(%struct.TYPE_7__* %250, double %252)
  br label %259

254:                                              ; preds = %201
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %256 = load i64, i64* @GL_LINE_TOKEN, align 8
  %257 = sitofp i64 %256 to double
  %258 = call i32 @FEEDBACK_TOKEN(%struct.TYPE_7__* %255, double %257)
  br label %259

259:                                              ; preds = %254, %249
  %260 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %261 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %260, i32 0, i32 4
  %262 = load i64**, i64*** %261, align 8
  %263 = load i64, i64* %8, align 8
  %264 = getelementptr inbounds i64*, i64** %262, i64 %263
  %265 = load i64*, i64** %264, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 0
  %267 = load i64, i64* %266, align 8
  %268 = sitofp i64 %267 to double
  %269 = load double, double* %21, align 8
  %270 = fmul double %268, %269
  %271 = getelementptr inbounds [4 x double], [4 x double]* %25, i64 0, i64 0
  store double %270, double* %271, align 16
  %272 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %273 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %272, i32 0, i32 4
  %274 = load i64**, i64*** %273, align 8
  %275 = load i64, i64* %8, align 8
  %276 = getelementptr inbounds i64*, i64** %274, i64 %275
  %277 = load i64*, i64** %276, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 1
  %279 = load i64, i64* %278, align 8
  %280 = sitofp i64 %279 to double
  %281 = load double, double* %22, align 8
  %282 = fmul double %280, %281
  %283 = getelementptr inbounds [4 x double], [4 x double]* %25, i64 0, i64 1
  store double %282, double* %283, align 8
  %284 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %285 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %284, i32 0, i32 4
  %286 = load i64**, i64*** %285, align 8
  %287 = load i64, i64* %8, align 8
  %288 = getelementptr inbounds i64*, i64** %286, i64 %287
  %289 = load i64*, i64** %288, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 2
  %291 = load i64, i64* %290, align 8
  %292 = sitofp i64 %291 to double
  %293 = load double, double* %23, align 8
  %294 = fmul double %292, %293
  %295 = getelementptr inbounds [4 x double], [4 x double]* %25, i64 0, i64 2
  store double %294, double* %295, align 16
  %296 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %297 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %296, i32 0, i32 4
  %298 = load i64**, i64*** %297, align 8
  %299 = load i64, i64* %8, align 8
  %300 = getelementptr inbounds i64*, i64** %298, i64 %299
  %301 = load i64*, i64** %300, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 3
  %303 = load i64, i64* %302, align 8
  %304 = sitofp i64 %303 to double
  %305 = load double, double* %24, align 8
  %306 = fmul double %304, %305
  %307 = getelementptr inbounds [4 x double], [4 x double]* %25, i64 0, i64 3
  store double %306, double* %307, align 8
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %309 = load double, double* %10, align 8
  %310 = load double, double* %11, align 8
  %311 = load double, double* %12, align 8
  %312 = load double, double* %13, align 8
  %313 = getelementptr inbounds [4 x double], [4 x double]* %25, i64 0, i64 0
  %314 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %315 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %314, i32 0, i32 3
  %316 = load i64*, i64** %315, align 8
  %317 = load i64, i64* %8, align 8
  %318 = getelementptr inbounds i64, i64* %316, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = sitofp i64 %319 to double
  %321 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 0, i64 0
  %322 = call i32 @gl_feedback_vertex(%struct.TYPE_7__* %308, double %309, double %310, double %311, double %312, double* %313, double %320, double* %321)
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %324 = load double, double* %14, align 8
  %325 = load double, double* %15, align 8
  %326 = load double, double* %16, align 8
  %327 = load double, double* %17, align 8
  %328 = getelementptr inbounds [4 x double], [4 x double]* %25, i64 0, i64 0
  %329 = load %struct.vertex_buffer*, %struct.vertex_buffer** %9, align 8
  %330 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %329, i32 0, i32 3
  %331 = load i64*, i64** %330, align 8
  %332 = load i64, i64* %8, align 8
  %333 = getelementptr inbounds i64, i64* %331, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = sitofp i64 %334 to double
  %336 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 0
  %337 = call i32 @gl_feedback_vertex(%struct.TYPE_7__* %323, double %324, double %325, double %326, double %327, double* %328, double %335, double* %336)
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = add nsw i64 %340, 1
  store i64 %341, i64* %339, align 8
  ret void
}

declare dso_local i32 @FEEDBACK_TOKEN(%struct.TYPE_7__*, double) #1

declare dso_local i32 @gl_feedback_vertex(%struct.TYPE_7__*, double, double, double, double, double*, double, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
