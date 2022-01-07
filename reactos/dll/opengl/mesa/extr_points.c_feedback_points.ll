; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_points.c_feedback_points.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_points.c_feedback_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.vertex_buffer* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { float, float, float, float }
%struct.vertex_buffer = type { i64*, float**, float**, float**, float**, i64* }

@DEPTH_SCALE = common dso_local global float 0.000000e+00, align 4
@GL_SMOOTH = common dso_local global i64 0, align 8
@GL_POINT_TOKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i64)* @feedback_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feedback_points(%struct.TYPE_9__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vertex_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca [4 x float], align 16
  %19 = alloca [4 x float], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load %struct.vertex_buffer*, %struct.vertex_buffer** %21, align 8
  store %struct.vertex_buffer* %22, %struct.vertex_buffer** %7, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  store float %27, float* %9, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load float, float* %31, align 4
  store float %32, float* %10, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load float, float* %36, align 4
  store float %37, float* %11, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load float, float* %41, align 4
  store float %42, float* %12, align 4
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %263, %3
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %266

48:                                               ; preds = %44
  %49 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %50 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %262

56:                                               ; preds = %48
  %57 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %57, i32 0, i32 1
  %59 = load float**, float*** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds float*, float** %59, i64 %60
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 0
  %64 = load float, float* %63, align 4
  store float %64, float* %13, align 4
  %65 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %66 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %65, i32 0, i32 1
  %67 = load float**, float*** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds float*, float** %67, i64 %68
  %70 = load float*, float** %69, align 8
  %71 = getelementptr inbounds float, float* %70, i64 1
  %72 = load float, float* %71, align 4
  store float %72, float* %14, align 4
  %73 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %74 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %73, i32 0, i32 1
  %75 = load float**, float*** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds float*, float** %75, i64 %76
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 2
  %80 = load float, float* %79, align 4
  %81 = load float, float* @DEPTH_SCALE, align 4
  %82 = fdiv float %80, %81
  store float %82, float* %15, align 4
  %83 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %84 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %83, i32 0, i32 2
  %85 = load float**, float*** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds float*, float** %85, i64 %86
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 3
  %90 = load float, float* %89, align 4
  store float %90, float* %16, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @GL_SMOOTH, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %146

97:                                               ; preds = %56
  %98 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %99 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %98, i32 0, i32 3
  %100 = load float**, float*** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds float*, float** %100, i64 %101
  %103 = load float*, float** %102, align 8
  %104 = getelementptr inbounds float, float* %103, i64 0
  %105 = load float, float* %104, align 4
  %106 = call float @FixedToFloat(float %105)
  %107 = load float, float* %9, align 4
  %108 = fmul float %106, %107
  %109 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 0
  store float %108, float* %109, align 16
  %110 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %111 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %110, i32 0, i32 3
  %112 = load float**, float*** %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds float*, float** %112, i64 %113
  %115 = load float*, float** %114, align 8
  %116 = getelementptr inbounds float, float* %115, i64 1
  %117 = load float, float* %116, align 4
  %118 = call float @FixedToFloat(float %117)
  %119 = load float, float* %10, align 4
  %120 = fmul float %118, %119
  %121 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 1
  store float %120, float* %121, align 4
  %122 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %123 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %122, i32 0, i32 3
  %124 = load float**, float*** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds float*, float** %124, i64 %125
  %127 = load float*, float** %126, align 8
  %128 = getelementptr inbounds float, float* %127, i64 2
  %129 = load float, float* %128, align 4
  %130 = call float @FixedToFloat(float %129)
  %131 = load float, float* %11, align 4
  %132 = fmul float %130, %131
  %133 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 2
  store float %132, float* %133, align 8
  %134 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %135 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %134, i32 0, i32 3
  %136 = load float**, float*** %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds float*, float** %136, i64 %137
  %139 = load float*, float** %138, align 8
  %140 = getelementptr inbounds float, float* %139, i64 3
  %141 = load float, float* %140, align 4
  %142 = call float @FixedToFloat(float %141)
  %143 = load float, float* %12, align 4
  %144 = fmul float %142, %143
  %145 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 3
  store float %144, float* %145, align 4
  br label %191

146:                                              ; preds = %56
  %147 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %148 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %147, i32 0, i32 3
  %149 = load float**, float*** %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds float*, float** %149, i64 %150
  %152 = load float*, float** %151, align 8
  %153 = getelementptr inbounds float, float* %152, i64 0
  %154 = load float, float* %153, align 4
  %155 = load float, float* %9, align 4
  %156 = fmul float %154, %155
  %157 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 0
  store float %156, float* %157, align 16
  %158 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %159 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %158, i32 0, i32 3
  %160 = load float**, float*** %159, align 8
  %161 = load i64, i64* %8, align 8
  %162 = getelementptr inbounds float*, float** %160, i64 %161
  %163 = load float*, float** %162, align 8
  %164 = getelementptr inbounds float, float* %163, i64 1
  %165 = load float, float* %164, align 4
  %166 = load float, float* %10, align 4
  %167 = fmul float %165, %166
  %168 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 1
  store float %167, float* %168, align 4
  %169 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %170 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %169, i32 0, i32 3
  %171 = load float**, float*** %170, align 8
  %172 = load i64, i64* %8, align 8
  %173 = getelementptr inbounds float*, float** %171, i64 %172
  %174 = load float*, float** %173, align 8
  %175 = getelementptr inbounds float, float* %174, i64 2
  %176 = load float, float* %175, align 4
  %177 = load float, float* %11, align 4
  %178 = fmul float %176, %177
  %179 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 2
  store float %178, float* %179, align 8
  %180 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %181 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %180, i32 0, i32 3
  %182 = load float**, float*** %181, align 8
  %183 = load i64, i64* %8, align 8
  %184 = getelementptr inbounds float*, float** %182, i64 %183
  %185 = load float*, float** %184, align 8
  %186 = getelementptr inbounds float, float* %185, i64 3
  %187 = load float, float* %186, align 4
  %188 = load float, float* %12, align 4
  %189 = fmul float %187, %188
  %190 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 3
  store float %189, float* %190, align 4
  br label %191

191:                                              ; preds = %146, %97
  %192 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %193 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %192, i32 0, i32 4
  %194 = load float**, float*** %193, align 8
  %195 = load i64, i64* %8, align 8
  %196 = getelementptr inbounds float*, float** %194, i64 %195
  %197 = load float*, float** %196, align 8
  %198 = getelementptr inbounds float, float* %197, i64 3
  %199 = load float, float* %198, align 4
  %200 = fdiv float 1.000000e+00, %199
  store float %200, float* %17, align 4
  %201 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %202 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %201, i32 0, i32 4
  %203 = load float**, float*** %202, align 8
  %204 = load i64, i64* %8, align 8
  %205 = getelementptr inbounds float*, float** %203, i64 %204
  %206 = load float*, float** %205, align 8
  %207 = getelementptr inbounds float, float* %206, i64 0
  %208 = load float, float* %207, align 4
  %209 = load float, float* %17, align 4
  %210 = fmul float %208, %209
  %211 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 0
  store float %210, float* %211, align 16
  %212 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %213 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %212, i32 0, i32 4
  %214 = load float**, float*** %213, align 8
  %215 = load i64, i64* %8, align 8
  %216 = getelementptr inbounds float*, float** %214, i64 %215
  %217 = load float*, float** %216, align 8
  %218 = getelementptr inbounds float, float* %217, i64 1
  %219 = load float, float* %218, align 4
  %220 = load float, float* %17, align 4
  %221 = fmul float %219, %220
  %222 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 1
  store float %221, float* %222, align 4
  %223 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %224 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %223, i32 0, i32 4
  %225 = load float**, float*** %224, align 8
  %226 = load i64, i64* %8, align 8
  %227 = getelementptr inbounds float*, float** %225, i64 %226
  %228 = load float*, float** %227, align 8
  %229 = getelementptr inbounds float, float* %228, i64 2
  %230 = load float, float* %229, align 4
  %231 = load float, float* %17, align 4
  %232 = fmul float %230, %231
  %233 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 2
  store float %232, float* %233, align 8
  %234 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %235 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %234, i32 0, i32 4
  %236 = load float**, float*** %235, align 8
  %237 = load i64, i64* %8, align 8
  %238 = getelementptr inbounds float*, float** %236, i64 %237
  %239 = load float*, float** %238, align 8
  %240 = getelementptr inbounds float, float* %239, i64 3
  %241 = load float, float* %240, align 4
  %242 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 3
  store float %241, float* %242, align 4
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %244 = load i64, i64* @GL_POINT_TOKEN, align 8
  %245 = sitofp i64 %244 to float
  %246 = call i32 @FEEDBACK_TOKEN(%struct.TYPE_9__* %243, float %245)
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %248 = load float, float* %13, align 4
  %249 = load float, float* %14, align 4
  %250 = load float, float* %15, align 4
  %251 = load float, float* %16, align 4
  %252 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 0
  %253 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %254 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %253, i32 0, i32 5
  %255 = load i64*, i64** %254, align 8
  %256 = load i64, i64* %8, align 8
  %257 = getelementptr inbounds i64, i64* %255, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = sitofp i64 %258 to float
  %260 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 0
  %261 = call i32 @gl_feedback_vertex(%struct.TYPE_9__* %247, float %248, float %249, float %250, float %251, float* %252, float %259, float* %260)
  br label %262

262:                                              ; preds = %191, %48
  br label %263

263:                                              ; preds = %262
  %264 = load i64, i64* %8, align 8
  %265 = add i64 %264, 1
  store i64 %265, i64* %8, align 8
  br label %44

266:                                              ; preds = %44
  ret void
}

declare dso_local float @FixedToFloat(float) #1

declare dso_local i32 @FEEDBACK_TOKEN(%struct.TYPE_9__*, float) #1

declare dso_local i32 @gl_feedback_vertex(%struct.TYPE_9__*, float, float, float, float, float*, float, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
