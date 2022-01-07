; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_triangle.c_feedback_triangle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_triangle.c_feedback_triangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.vertex_buffer* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { double, double, double, double }
%struct.vertex_buffer = type { double**, double**, double**, double**, i64* }

@GL_POLYGON_TOKEN = common dso_local global i64 0, align 8
@GL_FLAT = common dso_local global i64 0, align 8
@DEPTH_SCALE = common dso_local global double 0.000000e+00, align 8
@GL_SMOOTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i64, i64, i64)* @feedback_triangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feedback_triangle(%struct.TYPE_9__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vertex_buffer*, align 8
  %12 = alloca [4 x double], align 16
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca [4 x double], align 16
  %23 = alloca i64, align 8
  %24 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load %struct.vertex_buffer*, %struct.vertex_buffer** %26, align 8
  store %struct.vertex_buffer* %27, %struct.vertex_buffer** %11, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  store double %32, double* %14, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  store double %37, double* %15, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load double, double* %41, align 8
  store double %42, double* %16, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load double, double* %46, align 8
  store double %47, double* %17, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = load i64, i64* @GL_POLYGON_TOKEN, align 8
  %50 = sitofp i64 %49 to double
  %51 = call i32 @FEEDBACK_TOKEN(%struct.TYPE_9__* %48, double %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = call i32 @FEEDBACK_TOKEN(%struct.TYPE_9__* %52, double 3.000000e+00)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @GL_FLAT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %5
  %61 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %62 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %61, i32 0, i32 0
  %63 = load double**, double*** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds double*, double** %63, i64 %64
  %66 = load double*, double** %65, align 8
  %67 = getelementptr inbounds double, double* %66, i64 0
  %68 = load double, double* %67, align 8
  %69 = load double, double* %14, align 8
  %70 = fmul double %68, %69
  %71 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  store double %70, double* %71, align 16
  %72 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %73 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %72, i32 0, i32 0
  %74 = load double**, double*** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds double*, double** %74, i64 %75
  %77 = load double*, double** %76, align 8
  %78 = getelementptr inbounds double, double* %77, i64 1
  %79 = load double, double* %78, align 8
  %80 = load double, double* %15, align 8
  %81 = fmul double %79, %80
  %82 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 1
  store double %81, double* %82, align 8
  %83 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %84 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %83, i32 0, i32 0
  %85 = load double**, double*** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds double*, double** %85, i64 %86
  %88 = load double*, double** %87, align 8
  %89 = getelementptr inbounds double, double* %88, i64 2
  %90 = load double, double* %89, align 8
  %91 = load double, double* %16, align 8
  %92 = fmul double %90, %91
  %93 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  store double %92, double* %93, align 16
  %94 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %95 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %94, i32 0, i32 0
  %96 = load double**, double*** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds double*, double** %96, i64 %97
  %99 = load double*, double** %98, align 8
  %100 = getelementptr inbounds double, double* %99, i64 3
  %101 = load double, double* %100, align 8
  %102 = load double, double* %17, align 8
  %103 = fmul double %101, %102
  %104 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  store double %103, double* %104, align 8
  br label %105

105:                                              ; preds = %60, %5
  store i64 0, i64* %13, align 8
  br label %106

106:                                              ; preds = %288, %105
  %107 = load i64, i64* %13, align 8
  %108 = icmp ult i64 %107, 3
  br i1 %108, label %109, label %291

109:                                              ; preds = %106
  %110 = load i64, i64* %13, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64, i64* %7, align 8
  store i64 %113, i64* %23, align 8
  br label %122

114:                                              ; preds = %109
  %115 = load i64, i64* %13, align 8
  %116 = icmp eq i64 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i64, i64* %8, align 8
  store i64 %118, i64* %23, align 8
  br label %121

119:                                              ; preds = %114
  %120 = load i64, i64* %9, align 8
  store i64 %120, i64* %23, align 8
  br label %121

121:                                              ; preds = %119, %117
  br label %122

122:                                              ; preds = %121, %112
  %123 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %124 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %123, i32 0, i32 1
  %125 = load double**, double*** %124, align 8
  %126 = load i64, i64* %23, align 8
  %127 = getelementptr inbounds double*, double** %125, i64 %126
  %128 = load double*, double** %127, align 8
  %129 = getelementptr inbounds double, double* %128, i64 0
  %130 = load double, double* %129, align 8
  store double %130, double* %18, align 8
  %131 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %132 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %131, i32 0, i32 1
  %133 = load double**, double*** %132, align 8
  %134 = load i64, i64* %23, align 8
  %135 = getelementptr inbounds double*, double** %133, i64 %134
  %136 = load double*, double** %135, align 8
  %137 = getelementptr inbounds double, double* %136, i64 1
  %138 = load double, double* %137, align 8
  store double %138, double* %19, align 8
  %139 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %140 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %139, i32 0, i32 1
  %141 = load double**, double*** %140, align 8
  %142 = load i64, i64* %23, align 8
  %143 = getelementptr inbounds double*, double** %141, i64 %142
  %144 = load double*, double** %143, align 8
  %145 = getelementptr inbounds double, double* %144, i64 2
  %146 = load double, double* %145, align 8
  %147 = load double, double* @DEPTH_SCALE, align 8
  %148 = fdiv double %146, %147
  store double %148, double* %20, align 8
  %149 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %150 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %149, i32 0, i32 2
  %151 = load double**, double*** %150, align 8
  %152 = load i64, i64* %23, align 8
  %153 = getelementptr inbounds double*, double** %151, i64 %152
  %154 = load double*, double** %153, align 8
  %155 = getelementptr inbounds double, double* %154, i64 3
  %156 = load double, double* %155, align 8
  store double %156, double* %21, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @GL_SMOOTH, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %208

163:                                              ; preds = %122
  %164 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %165 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %164, i32 0, i32 0
  %166 = load double**, double*** %165, align 8
  %167 = load i64, i64* %23, align 8
  %168 = getelementptr inbounds double*, double** %166, i64 %167
  %169 = load double*, double** %168, align 8
  %170 = getelementptr inbounds double, double* %169, i64 0
  %171 = load double, double* %170, align 8
  %172 = load double, double* %14, align 8
  %173 = fmul double %171, %172
  %174 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  store double %173, double* %174, align 16
  %175 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %176 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %175, i32 0, i32 0
  %177 = load double**, double*** %176, align 8
  %178 = load i64, i64* %23, align 8
  %179 = getelementptr inbounds double*, double** %177, i64 %178
  %180 = load double*, double** %179, align 8
  %181 = getelementptr inbounds double, double* %180, i64 1
  %182 = load double, double* %181, align 8
  %183 = load double, double* %15, align 8
  %184 = fmul double %182, %183
  %185 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 1
  store double %184, double* %185, align 8
  %186 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %187 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %186, i32 0, i32 0
  %188 = load double**, double*** %187, align 8
  %189 = load i64, i64* %23, align 8
  %190 = getelementptr inbounds double*, double** %188, i64 %189
  %191 = load double*, double** %190, align 8
  %192 = getelementptr inbounds double, double* %191, i64 2
  %193 = load double, double* %192, align 8
  %194 = load double, double* %16, align 8
  %195 = fmul double %193, %194
  %196 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  store double %195, double* %196, align 16
  %197 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %198 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %197, i32 0, i32 0
  %199 = load double**, double*** %198, align 8
  %200 = load i64, i64* %23, align 8
  %201 = getelementptr inbounds double*, double** %199, i64 %200
  %202 = load double*, double** %201, align 8
  %203 = getelementptr inbounds double, double* %202, i64 3
  %204 = load double, double* %203, align 8
  %205 = load double, double* %17, align 8
  %206 = fmul double %204, %205
  %207 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  store double %206, double* %207, align 8
  br label %208

208:                                              ; preds = %163, %122
  %209 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %210 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %209, i32 0, i32 3
  %211 = load double**, double*** %210, align 8
  %212 = load i64, i64* %23, align 8
  %213 = getelementptr inbounds double*, double** %211, i64 %212
  %214 = load double*, double** %213, align 8
  %215 = getelementptr inbounds double, double* %214, i64 3
  %216 = load double, double* %215, align 8
  %217 = fcmp oeq double %216, 0.000000e+00
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  br label %229

219:                                              ; preds = %208
  %220 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %221 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %220, i32 0, i32 3
  %222 = load double**, double*** %221, align 8
  %223 = load i64, i64* %23, align 8
  %224 = getelementptr inbounds double*, double** %222, i64 %223
  %225 = load double*, double** %224, align 8
  %226 = getelementptr inbounds double, double* %225, i64 3
  %227 = load double, double* %226, align 8
  %228 = fdiv double 1.000000e+00, %227
  br label %229

229:                                              ; preds = %219, %218
  %230 = phi double [ 1.000000e+00, %218 ], [ %228, %219 ]
  store double %230, double* %24, align 8
  %231 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %232 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %231, i32 0, i32 3
  %233 = load double**, double*** %232, align 8
  %234 = load i64, i64* %23, align 8
  %235 = getelementptr inbounds double*, double** %233, i64 %234
  %236 = load double*, double** %235, align 8
  %237 = getelementptr inbounds double, double* %236, i64 0
  %238 = load double, double* %237, align 8
  %239 = load double, double* %24, align 8
  %240 = fmul double %238, %239
  %241 = getelementptr inbounds [4 x double], [4 x double]* %22, i64 0, i64 0
  store double %240, double* %241, align 16
  %242 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %243 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %242, i32 0, i32 3
  %244 = load double**, double*** %243, align 8
  %245 = load i64, i64* %23, align 8
  %246 = getelementptr inbounds double*, double** %244, i64 %245
  %247 = load double*, double** %246, align 8
  %248 = getelementptr inbounds double, double* %247, i64 1
  %249 = load double, double* %248, align 8
  %250 = load double, double* %24, align 8
  %251 = fmul double %249, %250
  %252 = getelementptr inbounds [4 x double], [4 x double]* %22, i64 0, i64 1
  store double %251, double* %252, align 8
  %253 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %254 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %253, i32 0, i32 3
  %255 = load double**, double*** %254, align 8
  %256 = load i64, i64* %23, align 8
  %257 = getelementptr inbounds double*, double** %255, i64 %256
  %258 = load double*, double** %257, align 8
  %259 = getelementptr inbounds double, double* %258, i64 2
  %260 = load double, double* %259, align 8
  %261 = load double, double* %24, align 8
  %262 = fmul double %260, %261
  %263 = getelementptr inbounds [4 x double], [4 x double]* %22, i64 0, i64 2
  store double %262, double* %263, align 16
  %264 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %265 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %264, i32 0, i32 3
  %266 = load double**, double*** %265, align 8
  %267 = load i64, i64* %23, align 8
  %268 = getelementptr inbounds double*, double** %266, i64 %267
  %269 = load double*, double** %268, align 8
  %270 = getelementptr inbounds double, double* %269, i64 3
  %271 = load double, double* %270, align 8
  %272 = getelementptr inbounds [4 x double], [4 x double]* %22, i64 0, i64 3
  store double %271, double* %272, align 8
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %274 = load double, double* %18, align 8
  %275 = load double, double* %19, align 8
  %276 = load double, double* %20, align 8
  %277 = load double, double* %21, align 8
  %278 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %279 = load %struct.vertex_buffer*, %struct.vertex_buffer** %11, align 8
  %280 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %279, i32 0, i32 4
  %281 = load i64*, i64** %280, align 8
  %282 = load i64, i64* %23, align 8
  %283 = getelementptr inbounds i64, i64* %281, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = sitofp i64 %284 to double
  %286 = getelementptr inbounds [4 x double], [4 x double]* %22, i64 0, i64 0
  %287 = call i32 @gl_feedback_vertex(%struct.TYPE_9__* %273, double %274, double %275, double %276, double %277, double* %278, double %285, double* %286)
  br label %288

288:                                              ; preds = %229
  %289 = load i64, i64* %13, align 8
  %290 = add i64 %289, 1
  store i64 %290, i64* %13, align 8
  br label %106

291:                                              ; preds = %106
  ret void
}

declare dso_local i32 @FEEDBACK_TOKEN(%struct.TYPE_9__*, double) #1

declare dso_local i32 @gl_feedback_vertex(%struct.TYPE_9__*, double, double, double, double, double*, double, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
