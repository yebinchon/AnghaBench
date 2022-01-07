; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__distPtSeg.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__distPtSeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float, float, float)* @nvg__distPtSeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @nvg__distPtSeg(float %0, float %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %19 = load float, float* %11, align 4
  %20 = load float, float* %9, align 4
  %21 = fsub float %19, %20
  store float %21, float* %13, align 4
  %22 = load float, float* %12, align 4
  %23 = load float, float* %10, align 4
  %24 = fsub float %22, %23
  store float %24, float* %14, align 4
  %25 = load float, float* %7, align 4
  %26 = load float, float* %9, align 4
  %27 = fsub float %25, %26
  store float %27, float* %15, align 4
  %28 = load float, float* %8, align 4
  %29 = load float, float* %10, align 4
  %30 = fsub float %28, %29
  store float %30, float* %16, align 4
  %31 = load float, float* %13, align 4
  %32 = load float, float* %13, align 4
  %33 = fmul float %31, %32
  %34 = load float, float* %14, align 4
  %35 = load float, float* %14, align 4
  %36 = fmul float %34, %35
  %37 = fadd float %33, %36
  store float %37, float* %17, align 4
  %38 = load float, float* %13, align 4
  %39 = load float, float* %15, align 4
  %40 = fmul float %38, %39
  %41 = load float, float* %14, align 4
  %42 = load float, float* %16, align 4
  %43 = fmul float %41, %42
  %44 = fadd float %40, %43
  store float %44, float* %18, align 4
  %45 = load float, float* %17, align 4
  %46 = fcmp ogt float %45, 0.000000e+00
  br i1 %46, label %47, label %51

47:                                               ; preds = %6
  %48 = load float, float* %17, align 4
  %49 = load float, float* %18, align 4
  %50 = fdiv float %49, %48
  store float %50, float* %18, align 4
  br label %51

51:                                               ; preds = %47, %6
  %52 = load float, float* %18, align 4
  %53 = fcmp olt float %52, 0.000000e+00
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store float 0.000000e+00, float* %18, align 4
  br label %60

55:                                               ; preds = %51
  %56 = load float, float* %18, align 4
  %57 = fcmp ogt float %56, 1.000000e+00
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store float 1.000000e+00, float* %18, align 4
  br label %59

59:                                               ; preds = %58, %55
  br label %60

60:                                               ; preds = %59, %54
  %61 = load float, float* %9, align 4
  %62 = load float, float* %18, align 4
  %63 = load float, float* %13, align 4
  %64 = fmul float %62, %63
  %65 = fadd float %61, %64
  %66 = load float, float* %7, align 4
  %67 = fsub float %65, %66
  store float %67, float* %15, align 4
  %68 = load float, float* %10, align 4
  %69 = load float, float* %18, align 4
  %70 = load float, float* %14, align 4
  %71 = fmul float %69, %70
  %72 = fadd float %68, %71
  %73 = load float, float* %8, align 4
  %74 = fsub float %72, %73
  store float %74, float* %16, align 4
  %75 = load float, float* %15, align 4
  %76 = load float, float* %15, align 4
  %77 = fmul float %75, %76
  %78 = load float, float* %16, align 4
  %79 = load float, float* %16, align 4
  %80 = fmul float %78, %79
  %81 = fadd float %77, %80
  ret float %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
