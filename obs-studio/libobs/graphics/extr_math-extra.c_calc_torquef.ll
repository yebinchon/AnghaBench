; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_calc_torquef.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_calc_torquef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EPSILON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @calc_torquef(float %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  %15 = load float, float* %7, align 4
  store float %15, float* %12, align 4
  %16 = load float, float* %7, align 4
  %17 = load float, float* %8, align 4
  %18 = load i32, i32* @EPSILON, align 4
  %19 = call i64 @close_float(float %16, float %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load float, float* %7, align 4
  store float %22, float* %6, align 4
  br label %74

23:                                               ; preds = %5
  %24 = load float, float* %8, align 4
  %25 = load float, float* %7, align 4
  %26 = fsub float %24, %25
  %27 = load float, float* %9, align 4
  %28 = fmul float %26, %27
  store float %28, float* %13, align 4
  %29 = load float, float* %13, align 4
  %30 = fcmp ogt float %29, 0.000000e+00
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %23
  %35 = load float, float* %13, align 4
  %36 = load float, float* %10, align 4
  %37 = fcmp olt float %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load float, float* %10, align 4
  store float %39, float* %13, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load float, float* %13, align 4
  %42 = load float, float* %11, align 4
  %43 = fmul float %41, %42
  %44 = load float, float* %12, align 4
  %45 = fadd float %44, %43
  store float %45, float* %12, align 4
  %46 = load float, float* %12, align 4
  %47 = load float, float* %8, align 4
  %48 = fcmp ogt float %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load float, float* %8, align 4
  store float %50, float* %12, align 4
  br label %51

51:                                               ; preds = %49, %40
  br label %72

52:                                               ; preds = %23
  %53 = load float, float* %13, align 4
  %54 = load float, float* %10, align 4
  %55 = fneg float %54
  %56 = fcmp ogt float %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load float, float* %10, align 4
  %59 = fneg float %58
  store float %59, float* %13, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load float, float* %13, align 4
  %62 = load float, float* %11, align 4
  %63 = fmul float %61, %62
  %64 = load float, float* %12, align 4
  %65 = fadd float %64, %63
  store float %65, float* %12, align 4
  %66 = load float, float* %12, align 4
  %67 = load float, float* %8, align 4
  %68 = fcmp olt float %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load float, float* %8, align 4
  store float %70, float* %12, align 4
  br label %71

71:                                               ; preds = %69, %60
  br label %72

72:                                               ; preds = %71, %51
  %73 = load float, float* %12, align 4
  store float %73, float* %6, align 4
  br label %74

74:                                               ; preds = %72, %21
  %75 = load float, float* %6, align 4
  ret float %75
}

declare dso_local i64 @close_float(float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
