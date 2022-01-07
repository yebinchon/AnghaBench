; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_iec_db_to_def.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_iec_db_to_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @iec_db_to_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @iec_db_to_def(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  %5 = load float, float* %3, align 4
  %6 = fcmp oeq float %5, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store float 1.000000e+00, float* %2, align 4
  br label %86

8:                                                ; preds = %1
  %9 = load float, float* %3, align 4
  %10 = load float, float* @INFINITY, align 4
  %11 = fneg float %10
  %12 = fcmp oeq float %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store float 0.000000e+00, float* %2, align 4
  br label %86

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14
  %16 = load float, float* %3, align 4
  %17 = fcmp oge float %16, -9.000000e+00
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load float, float* %3, align 4
  %20 = fadd float %19, 9.000000e+00
  %21 = fdiv float %20, 9.000000e+00
  %22 = fmul float %21, 2.500000e-01
  %23 = fadd float %22, 7.500000e-01
  store float %23, float* %4, align 4
  br label %84

24:                                               ; preds = %15
  %25 = load float, float* %3, align 4
  %26 = fcmp oge float %25, -2.000000e+01
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load float, float* %3, align 4
  %29 = fadd float %28, 2.000000e+01
  %30 = fdiv float %29, 1.100000e+01
  %31 = fmul float %30, 2.500000e-01
  %32 = fadd float %31, 5.000000e-01
  store float %32, float* %4, align 4
  br label %83

33:                                               ; preds = %24
  %34 = load float, float* %3, align 4
  %35 = fcmp oge float %34, -3.000000e+01
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load float, float* %3, align 4
  %38 = fadd float %37, 3.000000e+01
  %39 = fdiv float %38, 1.000000e+01
  %40 = fmul float %39, 0x3FC99999A0000000
  %41 = fadd float %40, 0x3FD3333340000000
  store float %41, float* %4, align 4
  br label %82

42:                                               ; preds = %33
  %43 = load float, float* %3, align 4
  %44 = fcmp oge float %43, -4.000000e+01
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load float, float* %3, align 4
  %47 = fadd float %46, 4.000000e+01
  %48 = fdiv float %47, 1.000000e+01
  %49 = fmul float %48, 0x3FC3333340000000
  %50 = fadd float %49, 0x3FC3333340000000
  store float %50, float* %4, align 4
  br label %81

51:                                               ; preds = %42
  %52 = load float, float* %3, align 4
  %53 = fcmp oge float %52, -5.000000e+01
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load float, float* %3, align 4
  %56 = fadd float %55, 5.000000e+01
  %57 = fdiv float %56, 1.000000e+01
  %58 = fmul float %57, 0x3FB3333340000000
  %59 = fadd float %58, 0x3FB3333340000000
  store float %59, float* %4, align 4
  br label %80

60:                                               ; preds = %51
  %61 = load float, float* %3, align 4
  %62 = fcmp oge float %61, -6.000000e+01
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load float, float* %3, align 4
  %65 = fadd float %64, 6.000000e+01
  %66 = fdiv float %65, 1.000000e+01
  %67 = fmul float %66, 0x3FA99999A0000000
  %68 = fadd float %67, 0x3F999999A0000000
  store float %68, float* %4, align 4
  br label %79

69:                                               ; preds = %60
  %70 = load float, float* %3, align 4
  %71 = fcmp oge float %70, -1.140000e+02
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load float, float* %3, align 4
  %74 = fadd float %73, 1.500000e+02
  %75 = fdiv float %74, 9.000000e+01
  %76 = fmul float %75, 0x3F999999A0000000
  store float %76, float* %4, align 4
  br label %78

77:                                               ; preds = %69
  store float 0.000000e+00, float* %4, align 4
  br label %78

78:                                               ; preds = %77, %72
  br label %79

79:                                               ; preds = %78, %63
  br label %80

80:                                               ; preds = %79, %54
  br label %81

81:                                               ; preds = %80, %45
  br label %82

82:                                               ; preds = %81, %36
  br label %83

83:                                               ; preds = %82, %27
  br label %84

84:                                               ; preds = %83, %18
  %85 = load float, float* %4, align 4
  store float %85, float* %2, align 4
  br label %86

86:                                               ; preds = %84, %13, %7
  %87 = load float, float* %2, align 4
  ret float %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
