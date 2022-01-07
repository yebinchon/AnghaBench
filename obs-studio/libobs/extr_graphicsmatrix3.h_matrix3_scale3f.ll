; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsmatrix3.h_matrix3_scale3f.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsmatrix3.h_matrix3_scale3f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix3 = type { i32 }
%struct.vec3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrix3*, %struct.matrix3*, float, float, float)* @matrix3_scale3f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matrix3_scale3f(%struct.matrix3* %0, %struct.matrix3* %1, float %2, float %3, float %4) #0 {
  %6 = alloca %struct.matrix3*, align 8
  %7 = alloca %struct.matrix3*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.vec3, align 4
  store %struct.matrix3* %0, %struct.matrix3** %6, align 8
  store %struct.matrix3* %1, %struct.matrix3** %7, align 8
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %12 = load float, float* %8, align 4
  %13 = load float, float* %9, align 4
  %14 = load float, float* %10, align 4
  %15 = call i32 @vec3_set(%struct.vec3* %11, float %12, float %13, float %14)
  %16 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %17 = load %struct.matrix3*, %struct.matrix3** %7, align 8
  %18 = call i32 @matrix3_scale(%struct.matrix3* %16, %struct.matrix3* %17, %struct.vec3* %11)
  ret void
}

declare dso_local i32 @vec3_set(%struct.vec3*, float, float, float) #1

declare dso_local i32 @matrix3_scale(%struct.matrix3*, %struct.matrix3*, %struct.vec3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
