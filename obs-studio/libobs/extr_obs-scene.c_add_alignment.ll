; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_add_alignment.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_add_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec2 = type { float, float }

@OBS_ALIGN_RIGHT = common dso_local global i32 0, align 4
@OBS_ALIGN_LEFT = common dso_local global i32 0, align 4
@OBS_ALIGN_BOTTOM = common dso_local global i32 0, align 4
@OBS_ALIGN_TOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_alignment(%struct.vec2* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vec2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vec2* %0, %struct.vec2** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @OBS_ALIGN_RIGHT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = sitofp i32 %14 to float
  %16 = load %struct.vec2*, %struct.vec2** %5, align 8
  %17 = getelementptr inbounds %struct.vec2, %struct.vec2* %16, i32 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = fadd float %18, %15
  store float %19, float* %17, align 4
  br label %34

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @OBS_ALIGN_LEFT, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %26, 2
  %28 = sitofp i32 %27 to float
  %29 = load %struct.vec2*, %struct.vec2** %5, align 8
  %30 = getelementptr inbounds %struct.vec2, %struct.vec2* %29, i32 0, i32 0
  %31 = load float, float* %30, align 4
  %32 = fadd float %31, %28
  store float %32, float* %30, align 4
  br label %33

33:                                               ; preds = %25, %20
  br label %34

34:                                               ; preds = %33, %13
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @OBS_ALIGN_BOTTOM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = sitofp i32 %40 to float
  %42 = load %struct.vec2*, %struct.vec2** %5, align 8
  %43 = getelementptr inbounds %struct.vec2, %struct.vec2* %42, i32 0, i32 1
  %44 = load float, float* %43, align 4
  %45 = fadd float %44, %41
  store float %45, float* %43, align 4
  br label %60

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @OBS_ALIGN_TOP, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = sdiv i32 %52, 2
  %54 = sitofp i32 %53 to float
  %55 = load %struct.vec2*, %struct.vec2** %5, align 8
  %56 = getelementptr inbounds %struct.vec2, %struct.vec2* %55, i32 0, i32 1
  %57 = load float, float* %56, align 4
  %58 = fadd float %57, %54
  store float %58, float* %56, align 4
  br label %59

59:                                               ; preds = %51, %46
  br label %60

60:                                               ; preds = %59, %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
