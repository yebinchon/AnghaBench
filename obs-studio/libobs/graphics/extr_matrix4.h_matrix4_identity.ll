; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.h_matrix4_identity.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.h_matrix4_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix4 = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrix4*)* @matrix4_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matrix4_identity(%struct.matrix4* %0) #0 {
  %2 = alloca %struct.matrix4*, align 8
  store %struct.matrix4* %0, %struct.matrix4** %2, align 8
  %3 = load %struct.matrix4*, %struct.matrix4** %2, align 8
  %4 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %3, i32 0, i32 3
  %5 = call i32 @vec4_zero(%struct.TYPE_2__* %4)
  %6 = load %struct.matrix4*, %struct.matrix4** %2, align 8
  %7 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %6, i32 0, i32 2
  %8 = call i32 @vec4_zero(%struct.TYPE_2__* %7)
  %9 = load %struct.matrix4*, %struct.matrix4** %2, align 8
  %10 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %9, i32 0, i32 1
  %11 = call i32 @vec4_zero(%struct.TYPE_2__* %10)
  %12 = load %struct.matrix4*, %struct.matrix4** %2, align 8
  %13 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %12, i32 0, i32 0
  %14 = call i32 @vec4_zero(%struct.TYPE_2__* %13)
  %15 = load %struct.matrix4*, %struct.matrix4** %2, align 8
  %16 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store float 1.000000e+00, float* %17, align 4
  %18 = load %struct.matrix4*, %struct.matrix4** %2, align 8
  %19 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store float 1.000000e+00, float* %20, align 4
  %21 = load %struct.matrix4*, %struct.matrix4** %2, align 8
  %22 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store float 1.000000e+00, float* %23, align 4
  %24 = load %struct.matrix4*, %struct.matrix4** %2, align 8
  %25 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store float 1.000000e+00, float* %26, align 4
  ret void
}

declare dso_local i32 @vec4_zero(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
