; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.h_plane_setf.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.h_plane_setf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plane = type { float, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.plane*, float, float, float, float)* @plane_setf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plane_setf(%struct.plane* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca %struct.plane*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.plane* %0, %struct.plane** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %11 = load %struct.plane*, %struct.plane** %6, align 8
  %12 = getelementptr inbounds %struct.plane, %struct.plane* %11, i32 0, i32 1
  %13 = load float, float* %7, align 4
  %14 = load float, float* %8, align 4
  %15 = load float, float* %9, align 4
  %16 = call i32 @vec3_set(i32* %12, float %13, float %14, float %15)
  %17 = load float, float* %10, align 4
  %18 = load %struct.plane*, %struct.plane** %6, align 8
  %19 = getelementptr inbounds %struct.plane, %struct.plane* %18, i32 0, i32 0
  store float %17, float* %19, align 4
  ret void
}

declare dso_local i32 @vec3_set(i32*, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
