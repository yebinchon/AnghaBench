; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_drawpix.c_drawpixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_drawpix.c_drawpixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { float*, float*, i32*, i64, i32 }
%struct.TYPE_14__ = type { float, float, float, float }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glDrawPixels\00", align 1
@GL_RENDER = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@GL_FEEDBACK = common dso_local global i64 0, align 8
@GL_DRAW_PIXEL_TOKEN = common dso_local global i64 0, align 8
@GL_SELECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32, i32, i32, i32, i32*)* @drawpixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawpixels(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x float], align 16
  %15 = alloca float, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %17 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_16__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %22 = call i32 @gl_error(%struct.TYPE_16__* %20, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %239

23:                                               ; preds = %6
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GL_RENDER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %72

29:                                               ; preds = %23
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %239

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %67 [
    i32 136, label %38
    i32 128, label %45
    i32 135, label %52
    i32 131, label %59
    i32 134, label %59
    i32 137, label %59
    i32 140, label %59
    i32 130, label %59
    i32 138, label %59
    i32 133, label %59
    i32 132, label %59
    i32 129, label %59
    i32 139, label %59
  ]

38:                                               ; preds = %36
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @draw_index_pixels(%struct.TYPE_16__* %39, i32 %40, i32 %41, i32 %42, i32* %43)
  br label %71

45:                                               ; preds = %36
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @draw_stencil_pixels(%struct.TYPE_16__* %46, i32 %47, i32 %48, i32 %49, i32* %50)
  br label %71

52:                                               ; preds = %36
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @draw_depth_pixels(%struct.TYPE_16__* %53, i32 %54, i32 %55, i32 %56, i32* %57)
  br label %71

59:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %36, %36
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @draw_color_pixels(%struct.TYPE_16__* %60, i32 %61, i32 %62, i32 %63, i32 %64, i32* %65)
  br label %71

67:                                               ; preds = %36
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = load i32, i32* @GL_INVALID_ENUM, align 4
  %70 = call i32 @gl_error(%struct.TYPE_16__* %68, i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %59, %52, %45, %38
  br label %239

72:                                               ; preds = %23
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @GL_FEEDBACK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %215

78:                                               ; preds = %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %214

84:                                               ; preds = %78
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 0
  %90 = load float, float* %89, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load float, float* %94, align 4
  %96 = fmul float %90, %95
  %97 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 0
  store float %96, float* %97, align 16
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load float*, float** %100, align 8
  %102 = getelementptr inbounds float, float* %101, i64 1
  %103 = load float, float* %102, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load float, float* %107, align 4
  %109 = fmul float %103, %108
  %110 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 1
  store float %109, float* %110, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load float*, float** %113, align 8
  %115 = getelementptr inbounds float, float* %114, i64 2
  %116 = load float, float* %115, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = load float, float* %120, align 4
  %122 = fmul float %116, %121
  %123 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 2
  store float %122, float* %123, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load float*, float** %126, align 8
  %128 = getelementptr inbounds float, float* %127, i64 3
  %129 = load float, float* %128, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  %134 = load float, float* %133, align 4
  %135 = fmul float %129, %134
  %136 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 3
  store float %135, float* %136, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load float*, float** %139, align 8
  %141 = getelementptr inbounds float, float* %140, i64 3
  %142 = load float, float* %141, align 4
  %143 = fdiv float 1.000000e+00, %142
  store float %143, float* %15, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load float*, float** %146, align 8
  %148 = getelementptr inbounds float, float* %147, i64 0
  %149 = load float, float* %148, align 4
  %150 = load float, float* %15, align 4
  %151 = fmul float %149, %150
  %152 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  store float %151, float* %152, align 16
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load float*, float** %155, align 8
  %157 = getelementptr inbounds float, float* %156, i64 1
  %158 = load float, float* %157, align 4
  %159 = load float, float* %15, align 4
  %160 = fmul float %158, %159
  %161 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 1
  store float %160, float* %161, align 4
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load float*, float** %164, align 8
  %166 = getelementptr inbounds float, float* %165, i64 2
  %167 = load float, float* %166, align 4
  %168 = load float, float* %15, align 4
  %169 = fmul float %167, %168
  %170 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 2
  store float %169, float* %170, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load float*, float** %173, align 8
  %175 = getelementptr inbounds float, float* %174, i64 3
  %176 = load float, float* %175, align 4
  %177 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  store float %176, float* %177, align 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %179 = load i64, i64* @GL_DRAW_PIXEL_TOKEN, align 8
  %180 = sitofp i64 %179 to float
  %181 = call i32 @FEEDBACK_TOKEN(%struct.TYPE_16__* %178, float %180)
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 3
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 0
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %213 = call i32 @gl_feedback_vertex(%struct.TYPE_16__* %182, i32 %188, i32 %194, i32 %200, i32 %206, float* %207, i32 %211, float* %212)
  br label %214

214:                                              ; preds = %84, %78
  br label %238

215:                                              ; preds = %72
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @GL_SELECT, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %237

221:                                              ; preds = %215
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %221
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 2
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @gl_update_hitflag(%struct.TYPE_16__* %228, i32 %234)
  br label %236

236:                                              ; preds = %227, %221
  br label %237

237:                                              ; preds = %236, %215
  br label %238

238:                                              ; preds = %237, %214
  br label %239

239:                                              ; preds = %19, %35, %238, %71
  ret void
}

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_16__*) #1

declare dso_local i32 @gl_error(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @draw_index_pixels(%struct.TYPE_16__*, i32, i32, i32, i32*) #1

declare dso_local i32 @draw_stencil_pixels(%struct.TYPE_16__*, i32, i32, i32, i32*) #1

declare dso_local i32 @draw_depth_pixels(%struct.TYPE_16__*, i32, i32, i32, i32*) #1

declare dso_local i32 @draw_color_pixels(%struct.TYPE_16__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @FEEDBACK_TOKEN(%struct.TYPE_16__*, float) #1

declare dso_local i32 @gl_feedback_vertex(%struct.TYPE_16__*, i32, i32, i32, i32, float*, i32, float*) #1

declare dso_local i32 @gl_update_hitflag(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
