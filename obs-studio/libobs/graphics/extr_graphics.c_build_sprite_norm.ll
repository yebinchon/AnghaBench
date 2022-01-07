; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_build_sprite_norm.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_build_sprite_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_vb_data = type { i32 }

@GS_FLIP_U = common dso_local global i32 0, align 4
@GS_FLIP_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_vb_data*, float, float, i32)* @build_sprite_norm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_sprite_norm(%struct.gs_vb_data* %0, float %1, float %2, i32 %3) #0 {
  %5 = alloca %struct.gs_vb_data*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store %struct.gs_vb_data* %0, %struct.gs_vb_data** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @GS_FLIP_U, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assign_sprite_uv(float* %9, float* %10, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @GS_FLIP_V, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assign_sprite_uv(float* %11, float* %12, i32 %23)
  %25 = load %struct.gs_vb_data*, %struct.gs_vb_data** %5, align 8
  %26 = load float, float* %6, align 4
  %27 = load float, float* %7, align 4
  %28 = load float, float* %9, align 4
  %29 = load float, float* %10, align 4
  %30 = load float, float* %11, align 4
  %31 = load float, float* %12, align 4
  %32 = call i32 @build_sprite(%struct.gs_vb_data* %25, float %26, float %27, float %28, float %29, float %30, float %31)
  ret void
}

declare dso_local i32 @assign_sprite_uv(float*, float*, i32) #1

declare dso_local i32 @build_sprite(%struct.gs_vb_data*, float, float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
