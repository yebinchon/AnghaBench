; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_polar_to_cart.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_polar_to_cart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @polar_to_cart(%struct.vec3* %0, %struct.vec3* %1) #0 {
  %3 = alloca %struct.vec3*, align 8
  %4 = alloca %struct.vec3*, align 8
  %5 = alloca %struct.vec3, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.vec3* %0, %struct.vec3** %3, align 8
  store %struct.vec3* %1, %struct.vec3** %4, align 8
  %8 = load %struct.vec3*, %struct.vec3** %4, align 8
  %9 = getelementptr inbounds %struct.vec3, %struct.vec3* %8, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = call float @cosf(float %10) #3
  store float %11, float* %6, align 4
  %12 = load %struct.vec3*, %struct.vec3** %4, align 8
  %13 = getelementptr inbounds %struct.vec3, %struct.vec3* %12, i32 0, i32 1
  %14 = load float, float* %13, align 4
  %15 = load float, float* %6, align 4
  %16 = fmul float %14, %15
  store float %16, float* %7, align 4
  %17 = load float, float* %7, align 4
  %18 = load %struct.vec3*, %struct.vec3** %4, align 8
  %19 = getelementptr inbounds %struct.vec3, %struct.vec3* %18, i32 0, i32 2
  %20 = load float, float* %19, align 4
  %21 = call float @sinf(float %20) #3
  %22 = fmul float %17, %21
  %23 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 0
  store float %22, float* %23, align 4
  %24 = load float, float* %7, align 4
  %25 = load %struct.vec3*, %struct.vec3** %4, align 8
  %26 = getelementptr inbounds %struct.vec3, %struct.vec3* %25, i32 0, i32 2
  %27 = load float, float* %26, align 4
  %28 = call float @cosf(float %27) #3
  %29 = fmul float %24, %28
  %30 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 1
  store float %29, float* %30, align 4
  %31 = load %struct.vec3*, %struct.vec3** %4, align 8
  %32 = getelementptr inbounds %struct.vec3, %struct.vec3* %31, i32 0, i32 1
  %33 = load float, float* %32, align 4
  %34 = load %struct.vec3*, %struct.vec3** %4, align 8
  %35 = getelementptr inbounds %struct.vec3, %struct.vec3* %34, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = call float @sinf(float %36) #3
  %38 = fmul float %33, %37
  %39 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 2
  store float %38, float* %39, align 4
  %40 = load %struct.vec3*, %struct.vec3** %3, align 8
  %41 = call i32 @vec3_copy(%struct.vec3* %40, %struct.vec3* %5)
  ret void
}

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

declare dso_local i32 @vec3_copy(%struct.vec3*, %struct.vec3*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
