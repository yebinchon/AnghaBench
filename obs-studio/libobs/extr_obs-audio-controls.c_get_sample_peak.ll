; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_get_sample_peak.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_get_sample_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, float*, i64)* @get_sample_peak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @get_sample_peak(i32 %0, float* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %26, %3
  %13 = load i64, i64* %8, align 8
  %14 = add i64 %13, 3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load float*, float** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds float, float* %18, i64 %19
  %21 = call i32 @_mm_load_ps(float* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @abs_ps(i32 %23)
  %25 = call i32 @_mm_max_ps(i32 %22, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %8, align 8
  br label %12

29:                                               ; preds = %12
  %30 = load float, float* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @hmax_ps(float %30, i32 %31)
  %33 = load float, float* %10, align 4
  ret float %33
}

declare dso_local i32 @_mm_load_ps(float*) #1

declare dso_local i32 @_mm_max_ps(i32, i32) #1

declare dso_local i32 @abs_ps(i32) #1

declare dso_local i32 @hmax_ps(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
