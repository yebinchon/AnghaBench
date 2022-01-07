; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_build_sprite_rect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_build_sprite_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_vb_data = type { i32 }

@GS_FLIP_U = common dso_local global i32 0, align 4
@GS_FLIP_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_vb_data*, i32*, float, float, i32)* @build_sprite_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_sprite_rect(%struct.gs_vb_data* %0, i32* %1, float %2, float %3, i32 %4) #0 {
  %6 = alloca %struct.gs_vb_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store %struct.gs_vb_data* %0, %struct.gs_vb_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @gs_texture_get_width(i32* %17)
  %19 = sitofp i64 %18 to float
  store float %19, float* %15, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @gs_texture_get_height(i32* %20)
  %22 = sitofp i64 %21 to float
  store float %22, float* %16, align 4
  %23 = load float, float* %15, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @GS_FLIP_U, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assign_sprite_rect(float* %11, float* %12, float %23, i32 %28)
  %30 = load float, float* %16, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @GS_FLIP_V, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assign_sprite_rect(float* %13, float* %14, float %30, i32 %35)
  %37 = load %struct.gs_vb_data*, %struct.gs_vb_data** %6, align 8
  %38 = load float, float* %8, align 4
  %39 = load float, float* %9, align 4
  %40 = load float, float* %11, align 4
  %41 = load float, float* %12, align 4
  %42 = load float, float* %13, align 4
  %43 = load float, float* %14, align 4
  %44 = call i32 @build_sprite(%struct.gs_vb_data* %37, float %38, float %39, float %40, float %41, float %42, float %43)
  ret void
}

declare dso_local i64 @gs_texture_get_width(i32*) #1

declare dso_local i64 @gs_texture_get_height(i32*) #1

declare dso_local i32 @assign_sprite_rect(float*, float*, float, i32) #1

declare dso_local i32 @build_sprite(%struct.gs_vb_data*, float, float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
