; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.h_plane_coplanar.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.h_plane_coplanar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plane = type { float, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.plane*, %struct.plane*, float)* @plane_coplanar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plane_coplanar(%struct.plane* %0, %struct.plane* %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.plane*, align 8
  %6 = alloca %struct.plane*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.plane* %0, %struct.plane** %5, align 8
  store %struct.plane* %1, %struct.plane** %6, align 8
  store float %2, float* %7, align 4
  %9 = load %struct.plane*, %struct.plane** %5, align 8
  %10 = getelementptr inbounds %struct.plane, %struct.plane* %9, i32 0, i32 1
  %11 = load %struct.plane*, %struct.plane** %6, align 8
  %12 = getelementptr inbounds %struct.plane, %struct.plane* %11, i32 0, i32 1
  %13 = call float @vec3_dot(i32* %10, i32* %12)
  store float %13, float* %8, align 4
  %14 = load float, float* %8, align 4
  %15 = load float, float* %7, align 4
  %16 = call i32 @close_float(float %14, float 1.000000e+00, float %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.plane*, %struct.plane** %5, align 8
  %20 = getelementptr inbounds %struct.plane, %struct.plane* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = load %struct.plane*, %struct.plane** %6, align 8
  %23 = getelementptr inbounds %struct.plane, %struct.plane* %22, i32 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = load float, float* %7, align 4
  %26 = call i32 @close_float(float %21, float %24, float %25)
  store i32 %26, i32* %4, align 4
  br label %44

27:                                               ; preds = %3
  %28 = load float, float* %8, align 4
  %29 = load float, float* %7, align 4
  %30 = call i32 @close_float(float %28, float -1.000000e+00, float %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.plane*, %struct.plane** %5, align 8
  %34 = getelementptr inbounds %struct.plane, %struct.plane* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  %36 = fneg float %35
  %37 = load %struct.plane*, %struct.plane** %6, align 8
  %38 = getelementptr inbounds %struct.plane, %struct.plane* %37, i32 0, i32 0
  %39 = load float, float* %38, align 4
  %40 = load float, float* %7, align 4
  %41 = call i32 @close_float(float %36, float %39, float %40)
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %32, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local float @vec3_dot(i32*, i32*) #1

declare dso_local i32 @close_float(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
