; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_polar_to_norm.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_polar_to_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { float, float, float }
%struct.vec2 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @polar_to_norm(%struct.vec3* %0, %struct.vec2* %1) #0 {
  %3 = alloca %struct.vec3*, align 8
  %4 = alloca %struct.vec2*, align 8
  %5 = alloca float, align 4
  store %struct.vec3* %0, %struct.vec3** %3, align 8
  store %struct.vec2* %1, %struct.vec2** %4, align 8
  %6 = load %struct.vec2*, %struct.vec2** %4, align 8
  %7 = getelementptr inbounds %struct.vec2, %struct.vec2* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call float @sinf(i32 %8)
  store float %9, float* %5, align 4
  %10 = load float, float* %5, align 4
  %11 = load %struct.vec2*, %struct.vec2** %4, align 8
  %12 = getelementptr inbounds %struct.vec2, %struct.vec2* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call float @cosf(i32 %13)
  %15 = fmul float %10, %14
  %16 = load %struct.vec3*, %struct.vec3** %3, align 8
  %17 = getelementptr inbounds %struct.vec3, %struct.vec3* %16, i32 0, i32 0
  store float %15, float* %17, align 4
  %18 = load float, float* %5, align 4
  %19 = load %struct.vec2*, %struct.vec2** %4, align 8
  %20 = getelementptr inbounds %struct.vec2, %struct.vec2* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call float @sinf(i32 %21)
  %23 = fmul float %18, %22
  %24 = load %struct.vec3*, %struct.vec3** %3, align 8
  %25 = getelementptr inbounds %struct.vec3, %struct.vec3* %24, i32 0, i32 1
  store float %23, float* %25, align 4
  %26 = load %struct.vec2*, %struct.vec2** %4, align 8
  %27 = getelementptr inbounds %struct.vec2, %struct.vec2* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call float @cosf(i32 %28)
  %30 = load %struct.vec3*, %struct.vec3** %3, align 8
  %31 = getelementptr inbounds %struct.vec3, %struct.vec3* %30, i32 0, i32 2
  store float %29, float* %31, align 4
  ret void
}

declare dso_local float @sinf(i32) #1

declare dso_local float @cosf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
