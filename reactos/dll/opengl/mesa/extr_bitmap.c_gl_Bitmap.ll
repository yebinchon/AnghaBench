; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_bitmap.c_gl_Bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_bitmap.c_gl_Bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i64, float*, float*, float*, i32 }
%struct.TYPE_13__ = type { float, float, float, float }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_15__*, i64, i64, float, float, float, float, %struct.gl_image*)* }
%struct.gl_image = type { i32 }

@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"glBitmap\00", align 1
@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i64 0, align 8
@GL_RENDER = common dso_local global i64 0, align 8
@GL_FEEDBACK = common dso_local global i64 0, align 8
@GL_BITMAP_TOKEN = common dso_local global i64 0, align 8
@GL_SELECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_Bitmap(%struct.TYPE_15__* %0, i64 %1, i64 %2, float %3, float %4, float %5, float %6, %struct.gl_image* %7) #0 {
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.gl_image*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [4 x float], align 16
  %19 = alloca [4 x float], align 16
  %20 = alloca float, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store %struct.gl_image* %7, %struct.gl_image** %16, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %8
  %24 = load i64, i64* %11, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = load i32, i32* @GL_INVALID_VALUE, align 4
  %29 = call i32 @gl_error(%struct.TYPE_15__* %27, i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %253

30:                                               ; preds = %23
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %32 = call i64 @INSIDE_BEGIN_END(%struct.TYPE_15__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %36 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %37 = call i32 @gl_error(%struct.TYPE_15__* %35, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %253

38:                                               ; preds = %30
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GL_FALSE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %253

46:                                               ; preds = %38
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GL_RENDER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %46
  %53 = load i64, i64* @GL_FALSE, align 8
  store i64 %53, i64* %17, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64 (%struct.TYPE_15__*, i64, i64, float, float, float, float, %struct.gl_image*)*, i64 (%struct.TYPE_15__*, i64, i64, float, float, float, float, %struct.gl_image*)** %56, align 8
  %58 = icmp ne i64 (%struct.TYPE_15__*, i64, i64, float, float, float, float, %struct.gl_image*)* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64 (%struct.TYPE_15__*, i64, i64, float, float, float, float, %struct.gl_image*)*, i64 (%struct.TYPE_15__*, i64, i64, float, float, float, float, %struct.gl_image*)** %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load float, float* %12, align 4
  %68 = load float, float* %13, align 4
  %69 = load float, float* %14, align 4
  %70 = load float, float* %15, align 4
  %71 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %72 = call i64 %63(%struct.TYPE_15__* %64, i64 %65, i64 %66, float %67, float %68, float %69, float %70, %struct.gl_image* %71)
  store i64 %72, i64* %17, align 8
  br label %73

73:                                               ; preds = %59, %52
  %74 = load i64, i64* %17, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load float, float* %12, align 4
  %81 = load float, float* %13, align 4
  %82 = load float, float* %14, align 4
  %83 = load float, float* %15, align 4
  %84 = load %struct.gl_image*, %struct.gl_image** %16, align 8
  %85 = call i32 @gl_render_bitmap(%struct.TYPE_15__* %77, i64 %78, i64 %79, float %80, float %81, float %82, float %83, %struct.gl_image* %84)
  br label %86

86:                                               ; preds = %76, %73
  br label %236

87:                                               ; preds = %46
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @GL_FEEDBACK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %227

93:                                               ; preds = %87
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load float*, float** %96, align 8
  %98 = getelementptr inbounds float, float* %97, i64 0
  %99 = load float, float* %98, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load float, float* %103, align 4
  %105 = fmul float %99, %104
  %106 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 0
  store float %105, float* %106, align 16
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load float*, float** %109, align 8
  %111 = getelementptr inbounds float, float* %110, i64 1
  %112 = load float, float* %111, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load float, float* %116, align 4
  %118 = fmul float %112, %117
  %119 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 1
  store float %118, float* %119, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load float*, float** %122, align 8
  %124 = getelementptr inbounds float, float* %123, i64 2
  %125 = load float, float* %124, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load float, float* %129, align 4
  %131 = fmul float %125, %130
  %132 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 2
  store float %131, float* %132, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load float*, float** %135, align 8
  %137 = getelementptr inbounds float, float* %136, i64 3
  %138 = load float, float* %137, align 4
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 3
  %143 = load float, float* %142, align 4
  %144 = fmul float %138, %143
  %145 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 3
  store float %144, float* %145, align 4
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = load float*, float** %148, align 8
  %150 = getelementptr inbounds float, float* %149, i64 3
  %151 = load float, float* %150, align 4
  %152 = fdiv float 1.000000e+00, %151
  store float %152, float* %20, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  %156 = load float*, float** %155, align 8
  %157 = getelementptr inbounds float, float* %156, i64 0
  %158 = load float, float* %157, align 4
  %159 = load float, float* %20, align 4
  %160 = fmul float %158, %159
  %161 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 0
  store float %160, float* %161, align 16
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = load float*, float** %164, align 8
  %166 = getelementptr inbounds float, float* %165, i64 1
  %167 = load float, float* %166, align 4
  %168 = load float, float* %20, align 4
  %169 = fmul float %167, %168
  %170 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 1
  store float %169, float* %170, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 2
  %174 = load float*, float** %173, align 8
  %175 = getelementptr inbounds float, float* %174, i64 2
  %176 = load float, float* %175, align 4
  %177 = load float, float* %20, align 4
  %178 = fmul float %176, %177
  %179 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 2
  store float %178, float* %179, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 2
  %183 = load float*, float** %182, align 8
  %184 = getelementptr inbounds float, float* %183, i64 3
  %185 = load float, float* %184, align 4
  %186 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 3
  store float %185, float* %186, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %188 = load i64, i64* @GL_BITMAP_TOKEN, align 8
  %189 = sitofp i64 %188 to float
  %190 = call i32 @FEEDBACK_TOKEN(%struct.TYPE_15__* %187, float %189)
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 3
  %195 = load float*, float** %194, align 8
  %196 = getelementptr inbounds float, float* %195, i64 0
  %197 = load float, float* %196, align 4
  %198 = load float, float* %12, align 4
  %199 = fsub float %197, %198
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 3
  %203 = load float*, float** %202, align 8
  %204 = getelementptr inbounds float, float* %203, i64 1
  %205 = load float, float* %204, align 4
  %206 = load float, float* %13, align 4
  %207 = fsub float %205, %206
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 3
  %211 = load float*, float** %210, align 8
  %212 = getelementptr inbounds float, float* %211, i64 2
  %213 = load float, float* %212, align 4
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 3
  %217 = load float*, float** %216, align 8
  %218 = getelementptr inbounds float, float* %217, i64 3
  %219 = load float, float* %218, align 4
  %220 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 0
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 0
  %226 = call i32 @gl_feedback_vertex(%struct.TYPE_15__* %191, float %199, float %207, float %213, float %219, float* %220, i32 %224, float* %225)
  br label %235

227:                                              ; preds = %87
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @GL_SELECT, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  br label %234

234:                                              ; preds = %233, %227
  br label %235

235:                                              ; preds = %234, %93
  br label %236

236:                                              ; preds = %235, %86
  %237 = load float, float* %14, align 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 3
  %241 = load float*, float** %240, align 8
  %242 = getelementptr inbounds float, float* %241, i64 0
  %243 = load float, float* %242, align 4
  %244 = fadd float %243, %237
  store float %244, float* %242, align 4
  %245 = load float, float* %15, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 3
  %249 = load float*, float** %248, align 8
  %250 = getelementptr inbounds float, float* %249, i64 1
  %251 = load float, float* %250, align 4
  %252 = fadd float %251, %245
  store float %252, float* %250, align 4
  br label %253

253:                                              ; preds = %236, %45, %34, %26
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i64 @INSIDE_BEGIN_END(%struct.TYPE_15__*) #1

declare dso_local i32 @gl_render_bitmap(%struct.TYPE_15__*, i64, i64, float, float, float, float, %struct.gl_image*) #1

declare dso_local i32 @FEEDBACK_TOKEN(%struct.TYPE_15__*, float) #1

declare dso_local i32 @gl_feedback_vertex(%struct.TYPE_15__*, float, float, float, float, float*, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
