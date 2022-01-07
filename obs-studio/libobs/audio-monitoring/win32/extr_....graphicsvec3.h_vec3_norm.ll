; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_....graphicsvec3.h_vec3_norm.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_....graphicsvec3.h_vec3_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec3*, %struct.vec3*)* @vec3_norm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vec3_norm(%struct.vec3* %0, %struct.vec3* %1) #0 {
  %3 = alloca %struct.vec3*, align 8
  %4 = alloca %struct.vec3*, align 8
  %5 = alloca float, align 4
  store %struct.vec3* %0, %struct.vec3** %3, align 8
  store %struct.vec3* %1, %struct.vec3** %4, align 8
  %6 = load %struct.vec3*, %struct.vec3** %4, align 8
  %7 = load %struct.vec3*, %struct.vec3** %4, align 8
  %8 = call float @vec3_dot(%struct.vec3* %6, %struct.vec3* %7)
  store float %8, float* %5, align 4
  %9 = load float, float* %5, align 4
  %10 = fcmp ogt float %9, 0.000000e+00
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.vec3*, %struct.vec3** %4, align 8
  %13 = getelementptr inbounds %struct.vec3, %struct.vec3* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load float, float* %5, align 4
  %16 = call float @sqrtf(float %15) #3
  %17 = fdiv float 1.000000e+00, %16
  %18 = call i32 @_mm_set1_ps(float %17)
  %19 = call i32 @_mm_mul_ps(i32 %14, i32 %18)
  br label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @_mm_setzero_ps()
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi i32 [ %19, %11 ], [ %21, %20 ]
  %24 = load %struct.vec3*, %struct.vec3** %3, align 8
  %25 = getelementptr inbounds %struct.vec3, %struct.vec3* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local float @vec3_dot(%struct.vec3*, %struct.vec3*) #1

declare dso_local i32 @_mm_mul_ps(i32, i32) #1

declare dso_local i32 @_mm_set1_ps(float) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local i32 @_mm_setzero_ps(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
