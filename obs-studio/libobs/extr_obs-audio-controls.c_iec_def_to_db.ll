; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_iec_def_to_db.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_iec_def_to_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @iec_def_to_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @iec_def_to_db(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  %5 = load float, float* %3, align 4
  %6 = fcmp oeq float %5, 1.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store float 0.000000e+00, float* %2, align 4
  br label %88

8:                                                ; preds = %1
  %9 = load float, float* %3, align 4
  %10 = fcmp ole float %9, 0.000000e+00
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load float, float* @INFINITY, align 4
  %13 = fneg float %12
  store float %13, float* %2, align 4
  br label %88

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14
  %16 = load float, float* %3, align 4
  %17 = fcmp oge float %16, 7.500000e-01
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load float, float* %3, align 4
  %20 = fsub float %19, 1.000000e+00
  %21 = fdiv float %20, 2.500000e-01
  %22 = fmul float %21, 9.000000e+00
  store float %22, float* %4, align 4
  br label %86

23:                                               ; preds = %15
  %24 = load float, float* %3, align 4
  %25 = fcmp oge float %24, 5.000000e-01
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load float, float* %3, align 4
  %28 = fsub float %27, 7.500000e-01
  %29 = fdiv float %28, 2.500000e-01
  %30 = fmul float %29, 1.100000e+01
  %31 = fsub float %30, 9.000000e+00
  store float %31, float* %4, align 4
  br label %85

32:                                               ; preds = %23
  %33 = load float, float* %3, align 4
  %34 = fcmp oge float %33, 0x3FD3333340000000
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load float, float* %3, align 4
  %37 = fsub float %36, 5.000000e-01
  %38 = fdiv float %37, 0x3FC99999A0000000
  %39 = fmul float %38, 1.000000e+01
  %40 = fsub float %39, 2.000000e+01
  store float %40, float* %4, align 4
  br label %84

41:                                               ; preds = %32
  %42 = load float, float* %3, align 4
  %43 = fcmp oge float %42, 0x3FC3333340000000
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load float, float* %3, align 4
  %46 = fsub float %45, 0x3FD3333340000000
  %47 = fdiv float %46, 0x3FC3333340000000
  %48 = fmul float %47, 1.000000e+01
  %49 = fsub float %48, 3.000000e+01
  store float %49, float* %4, align 4
  br label %83

50:                                               ; preds = %41
  %51 = load float, float* %3, align 4
  %52 = fcmp oge float %51, 0x3FB3333340000000
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load float, float* %3, align 4
  %55 = fsub float %54, 0x3FC3333340000000
  %56 = fdiv float %55, 0x3FB3333340000000
  %57 = fmul float %56, 1.000000e+01
  %58 = fsub float %57, 4.000000e+01
  store float %58, float* %4, align 4
  br label %82

59:                                               ; preds = %50
  %60 = load float, float* %3, align 4
  %61 = fcmp oge float %60, 0x3F999999A0000000
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load float, float* %3, align 4
  %64 = fsub float %63, 0x3FB3333340000000
  %65 = fdiv float %64, 0x3FA99999A0000000
  %66 = fmul float %65, 1.000000e+01
  %67 = fsub float %66, 5.000000e+01
  store float %67, float* %4, align 4
  br label %81

68:                                               ; preds = %59
  %69 = load float, float* %3, align 4
  %70 = fcmp oge float %69, 0x3F50624DE0000000
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load float, float* %3, align 4
  %73 = fsub float %72, 0x3F999999A0000000
  %74 = fdiv float %73, 0x3F999999A0000000
  %75 = fmul float %74, 9.000000e+01
  %76 = fsub float %75, 6.000000e+01
  store float %76, float* %4, align 4
  br label %80

77:                                               ; preds = %68
  %78 = load float, float* @INFINITY, align 4
  %79 = fneg float %78
  store float %79, float* %4, align 4
  br label %80

80:                                               ; preds = %77, %71
  br label %81

81:                                               ; preds = %80, %62
  br label %82

82:                                               ; preds = %81, %53
  br label %83

83:                                               ; preds = %82, %44
  br label %84

84:                                               ; preds = %83, %35
  br label %85

85:                                               ; preds = %84, %26
  br label %86

86:                                               ; preds = %85, %18
  %87 = load float, float* %4, align 4
  store float %87, float* %2, align 4
  br label %88

88:                                               ; preds = %86, %11, %7
  %89 = load float, float* %2, align 4
  ret float %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
