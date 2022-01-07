; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_hardcopy.c_prt_get_lpp.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_hardcopy.c_prt_get_lpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double }

@prt_line_height = common dso_local global float 0.000000e+00, align 4
@prt_ps_font = common dso_local global %struct.TYPE_2__* null, align 8
@prt_bgcol_offset = common dso_local global float 0.000000e+00, align 4
@prt_first_line_height = common dso_local global float 0.000000e+00, align 4
@prt_top_margin = common dso_local global float 0.000000e+00, align 4
@prt_bottom_margin = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @prt_get_lpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prt_get_lpp() #0 {
  %1 = alloca i32, align 4
  %2 = load float, float* @prt_line_height, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prt_ps_font, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = call i64 @PRT_PS_FONT_TO_USER(float %2, double %5)
  %7 = sitofp i64 %6 to float
  store float %7, float* @prt_bgcol_offset, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prt_ps_font, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prt_ps_font, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = fsub double %10, %13
  %15 = fcmp olt double %14, 1.000000e+03
  br i1 %15, label %16, label %31

16:                                               ; preds = %0
  %17 = load float, float* @prt_line_height, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prt_ps_font, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prt_ps_font, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = fsub double %20, %23
  %25 = fsub double 1.000000e+03, %24
  %26 = fdiv double %25, 2.000000e+00
  %27 = call i64 @PRT_PS_FONT_TO_USER(float %17, double %26)
  %28 = sitofp i64 %27 to float
  %29 = load float, float* @prt_bgcol_offset, align 4
  %30 = fsub float %29, %28
  store float %30, float* @prt_bgcol_offset, align 4
  br label %31

31:                                               ; preds = %16, %0
  %32 = load float, float* @prt_line_height, align 4
  %33 = load float, float* @prt_bgcol_offset, align 4
  %34 = fadd float %32, %33
  store float %34, float* @prt_first_line_height, align 4
  %35 = load float, float* @prt_top_margin, align 4
  %36 = load float, float* @prt_bottom_margin, align 4
  %37 = fsub float %35, %36
  %38 = load float, float* @prt_line_height, align 4
  %39 = fdiv float %37, %38
  %40 = fptosi float %39 to i32
  store i32 %40, i32* %1, align 4
  %41 = load float, float* @prt_line_height, align 4
  %42 = call i32 (...) @prt_header_height()
  %43 = sitofp i32 %42 to float
  %44 = fmul float %41, %43
  %45 = load float, float* @prt_top_margin, align 4
  %46 = fsub float %45, %44
  store float %46, float* @prt_top_margin, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 (...) @prt_header_height()
  %49 = sub nsw i32 %47, %48
  ret i32 %49
}

declare dso_local i64 @PRT_PS_FONT_TO_USER(float, double) #1

declare dso_local i32 @prt_header_height(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
