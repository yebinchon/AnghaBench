; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_exp.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quat = type { i32, i32, i32, i32 }

@EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quat_exp(%struct.quat* %0, %struct.quat* %1) #0 {
  %3 = alloca %struct.quat*, align 8
  %4 = alloca %struct.quat*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct.quat* %0, %struct.quat** %3, align 8
  store %struct.quat* %1, %struct.quat** %4, align 8
  %7 = load %struct.quat*, %struct.quat** %4, align 8
  %8 = getelementptr inbounds %struct.quat, %struct.quat* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.quat*, %struct.quat** %4, align 8
  %11 = getelementptr inbounds %struct.quat, %struct.quat* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = load %struct.quat*, %struct.quat** %4, align 8
  %15 = getelementptr inbounds %struct.quat, %struct.quat* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.quat*, %struct.quat** %4, align 8
  %18 = getelementptr inbounds %struct.quat, %struct.quat* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = add nsw i32 %13, %20
  %22 = load %struct.quat*, %struct.quat** %4, align 8
  %23 = getelementptr inbounds %struct.quat, %struct.quat* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.quat*, %struct.quat** %4, align 8
  %26 = getelementptr inbounds %struct.quat, %struct.quat* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = add nsw i32 %21, %28
  %30 = call float @sqrtf(i32 %29)
  store float %30, float* %5, align 4
  %31 = load float, float* %5, align 4
  %32 = call float @sinf(float %31) #3
  store float %32, float* %6, align 4
  %33 = load %struct.quat*, %struct.quat** %3, align 8
  %34 = load %struct.quat*, %struct.quat** %4, align 8
  %35 = call i32 @quat_copy(%struct.quat* %33, %struct.quat* %34)
  %36 = load float, float* %5, align 4
  %37 = load float, float* @EPSILON, align 4
  %38 = fcmp ogt float %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load float, float* %6, align 4
  %41 = load float, float* %5, align 4
  %42 = fdiv float %40, %41
  br label %44

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi float [ %42, %39 ], [ 1.000000e+00, %43 ]
  store float %45, float* %6, align 4
  %46 = load %struct.quat*, %struct.quat** %3, align 8
  %47 = load %struct.quat*, %struct.quat** %3, align 8
  %48 = load float, float* %6, align 4
  %49 = call i32 @quat_mulf(%struct.quat* %46, %struct.quat* %47, float %48)
  %50 = load float, float* %5, align 4
  %51 = call i32 @cosf(float %50)
  %52 = load %struct.quat*, %struct.quat** %3, align 8
  %53 = getelementptr inbounds %struct.quat, %struct.quat* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local float @sqrtf(i32) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

declare dso_local i32 @quat_copy(%struct.quat*, %struct.quat*) #1

declare dso_local i32 @quat_mulf(%struct.quat*, %struct.quat*, float) #1

declare dso_local i32 @cosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
