; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.c_bounds_min_dist.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.c_bounds_min_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bounds = type { i32 }
%struct.plane = type { float, i32 }
%struct.vec3 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @bounds_min_dist(%struct.bounds* %0, %struct.plane* %1) #0 {
  %3 = alloca %struct.bounds*, align 8
  %4 = alloca %struct.plane*, align 8
  %5 = alloca %struct.vec3, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.bounds* %0, %struct.bounds** %3, align 8
  store %struct.plane* %1, %struct.plane** %4, align 8
  %8 = load %struct.bounds*, %struct.bounds** %3, align 8
  %9 = load %struct.plane*, %struct.plane** %4, align 8
  %10 = getelementptr inbounds %struct.plane, %struct.plane* %9, i32 0, i32 1
  %11 = call float @vec3or_offset_len(%struct.bounds* %8, i32* %10)
  %12 = fmul float %11, 5.000000e-01
  store float %12, float* %6, align 4
  %13 = load %struct.bounds*, %struct.bounds** %3, align 8
  %14 = call i32 @bounds_get_center(%struct.vec3* %5, %struct.bounds* %13)
  %15 = load %struct.plane*, %struct.plane** %4, align 8
  %16 = call float @vec3_plane_dist(%struct.vec3* %5, %struct.plane* %15)
  store float %16, float* %7, align 4
  %17 = load %struct.plane*, %struct.plane** %4, align 8
  %18 = getelementptr inbounds %struct.plane, %struct.plane* %17, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = load float, float* %7, align 4
  %21 = fadd float %19, %20
  %22 = load float, float* %6, align 4
  %23 = fsub float %21, %22
  ret float %23
}

declare dso_local float @vec3or_offset_len(%struct.bounds*, i32*) #1

declare dso_local i32 @bounds_get_center(%struct.vec3*, %struct.bounds*) #1

declare dso_local float @vec3_plane_dist(%struct.vec3*, %struct.plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
