; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_build_sprite.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_build_sprite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_vb_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vec2* }
%struct.vec2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_vb_data*, float, float, float, float, float, float)* @build_sprite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_sprite(%struct.gs_vb_data* %0, float %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca %struct.gs_vb_data*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.vec2*, align 8
  store %struct.gs_vb_data* %0, %struct.gs_vb_data** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %16 = load %struct.gs_vb_data*, %struct.gs_vb_data** %8, align 8
  %17 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.vec2*, %struct.vec2** %20, align 8
  store %struct.vec2* %21, %struct.vec2** %15, align 8
  %22 = load %struct.gs_vb_data*, %struct.gs_vb_data** %8, align 8
  %23 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @vec3_zero(i64 %24)
  %26 = load %struct.gs_vb_data*, %struct.gs_vb_data** %8, align 8
  %27 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = load float, float* %9, align 4
  %31 = call i32 @vec3_set(i64 %29, float %30, float 0.000000e+00, float 0.000000e+00)
  %32 = load %struct.gs_vb_data*, %struct.gs_vb_data** %8, align 8
  %33 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 2
  %36 = load float, float* %10, align 4
  %37 = call i32 @vec3_set(i64 %35, float 0.000000e+00, float %36, float 0.000000e+00)
  %38 = load %struct.gs_vb_data*, %struct.gs_vb_data** %8, align 8
  %39 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 3
  %42 = load float, float* %9, align 4
  %43 = load float, float* %10, align 4
  %44 = call i32 @vec3_set(i64 %41, float %42, float %43, float 0.000000e+00)
  %45 = load %struct.vec2*, %struct.vec2** %15, align 8
  %46 = load float, float* %11, align 4
  %47 = load float, float* %13, align 4
  %48 = call i32 @vec2_set(%struct.vec2* %45, float %46, float %47)
  %49 = load %struct.vec2*, %struct.vec2** %15, align 8
  %50 = getelementptr inbounds %struct.vec2, %struct.vec2* %49, i64 1
  %51 = load float, float* %12, align 4
  %52 = load float, float* %13, align 4
  %53 = call i32 @vec2_set(%struct.vec2* %50, float %51, float %52)
  %54 = load %struct.vec2*, %struct.vec2** %15, align 8
  %55 = getelementptr inbounds %struct.vec2, %struct.vec2* %54, i64 2
  %56 = load float, float* %11, align 4
  %57 = load float, float* %14, align 4
  %58 = call i32 @vec2_set(%struct.vec2* %55, float %56, float %57)
  %59 = load %struct.vec2*, %struct.vec2** %15, align 8
  %60 = getelementptr inbounds %struct.vec2, %struct.vec2* %59, i64 3
  %61 = load float, float* %12, align 4
  %62 = load float, float* %14, align 4
  %63 = call i32 @vec2_set(%struct.vec2* %60, float %61, float %62)
  ret void
}

declare dso_local i32 @vec3_zero(i64) #1

declare dso_local i32 @vec3_set(i64, float, float, float) #1

declare dso_local i32 @vec2_set(%struct.vec2*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
