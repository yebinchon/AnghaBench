; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsmatrix3.h_matrix3_identity.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsmatrix3.h_matrix3_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix3 = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrix3*)* @matrix3_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matrix3_identity(%struct.matrix3* %0) #0 {
  %2 = alloca %struct.matrix3*, align 8
  store %struct.matrix3* %0, %struct.matrix3** %2, align 8
  %3 = load %struct.matrix3*, %struct.matrix3** %2, align 8
  %4 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %3, i32 0, i32 2
  %5 = call i32 @vec3_zero(%struct.TYPE_2__* %4)
  %6 = load %struct.matrix3*, %struct.matrix3** %2, align 8
  %7 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %6, i32 0, i32 1
  %8 = call i32 @vec3_zero(%struct.TYPE_2__* %7)
  %9 = load %struct.matrix3*, %struct.matrix3** %2, align 8
  %10 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %9, i32 0, i32 0
  %11 = call i32 @vec3_zero(%struct.TYPE_2__* %10)
  %12 = load %struct.matrix3*, %struct.matrix3** %2, align 8
  %13 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %12, i32 0, i32 3
  %14 = call i32 @vec3_zero(%struct.TYPE_2__* %13)
  %15 = load %struct.matrix3*, %struct.matrix3** %2, align 8
  %16 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store float 1.000000e+00, float* %17, align 4
  %18 = load %struct.matrix3*, %struct.matrix3** %2, align 8
  %19 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store float 1.000000e+00, float* %20, align 4
  %21 = load %struct.matrix3*, %struct.matrix3** %2, align 8
  %22 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store float 1.000000e+00, float* %23, align 4
  ret void
}

declare dso_local i32 @vec3_zero(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
