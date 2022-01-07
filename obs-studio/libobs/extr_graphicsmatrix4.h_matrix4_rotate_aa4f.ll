; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsmatrix4.h_matrix4_rotate_aa4f.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsmatrix4.h_matrix4_rotate_aa4f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix4 = type { i32 }
%struct.axisang = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrix4*, %struct.matrix4*, float, float, float, float)* @matrix4_rotate_aa4f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matrix4_rotate_aa4f(%struct.matrix4* %0, %struct.matrix4* %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca %struct.matrix4*, align 8
  %8 = alloca %struct.matrix4*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.axisang, align 4
  store %struct.matrix4* %0, %struct.matrix4** %7, align 8
  store %struct.matrix4* %1, %struct.matrix4** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %14 = load float, float* %9, align 4
  %15 = load float, float* %10, align 4
  %16 = load float, float* %11, align 4
  %17 = load float, float* %12, align 4
  %18 = call i32 @axisang_set(%struct.axisang* %13, float %14, float %15, float %16, float %17)
  %19 = load %struct.matrix4*, %struct.matrix4** %7, align 8
  %20 = load %struct.matrix4*, %struct.matrix4** %8, align 8
  %21 = call i32 @matrix4_rotate_aa(%struct.matrix4* %19, %struct.matrix4* %20, %struct.axisang* %13)
  ret void
}

declare dso_local i32 @axisang_set(%struct.axisang*, float, float, float, float) #1

declare dso_local i32 @matrix4_rotate_aa(%struct.matrix4*, %struct.matrix4*, %struct.axisang*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
