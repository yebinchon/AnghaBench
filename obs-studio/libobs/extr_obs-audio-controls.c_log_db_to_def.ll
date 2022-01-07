; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_log_db_to_def.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_log_db_to_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_OFFSET_DB = common dso_local global i64 0, align 8
@LOG_RANGE_VAL = common dso_local global float 0.000000e+00, align 4
@LOG_OFFSET_VAL = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @log_db_to_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @log_db_to_def(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = fcmp oge float %4, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store float 1.000000e+00, float* %2, align 4
  br label %27

7:                                                ; preds = %1
  %8 = load float, float* %3, align 4
  %9 = fcmp ole float %8, -9.600000e+01
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store float 0.000000e+00, float* %2, align 4
  br label %27

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11
  %13 = load float, float* %3, align 4
  %14 = fneg float %13
  %15 = load i64, i64* @LOG_OFFSET_DB, align 8
  %16 = sitofp i64 %15 to float
  %17 = fadd float %14, %16
  %18 = fptosi float %17 to i64
  %19 = call float @log10f(i64 %18)
  %20 = fneg float %19
  %21 = load float, float* @LOG_RANGE_VAL, align 4
  %22 = fsub float %20, %21
  %23 = load float, float* @LOG_OFFSET_VAL, align 4
  %24 = load float, float* @LOG_RANGE_VAL, align 4
  %25 = fsub float %23, %24
  %26 = fdiv float %22, %25
  store float %26, float* %2, align 4
  br label %27

27:                                               ; preds = %12, %10, %6
  %28 = load float, float* %2, align 4
  ret float %28
}

declare dso_local float @log10f(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
