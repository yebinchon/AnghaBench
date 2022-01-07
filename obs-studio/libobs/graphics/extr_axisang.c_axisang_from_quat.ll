; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_axisang.c_axisang_from_quat.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_axisang.c_axisang_from_quat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axisang = type { float, float, float, float }
%struct.quat = type { float, float, float, i32 }

@EPSILON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @axisang_from_quat(%struct.axisang* %0, %struct.quat* %1) #0 {
  %3 = alloca %struct.axisang*, align 8
  %4 = alloca %struct.quat*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct.axisang* %0, %struct.axisang** %3, align 8
  store %struct.quat* %1, %struct.quat** %4, align 8
  %7 = load %struct.quat*, %struct.quat** %4, align 8
  %8 = getelementptr inbounds %struct.quat, %struct.quat* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = load %struct.quat*, %struct.quat** %4, align 8
  %11 = getelementptr inbounds %struct.quat, %struct.quat* %10, i32 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = fmul float %9, %12
  %14 = load %struct.quat*, %struct.quat** %4, align 8
  %15 = getelementptr inbounds %struct.quat, %struct.quat* %14, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = load %struct.quat*, %struct.quat** %4, align 8
  %18 = getelementptr inbounds %struct.quat, %struct.quat* %17, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = fmul float %16, %19
  %21 = fadd float %13, %20
  %22 = load %struct.quat*, %struct.quat** %4, align 8
  %23 = getelementptr inbounds %struct.quat, %struct.quat* %22, i32 0, i32 2
  %24 = load float, float* %23, align 4
  %25 = load %struct.quat*, %struct.quat** %4, align 8
  %26 = getelementptr inbounds %struct.quat, %struct.quat* %25, i32 0, i32 2
  %27 = load float, float* %26, align 4
  %28 = fmul float %24, %27
  %29 = fadd float %21, %28
  store float %29, float* %5, align 4
  %30 = load float, float* %5, align 4
  %31 = load i32, i32* @EPSILON, align 4
  %32 = call i32 @close_float(float %30, float 0.000000e+00, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %2
  %35 = load float, float* %5, align 4
  %36 = call float @sqrtf(float %35) #3
  %37 = fdiv float 1.000000e+00, %36
  store float %37, float* %6, align 4
  %38 = load %struct.quat*, %struct.quat** %4, align 8
  %39 = getelementptr inbounds %struct.quat, %struct.quat* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = load float, float* %6, align 4
  %42 = fmul float %40, %41
  %43 = load %struct.axisang*, %struct.axisang** %3, align 8
  %44 = getelementptr inbounds %struct.axisang, %struct.axisang* %43, i32 0, i32 0
  store float %42, float* %44, align 4
  %45 = load %struct.quat*, %struct.quat** %4, align 8
  %46 = getelementptr inbounds %struct.quat, %struct.quat* %45, i32 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = load float, float* %6, align 4
  %49 = fmul float %47, %48
  %50 = load %struct.axisang*, %struct.axisang** %3, align 8
  %51 = getelementptr inbounds %struct.axisang, %struct.axisang* %50, i32 0, i32 1
  store float %49, float* %51, align 4
  %52 = load %struct.quat*, %struct.quat** %4, align 8
  %53 = getelementptr inbounds %struct.quat, %struct.quat* %52, i32 0, i32 2
  %54 = load float, float* %53, align 4
  %55 = load float, float* %6, align 4
  %56 = fmul float %54, %55
  %57 = load %struct.axisang*, %struct.axisang** %3, align 8
  %58 = getelementptr inbounds %struct.axisang, %struct.axisang* %57, i32 0, i32 2
  store float %56, float* %58, align 4
  %59 = load %struct.quat*, %struct.quat** %4, align 8
  %60 = getelementptr inbounds %struct.quat, %struct.quat* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call float @acosf(i32 %61)
  %63 = fmul float %62, 2.000000e+00
  %64 = load %struct.axisang*, %struct.axisang** %3, align 8
  %65 = getelementptr inbounds %struct.axisang, %struct.axisang* %64, i32 0, i32 3
  store float %63, float* %65, align 4
  br label %75

66:                                               ; preds = %2
  %67 = load %struct.axisang*, %struct.axisang** %3, align 8
  %68 = getelementptr inbounds %struct.axisang, %struct.axisang* %67, i32 0, i32 0
  store float 0.000000e+00, float* %68, align 4
  %69 = load %struct.axisang*, %struct.axisang** %3, align 8
  %70 = getelementptr inbounds %struct.axisang, %struct.axisang* %69, i32 0, i32 1
  store float 0.000000e+00, float* %70, align 4
  %71 = load %struct.axisang*, %struct.axisang** %3, align 8
  %72 = getelementptr inbounds %struct.axisang, %struct.axisang* %71, i32 0, i32 2
  store float 0.000000e+00, float* %72, align 4
  %73 = load %struct.axisang*, %struct.axisang** %3, align 8
  %74 = getelementptr inbounds %struct.axisang, %struct.axisang* %73, i32 0, i32 3
  store float 0.000000e+00, float* %74, align 4
  br label %75

75:                                               ; preds = %66, %34
  ret void
}

declare dso_local i32 @close_float(float, float, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local float @acosf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
