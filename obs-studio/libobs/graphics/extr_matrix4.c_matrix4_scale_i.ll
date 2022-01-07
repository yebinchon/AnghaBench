; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_scale_i.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_scale_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { float, float, float }
%struct.matrix4 = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix4_scale_i(%struct.matrix4* %0, %struct.vec3* %1, %struct.matrix4* %2) #0 {
  %4 = alloca %struct.matrix4*, align 8
  %5 = alloca %struct.vec3*, align 8
  %6 = alloca %struct.matrix4*, align 8
  %7 = alloca %struct.matrix4, align 4
  store %struct.matrix4* %0, %struct.matrix4** %4, align 8
  store %struct.vec3* %1, %struct.vec3** %5, align 8
  store %struct.matrix4* %2, %struct.matrix4** %6, align 8
  %8 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %7, i32 0, i32 3
  %9 = load %struct.vec3*, %struct.vec3** %5, align 8
  %10 = getelementptr inbounds %struct.vec3, %struct.vec3* %9, i32 0, i32 0
  %11 = load float, float* %10, align 4
  %12 = call i32 @vec4_set(i32* %8, float %11, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %13 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %7, i32 0, i32 2
  %14 = load %struct.vec3*, %struct.vec3** %5, align 8
  %15 = getelementptr inbounds %struct.vec3, %struct.vec3* %14, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = call i32 @vec4_set(i32* %13, float 0.000000e+00, float %16, float 0.000000e+00, float 0.000000e+00)
  %18 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %7, i32 0, i32 1
  %19 = load %struct.vec3*, %struct.vec3** %5, align 8
  %20 = getelementptr inbounds %struct.vec3, %struct.vec3* %19, i32 0, i32 2
  %21 = load float, float* %20, align 4
  %22 = call i32 @vec4_set(i32* %18, float 0.000000e+00, float 0.000000e+00, float %21, float 0.000000e+00)
  %23 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %7, i32 0, i32 0
  %24 = call i32 @vec4_set(i32* %23, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %25 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %26 = load %struct.matrix4*, %struct.matrix4** %6, align 8
  %27 = call i32 @matrix4_mul(%struct.matrix4* %25, %struct.matrix4* %7, %struct.matrix4* %26)
  ret void
}

declare dso_local i32 @vec4_set(i32*, float, float, float, float) #1

declare dso_local i32 @matrix4_mul(%struct.matrix4*, %struct.matrix4*, %struct.matrix4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
