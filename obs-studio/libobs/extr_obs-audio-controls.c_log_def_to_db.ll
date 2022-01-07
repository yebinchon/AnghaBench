; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_log_def_to_db.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_log_def_to_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global float 0.000000e+00, align 4
@LOG_RANGE_DB = common dso_local global float 0.000000e+00, align 4
@LOG_OFFSET_DB = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @log_def_to_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @log_def_to_db(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = fcmp oge float %4, 1.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store float 0.000000e+00, float* %2, align 4
  br label %30

7:                                                ; preds = %1
  %8 = load float, float* %3, align 4
  %9 = fcmp ole float %8, 0.000000e+00
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load float, float* @INFINITY, align 4
  %12 = fneg float %11
  store float %12, float* %2, align 4
  br label %30

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = load float, float* @LOG_RANGE_DB, align 4
  %16 = load float, float* @LOG_OFFSET_DB, align 4
  %17 = fadd float %15, %16
  %18 = fneg float %17
  %19 = load float, float* @LOG_RANGE_DB, align 4
  %20 = load float, float* @LOG_OFFSET_DB, align 4
  %21 = fadd float %19, %20
  %22 = load float, float* @LOG_OFFSET_DB, align 4
  %23 = fdiv float %21, %22
  %24 = load float, float* %3, align 4
  %25 = fneg float %24
  %26 = call float @powf(float %23, float %25) #2
  %27 = fmul float %18, %26
  %28 = load float, float* @LOG_OFFSET_DB, align 4
  %29 = fadd float %27, %28
  store float %29, float* %2, align 4
  br label %30

30:                                               ; preds = %14, %10, %6
  %31 = load float, float* %2, align 4
  ret float %31
}

; Function Attrs: nounwind
declare dso_local float @powf(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
