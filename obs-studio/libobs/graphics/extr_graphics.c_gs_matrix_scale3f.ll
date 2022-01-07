; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_matrix_scale3f.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_matrix_scale3f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix4 = type { i32 }
%struct.vec3 = type { i32 }

@thread_graphics = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_matrix_scale3f(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.matrix4*, align 8
  %8 = alloca %struct.vec3, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %9 = load i32, i32* @thread_graphics, align 4
  %10 = call %struct.matrix4* @top_matrix(i32 %9)
  store %struct.matrix4* %10, %struct.matrix4** %7, align 8
  %11 = load %struct.matrix4*, %struct.matrix4** %7, align 8
  %12 = icmp ne %struct.matrix4* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load float, float* %4, align 4
  %15 = load float, float* %5, align 4
  %16 = load float, float* %6, align 4
  %17 = call i32 @vec3_set(%struct.vec3* %8, float %14, float %15, float %16)
  %18 = load %struct.matrix4*, %struct.matrix4** %7, align 8
  %19 = load %struct.matrix4*, %struct.matrix4** %7, align 8
  %20 = call i32 @matrix4_scale_i(%struct.matrix4* %18, %struct.vec3* %8, %struct.matrix4* %19)
  br label %21

21:                                               ; preds = %13, %3
  ret void
}

declare dso_local %struct.matrix4* @top_matrix(i32) #1

declare dso_local i32 @vec3_set(%struct.vec3*, float, float, float) #1

declare dso_local i32 @matrix4_scale_i(%struct.matrix4*, %struct.vec3*, %struct.matrix4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
