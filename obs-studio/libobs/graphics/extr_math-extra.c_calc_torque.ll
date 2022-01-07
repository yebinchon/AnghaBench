; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_calc_torque.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_calc_torque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { i32 }

@EPSILON = common dso_local global i32 0, align 4
@LARGE_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_torque(%struct.vec3* %0, %struct.vec3* %1, %struct.vec3* %2, float %3, float %4, float %5) #0 {
  %7 = alloca %struct.vec3*, align 8
  %8 = alloca %struct.vec3*, align 8
  %9 = alloca %struct.vec3*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.vec3, align 4
  %14 = alloca %struct.vec3, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store %struct.vec3* %0, %struct.vec3** %7, align 8
  store %struct.vec3* %1, %struct.vec3** %8, align 8
  store %struct.vec3* %2, %struct.vec3** %9, align 8
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %18 = load %struct.vec3*, %struct.vec3** %8, align 8
  %19 = load %struct.vec3*, %struct.vec3** %9, align 8
  %20 = load i32, i32* @EPSILON, align 4
  %21 = call i64 @vec3_close(%struct.vec3* %18, %struct.vec3* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load %struct.vec3*, %struct.vec3** %7, align 8
  %25 = load %struct.vec3*, %struct.vec3** %8, align 8
  %26 = call i32 @vec3_copy(%struct.vec3* %24, %struct.vec3* %25)
  br label %64

27:                                               ; preds = %6
  %28 = load %struct.vec3*, %struct.vec3** %9, align 8
  %29 = load %struct.vec3*, %struct.vec3** %8, align 8
  %30 = call i32 @vec3_sub(%struct.vec3* %13, %struct.vec3* %28, %struct.vec3* %29)
  %31 = call float @vec3_len(%struct.vec3* %13)
  store float %31, float* %15, align 4
  %32 = load float, float* %15, align 4
  %33 = fdiv float 1.000000e+00, %32
  %34 = call i32 @vec3_mulf(%struct.vec3* %14, %struct.vec3* %13, float %33)
  %35 = load float, float* %15, align 4
  %36 = load float, float* %10, align 4
  %37 = fmul float %35, %36
  store float %37, float* %16, align 4
  %38 = load float, float* %16, align 4
  %39 = load float, float* %11, align 4
  %40 = fcmp olt float %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load float, float* %11, align 4
  store float %42, float* %16, align 4
  br label %43

43:                                               ; preds = %41, %27
  %44 = load float, float* %16, align 4
  %45 = load float, float* %12, align 4
  %46 = fmul float %44, %45
  store float %46, float* %17, align 4
  %47 = load float, float* %17, align 4
  %48 = load float, float* %15, align 4
  %49 = load float, float* @LARGE_EPSILON, align 4
  %50 = fsub float %48, %49
  %51 = fcmp ole float %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.vec3*, %struct.vec3** %7, align 8
  %54 = load float, float* %17, align 4
  %55 = call i32 @vec3_mulf(%struct.vec3* %53, %struct.vec3* %14, float %54)
  %56 = load %struct.vec3*, %struct.vec3** %7, align 8
  %57 = load %struct.vec3*, %struct.vec3** %7, align 8
  %58 = load %struct.vec3*, %struct.vec3** %8, align 8
  %59 = call i32 @vec3_add(%struct.vec3* %56, %struct.vec3* %57, %struct.vec3* %58)
  br label %64

60:                                               ; preds = %43
  %61 = load %struct.vec3*, %struct.vec3** %7, align 8
  %62 = load %struct.vec3*, %struct.vec3** %9, align 8
  %63 = call i32 @vec3_copy(%struct.vec3* %61, %struct.vec3* %62)
  br label %64

64:                                               ; preds = %23, %60, %52
  ret void
}

declare dso_local i64 @vec3_close(%struct.vec3*, %struct.vec3*, i32) #1

declare dso_local i32 @vec3_copy(%struct.vec3*, %struct.vec3*) #1

declare dso_local i32 @vec3_sub(%struct.vec3*, %struct.vec3*, %struct.vec3*) #1

declare dso_local float @vec3_len(%struct.vec3*) #1

declare dso_local i32 @vec3_mulf(%struct.vec3*, %struct.vec3*, float) #1

declare dso_local i32 @vec3_add(%struct.vec3*, %struct.vec3*, %struct.vec3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
