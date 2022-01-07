; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_get_ungrouped_transform.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_get_ungrouped_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.vec2 = type { float, float }
%struct.matrix4 = type { %struct.vec4, %struct.vec4, %struct.vec4, %struct.vec4 }
%struct.vec4 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.vec2*, %struct.vec2*, float*)* @get_ungrouped_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_ungrouped_transform(%struct.TYPE_3__* %0, %struct.vec2* %1, %struct.vec2* %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.vec2*, align 8
  %7 = alloca %struct.vec2*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.matrix4, align 4
  %10 = alloca %struct.matrix4, align 4
  %11 = alloca %struct.vec4, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.vec2* %1, %struct.vec2** %6, align 8
  store %struct.vec2* %2, %struct.vec2** %7, align 8
  store float* %3, float** %8, align 8
  %12 = call i32 @vec4_set(%struct.vec4* %11, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = call i32 @matrix4_copy(%struct.matrix4* %9, i32* %14)
  %16 = load %struct.vec2*, %struct.vec2** %6, align 8
  %17 = call i32 @transform_val(%struct.vec2* %16, %struct.matrix4* %9)
  %18 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %9, i32 0, i32 2
  %19 = call i32 @vec4_set(%struct.vec4* %18, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %20 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %10, i32 0, i32 1
  %21 = load %struct.vec2*, %struct.vec2** %7, align 8
  %22 = getelementptr inbounds %struct.vec2, %struct.vec2* %21, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = call i32 @vec4_set(%struct.vec4* %20, float %23, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %25 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %10, i32 0, i32 0
  %26 = load %struct.vec2*, %struct.vec2** %7, align 8
  %27 = getelementptr inbounds %struct.vec2, %struct.vec2* %26, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = call i32 @vec4_set(%struct.vec4* %25, float 0.000000e+00, float %28, float 0.000000e+00, float 0.000000e+00)
  %30 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %10, i32 0, i32 3
  %31 = call i32 @vec4_set(%struct.vec4* %30, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %32 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %10, i32 0, i32 2
  %33 = call i32 @vec4_set(%struct.vec4* %32, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %34 = call i32 @matrix4_mul(%struct.matrix4* %10, %struct.matrix4* %10, %struct.matrix4* %9)
  %35 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %10, i32 0, i32 1
  %36 = call float @vec4_len(%struct.vec4* %35)
  %37 = load %struct.vec2*, %struct.vec2** %7, align 8
  %38 = getelementptr inbounds %struct.vec2, %struct.vec2* %37, i32 0, i32 0
  %39 = load float, float* %38, align 4
  %40 = fcmp ogt float %39, 0.000000e+00
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, float 1.000000e+00, float -1.000000e+00
  %43 = fmul float %36, %42
  %44 = load %struct.vec2*, %struct.vec2** %7, align 8
  %45 = getelementptr inbounds %struct.vec2, %struct.vec2* %44, i32 0, i32 0
  store float %43, float* %45, align 4
  %46 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %10, i32 0, i32 0
  %47 = call float @vec4_len(%struct.vec4* %46)
  %48 = load %struct.vec2*, %struct.vec2** %7, align 8
  %49 = getelementptr inbounds %struct.vec2, %struct.vec2* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = fcmp ogt float %50, 0.000000e+00
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, float 1.000000e+00, float -1.000000e+00
  %54 = fmul float %47, %53
  %55 = load %struct.vec2*, %struct.vec2** %7, align 8
  %56 = getelementptr inbounds %struct.vec2, %struct.vec2* %55, i32 0, i32 1
  store float %54, float* %56, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sitofp i64 %59 to float
  %61 = load float*, float** %8, align 8
  %62 = load float, float* %61, align 4
  %63 = fadd float %62, %60
  store float %63, float* %61, align 4
  ret void
}

declare dso_local i32 @vec4_set(%struct.vec4*, float, float, float, float) #1

declare dso_local i32 @matrix4_copy(%struct.matrix4*, i32*) #1

declare dso_local i32 @transform_val(%struct.vec2*, %struct.matrix4*) #1

declare dso_local i32 @matrix4_mul(%struct.matrix4*, %struct.matrix4*, %struct.matrix4*) #1

declare dso_local float @vec4_len(%struct.vec4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
