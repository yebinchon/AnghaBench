; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_log.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quat = type { float }

@EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quat_log(%struct.quat* %0, %struct.quat* %1) #0 {
  %3 = alloca %struct.quat*, align 8
  %4 = alloca %struct.quat*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.quat* %0, %struct.quat** %3, align 8
  store %struct.quat* %1, %struct.quat** %4, align 8
  %8 = load %struct.quat*, %struct.quat** %4, align 8
  %9 = getelementptr inbounds %struct.quat, %struct.quat* %8, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = call float @acosf(float %10) #4
  store float %11, float* %5, align 4
  %12 = load float, float* %5, align 4
  %13 = call float @sinf(float %12) #4
  store float %13, float* %6, align 4
  %14 = load %struct.quat*, %struct.quat** %4, align 8
  %15 = getelementptr inbounds %struct.quat, %struct.quat* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  store float %16, float* %7, align 4
  %17 = load %struct.quat*, %struct.quat** %3, align 8
  %18 = load %struct.quat*, %struct.quat** %4, align 8
  %19 = call i32 @quat_copy(%struct.quat* %17, %struct.quat* %18)
  %20 = load %struct.quat*, %struct.quat** %3, align 8
  %21 = getelementptr inbounds %struct.quat, %struct.quat* %20, i32 0, i32 0
  store float 0.000000e+00, float* %21, align 4
  %22 = load float, float* %7, align 4
  %23 = call float @llvm.fabs.f32(float %22)
  %24 = fcmp olt float %23, 1.000000e+00
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load float, float* %6, align 4
  %27 = call float @llvm.fabs.f32(float %26)
  %28 = load float, float* @EPSILON, align 4
  %29 = fcmp oge float %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load float, float* %5, align 4
  %32 = load float, float* %6, align 4
  %33 = fdiv float %31, %32
  store float %33, float* %6, align 4
  %34 = load %struct.quat*, %struct.quat** %3, align 8
  %35 = load %struct.quat*, %struct.quat** %3, align 8
  %36 = load float, float* %6, align 4
  %37 = call i32 @quat_mulf(%struct.quat* %34, %struct.quat* %35, float %36)
  br label %38

38:                                               ; preds = %30, %25, %2
  ret void
}

; Function Attrs: nounwind
declare dso_local float @acosf(float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

declare dso_local i32 @quat_copy(%struct.quat*, %struct.quat*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

declare dso_local i32 @quat_mulf(%struct.quat*, %struct.quat*, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
