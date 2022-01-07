; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_is_identity.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_matrix.c_is_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_TRUE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*)* @is_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_identity(float* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float*, align 8
  store float* %0, float** %3, align 8
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds float, float* %4, i64 0
  %6 = load float, float* %5, align 4
  %7 = fcmp oeq float %6, 1.000000e+00
  br i1 %7, label %8, label %85

8:                                                ; preds = %1
  %9 = load float*, float** %3, align 8
  %10 = getelementptr inbounds float, float* %9, i64 4
  %11 = load float, float* %10, align 4
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %13, label %85

13:                                               ; preds = %8
  %14 = load float*, float** %3, align 8
  %15 = getelementptr inbounds float, float* %14, i64 8
  %16 = load float, float* %15, align 4
  %17 = fcmp oeq float %16, 0.000000e+00
  br i1 %17, label %18, label %85

18:                                               ; preds = %13
  %19 = load float*, float** %3, align 8
  %20 = getelementptr inbounds float, float* %19, i64 12
  %21 = load float, float* %20, align 4
  %22 = fcmp oeq float %21, 0.000000e+00
  br i1 %22, label %23, label %85

23:                                               ; preds = %18
  %24 = load float*, float** %3, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %28, label %85

28:                                               ; preds = %23
  %29 = load float*, float** %3, align 8
  %30 = getelementptr inbounds float, float* %29, i64 5
  %31 = load float, float* %30, align 4
  %32 = fcmp oeq float %31, 1.000000e+00
  br i1 %32, label %33, label %85

33:                                               ; preds = %28
  %34 = load float*, float** %3, align 8
  %35 = getelementptr inbounds float, float* %34, i64 9
  %36 = load float, float* %35, align 4
  %37 = fcmp oeq float %36, 0.000000e+00
  br i1 %37, label %38, label %85

38:                                               ; preds = %33
  %39 = load float*, float** %3, align 8
  %40 = getelementptr inbounds float, float* %39, i64 13
  %41 = load float, float* %40, align 4
  %42 = fcmp oeq float %41, 0.000000e+00
  br i1 %42, label %43, label %85

43:                                               ; preds = %38
  %44 = load float*, float** %3, align 8
  %45 = getelementptr inbounds float, float* %44, i64 2
  %46 = load float, float* %45, align 4
  %47 = fcmp oeq float %46, 0.000000e+00
  br i1 %47, label %48, label %85

48:                                               ; preds = %43
  %49 = load float*, float** %3, align 8
  %50 = getelementptr inbounds float, float* %49, i64 6
  %51 = load float, float* %50, align 4
  %52 = fcmp oeq float %51, 0.000000e+00
  br i1 %52, label %53, label %85

53:                                               ; preds = %48
  %54 = load float*, float** %3, align 8
  %55 = getelementptr inbounds float, float* %54, i64 10
  %56 = load float, float* %55, align 4
  %57 = fcmp oeq float %56, 1.000000e+00
  br i1 %57, label %58, label %85

58:                                               ; preds = %53
  %59 = load float*, float** %3, align 8
  %60 = getelementptr inbounds float, float* %59, i64 14
  %61 = load float, float* %60, align 4
  %62 = fcmp oeq float %61, 0.000000e+00
  br i1 %62, label %63, label %85

63:                                               ; preds = %58
  %64 = load float*, float** %3, align 8
  %65 = getelementptr inbounds float, float* %64, i64 3
  %66 = load float, float* %65, align 4
  %67 = fcmp oeq float %66, 0.000000e+00
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load float*, float** %3, align 8
  %70 = getelementptr inbounds float, float* %69, i64 7
  %71 = load float, float* %70, align 4
  %72 = fcmp oeq float %71, 0.000000e+00
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load float*, float** %3, align 8
  %75 = getelementptr inbounds float, float* %74, i64 11
  %76 = load float, float* %75, align 4
  %77 = fcmp oeq float %76, 0.000000e+00
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load float*, float** %3, align 8
  %80 = getelementptr inbounds float, float* %79, i64 15
  %81 = load float, float* %80, align 4
  %82 = fcmp oeq float %81, 1.000000e+00
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @GL_TRUE, align 4
  store i32 %84, i32* %2, align 4
  br label %87

85:                                               ; preds = %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %18, %13, %8, %1
  %86 = load i32, i32* @GL_FALSE, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
