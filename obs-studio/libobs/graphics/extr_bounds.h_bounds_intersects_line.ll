; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.h_bounds_intersects_line.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.h_bounds_intersects_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bounds = type { i32 }
%struct.vec3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bounds*, %struct.vec3*, %struct.vec3*)* @bounds_intersects_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bounds_intersects_line(%struct.bounds* %0, %struct.vec3* %1, %struct.vec3* %2) #0 {
  %4 = alloca %struct.bounds*, align 8
  %5 = alloca %struct.vec3*, align 8
  %6 = alloca %struct.vec3*, align 8
  %7 = alloca float, align 4
  store %struct.bounds* %0, %struct.bounds** %4, align 8
  store %struct.vec3* %1, %struct.vec3** %5, align 8
  store %struct.vec3* %2, %struct.vec3** %6, align 8
  %8 = load %struct.bounds*, %struct.bounds** %4, align 8
  %9 = load %struct.vec3*, %struct.vec3** %5, align 8
  %10 = load %struct.vec3*, %struct.vec3** %6, align 8
  %11 = call i32 @bounds_intersection_line(%struct.bounds* %8, %struct.vec3* %9, %struct.vec3* %10, float* %7)
  ret i32 %11
}

declare dso_local i32 @bounds_intersection_line(%struct.bounds*, %struct.vec3*, %struct.vec3*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
