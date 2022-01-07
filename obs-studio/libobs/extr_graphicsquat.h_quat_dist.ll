; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsquat.h_quat_dist.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsquat.h_quat_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.quat*, %struct.quat*)* @quat_dist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @quat_dist(%struct.quat* %0, %struct.quat* %1) #0 {
  %3 = alloca %struct.quat*, align 8
  %4 = alloca %struct.quat*, align 8
  %5 = alloca %struct.quat, align 4
  %6 = alloca float, align 4
  store %struct.quat* %0, %struct.quat** %3, align 8
  store %struct.quat* %1, %struct.quat** %4, align 8
  %7 = load %struct.quat*, %struct.quat** %3, align 8
  %8 = load %struct.quat*, %struct.quat** %4, align 8
  %9 = call i32 @quat_sub(%struct.quat* %5, %struct.quat* %7, %struct.quat* %8)
  %10 = call float @quat_dot(%struct.quat* %5, %struct.quat* %5)
  store float %10, float* %6, align 4
  %11 = load float, float* %6, align 4
  %12 = fcmp ogt float %11, 0.000000e+00
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load float, float* %6, align 4
  %15 = call float @sqrtf(float %14) #3
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi float [ %15, %13 ], [ 0.000000e+00, %16 ]
  ret float %18
}

declare dso_local i32 @quat_sub(%struct.quat*, %struct.quat*, %struct.quat*) #1

declare dso_local float @quat_dot(%struct.quat*, %struct.quat*) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
