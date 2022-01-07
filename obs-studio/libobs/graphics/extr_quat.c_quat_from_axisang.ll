; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_from_axisang.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_from_axisang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quat = type { float, float, float, i32 }
%struct.axisang = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quat_from_axisang(%struct.quat* %0, %struct.axisang* %1) #0 {
  %3 = alloca %struct.quat*, align 8
  %4 = alloca %struct.axisang*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct.quat* %0, %struct.quat** %3, align 8
  store %struct.axisang* %1, %struct.axisang** %4, align 8
  %7 = load %struct.axisang*, %struct.axisang** %4, align 8
  %8 = getelementptr inbounds %struct.axisang, %struct.axisang* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = fmul float %9, 5.000000e-01
  store float %10, float* %5, align 4
  %11 = load float, float* %5, align 4
  %12 = call float @sinf(float %11) #3
  store float %12, float* %6, align 4
  %13 = load %struct.axisang*, %struct.axisang** %4, align 8
  %14 = getelementptr inbounds %struct.axisang, %struct.axisang* %13, i32 0, i32 1
  %15 = load float, float* %14, align 4
  %16 = load float, float* %6, align 4
  %17 = fmul float %15, %16
  %18 = load %struct.quat*, %struct.quat** %3, align 8
  %19 = getelementptr inbounds %struct.quat, %struct.quat* %18, i32 0, i32 0
  store float %17, float* %19, align 4
  %20 = load %struct.axisang*, %struct.axisang** %4, align 8
  %21 = getelementptr inbounds %struct.axisang, %struct.axisang* %20, i32 0, i32 2
  %22 = load float, float* %21, align 4
  %23 = load float, float* %6, align 4
  %24 = fmul float %22, %23
  %25 = load %struct.quat*, %struct.quat** %3, align 8
  %26 = getelementptr inbounds %struct.quat, %struct.quat* %25, i32 0, i32 1
  store float %24, float* %26, align 4
  %27 = load %struct.axisang*, %struct.axisang** %4, align 8
  %28 = getelementptr inbounds %struct.axisang, %struct.axisang* %27, i32 0, i32 3
  %29 = load float, float* %28, align 4
  %30 = load float, float* %6, align 4
  %31 = fmul float %29, %30
  %32 = load %struct.quat*, %struct.quat** %3, align 8
  %33 = getelementptr inbounds %struct.quat, %struct.quat* %32, i32 0, i32 2
  store float %31, float* %33, align 4
  %34 = load float, float* %5, align 4
  %35 = call i32 @cosf(float %34)
  %36 = load %struct.quat*, %struct.quat** %3, align 8
  %37 = getelementptr inbounds %struct.quat, %struct.quat* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

declare dso_local i32 @cosf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
