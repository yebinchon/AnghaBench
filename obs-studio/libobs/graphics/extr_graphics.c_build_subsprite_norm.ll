; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_build_subsprite_norm.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_build_subsprite_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_vb_data = type { i32 }

@GS_FLIP_U = common dso_local global i32 0, align 4
@GS_FLIP_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_vb_data*, float, float, float, float, float, float, i32)* @build_subsprite_norm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_subsprite_norm(%struct.gs_vb_data* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
  %9 = alloca %struct.gs_vb_data*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store %struct.gs_vb_data* %0, %struct.gs_vb_data** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* @GS_FLIP_U, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %8
  %26 = load float, float* %10, align 4
  %27 = load float, float* %14, align 4
  %28 = fdiv float %26, %27
  store float %28, float* %17, align 4
  %29 = load float, float* %10, align 4
  %30 = load float, float* %12, align 4
  %31 = fadd float %29, %30
  %32 = load float, float* %14, align 4
  %33 = fdiv float %31, %32
  store float %33, float* %18, align 4
  br label %43

34:                                               ; preds = %8
  %35 = load float, float* %10, align 4
  %36 = load float, float* %12, align 4
  %37 = fadd float %35, %36
  %38 = load float, float* %14, align 4
  %39 = fdiv float %37, %38
  store float %39, float* %17, align 4
  %40 = load float, float* %10, align 4
  %41 = load float, float* %14, align 4
  %42 = fdiv float %40, %41
  store float %42, float* %18, align 4
  br label %43

43:                                               ; preds = %34, %25
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @GS_FLIP_V, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load float, float* %11, align 4
  %50 = load float, float* %15, align 4
  %51 = fdiv float %49, %50
  store float %51, float* %19, align 4
  %52 = load float, float* %11, align 4
  %53 = load float, float* %13, align 4
  %54 = fadd float %52, %53
  %55 = load float, float* %15, align 4
  %56 = fdiv float %54, %55
  store float %56, float* %20, align 4
  br label %66

57:                                               ; preds = %43
  %58 = load float, float* %11, align 4
  %59 = load float, float* %13, align 4
  %60 = fadd float %58, %59
  %61 = load float, float* %15, align 4
  %62 = fdiv float %60, %61
  store float %62, float* %19, align 4
  %63 = load float, float* %11, align 4
  %64 = load float, float* %15, align 4
  %65 = fdiv float %63, %64
  store float %65, float* %20, align 4
  br label %66

66:                                               ; preds = %57, %48
  %67 = load %struct.gs_vb_data*, %struct.gs_vb_data** %9, align 8
  %68 = load float, float* %12, align 4
  %69 = load float, float* %13, align 4
  %70 = load float, float* %17, align 4
  %71 = load float, float* %18, align 4
  %72 = load float, float* %19, align 4
  %73 = load float, float* %20, align 4
  %74 = call i32 @build_sprite(%struct.gs_vb_data* %67, float %68, float %69, float %70, float %71, float %72, float %73)
  ret void
}

declare dso_local i32 @build_sprite(%struct.gs_vb_data*, float, float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
