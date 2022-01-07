; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_vec3.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_vec3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { float, i32 }
%struct.quat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec3*, %struct.quat*)* @quat_vec3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quat_vec3(%struct.vec3* %0, %struct.quat* %1) #0 {
  %3 = alloca %struct.vec3*, align 8
  %4 = alloca %struct.quat*, align 8
  store %struct.vec3* %0, %struct.vec3** %3, align 8
  store %struct.quat* %1, %struct.quat** %4, align 8
  %5 = load %struct.quat*, %struct.quat** %4, align 8
  %6 = getelementptr inbounds %struct.quat, %struct.quat* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.vec3*, %struct.vec3** %3, align 8
  %9 = getelementptr inbounds %struct.vec3, %struct.vec3* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.vec3*, %struct.vec3** %3, align 8
  %11 = getelementptr inbounds %struct.vec3, %struct.vec3* %10, i32 0, i32 0
  store float 0.000000e+00, float* %11, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
