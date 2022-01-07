; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slas2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slas2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slas2_.c__ = internal global float 0.000000e+00, align 4
@slas2_.fa = internal global float 0.000000e+00, align 4
@slas2_.ga = internal global float 0.000000e+00, align 4
@slas2_.ha = internal global float 0.000000e+00, align 4
@slas2_.as = internal global float 0.000000e+00, align 4
@slas2_.at = internal global float 0.000000e+00, align 4
@slas2_.au = internal global float 0.000000e+00, align 4
@slas2_.fhmn = internal global float 0.000000e+00, align 4
@slas2_.fhmx = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slas2_(float* %0, float* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %13 = load float*, float** %6, align 8
  %14 = load float, float* %13, align 4
  %15 = call float @dabs(float %14)
  store float %15, float* @slas2_.fa, align 4
  %16 = load float*, float** %7, align 8
  %17 = load float, float* %16, align 4
  %18 = call float @dabs(float %17)
  store float %18, float* @slas2_.ga, align 4
  %19 = load float*, float** %8, align 8
  %20 = load float, float* %19, align 4
  %21 = call float @dabs(float %20)
  store float %21, float* @slas2_.ha, align 4
  %22 = load float, float* @slas2_.fa, align 4
  %23 = load float, float* @slas2_.ha, align 4
  %24 = call float @dmin(float %22, float %23)
  store float %24, float* @slas2_.fhmn, align 4
  %25 = load float, float* @slas2_.fa, align 4
  %26 = load float, float* @slas2_.ha, align 4
  %27 = call float @dmax(float %25, float %26)
  store float %27, float* @slas2_.fhmx, align 4
  %28 = load float, float* @slas2_.fhmn, align 4
  %29 = fcmp oeq float %28, 0.000000e+00
  br i1 %29, label %30, label %56

30:                                               ; preds = %5
  %31 = load float*, float** %9, align 8
  store float 0.000000e+00, float* %31, align 4
  %32 = load float, float* @slas2_.fhmx, align 4
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load float, float* @slas2_.ga, align 4
  %36 = load float*, float** %10, align 8
  store float %35, float* %36, align 4
  br label %55

37:                                               ; preds = %30
  %38 = load float, float* @slas2_.fhmx, align 4
  %39 = load float, float* @slas2_.ga, align 4
  %40 = call float @dmin(float %38, float %39)
  %41 = load float, float* @slas2_.fhmx, align 4
  %42 = load float, float* @slas2_.ga, align 4
  %43 = call float @dmax(float %41, float %42)
  %44 = fdiv float %40, %43
  store float %44, float* %11, align 4
  %45 = load float, float* @slas2_.fhmx, align 4
  %46 = load float, float* @slas2_.ga, align 4
  %47 = call float @dmax(float %45, float %46)
  %48 = load float, float* %11, align 4
  %49 = load float, float* %11, align 4
  %50 = fmul float %48, %49
  %51 = fadd float %50, 1.000000e+00
  %52 = call float @sqrt(float %51)
  %53 = fmul float %47, %52
  %54 = load float*, float** %10, align 8
  store float %53, float* %54, align 4
  br label %55

55:                                               ; preds = %37, %34
  br label %160

56:                                               ; preds = %5
  %57 = load float, float* @slas2_.ga, align 4
  %58 = load float, float* @slas2_.fhmx, align 4
  %59 = fcmp olt float %57, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %56
  %61 = load float, float* @slas2_.fhmn, align 4
  %62 = load float, float* @slas2_.fhmx, align 4
  %63 = fdiv float %61, %62
  %64 = fadd float %63, 1.000000e+00
  store float %64, float* @slas2_.as, align 4
  %65 = load float, float* @slas2_.fhmx, align 4
  %66 = load float, float* @slas2_.fhmn, align 4
  %67 = fsub float %65, %66
  %68 = load float, float* @slas2_.fhmx, align 4
  %69 = fdiv float %67, %68
  store float %69, float* @slas2_.at, align 4
  %70 = load float, float* @slas2_.ga, align 4
  %71 = load float, float* @slas2_.fhmx, align 4
  %72 = fdiv float %70, %71
  store float %72, float* %11, align 4
  %73 = load float, float* %11, align 4
  %74 = load float, float* %11, align 4
  %75 = fmul float %73, %74
  store float %75, float* @slas2_.au, align 4
  %76 = load float, float* @slas2_.as, align 4
  %77 = load float, float* @slas2_.as, align 4
  %78 = fmul float %76, %77
  %79 = load float, float* @slas2_.au, align 4
  %80 = fadd float %78, %79
  %81 = call float @sqrt(float %80)
  %82 = load float, float* @slas2_.at, align 4
  %83 = load float, float* @slas2_.at, align 4
  %84 = fmul float %82, %83
  %85 = load float, float* @slas2_.au, align 4
  %86 = fadd float %84, %85
  %87 = call float @sqrt(float %86)
  %88 = fadd float %81, %87
  %89 = fdiv float 2.000000e+00, %88
  store float %89, float* @slas2_.c__, align 4
  %90 = load float, float* @slas2_.fhmn, align 4
  %91 = load float, float* @slas2_.c__, align 4
  %92 = fmul float %90, %91
  %93 = load float*, float** %9, align 8
  store float %92, float* %93, align 4
  %94 = load float, float* @slas2_.fhmx, align 4
  %95 = load float, float* @slas2_.c__, align 4
  %96 = fdiv float %94, %95
  %97 = load float*, float** %10, align 8
  store float %96, float* %97, align 4
  br label %159

98:                                               ; preds = %56
  %99 = load float, float* @slas2_.fhmx, align 4
  %100 = load float, float* @slas2_.ga, align 4
  %101 = fdiv float %99, %100
  store float %101, float* @slas2_.au, align 4
  %102 = load float, float* @slas2_.au, align 4
  %103 = fcmp oeq float %102, 0.000000e+00
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load float, float* @slas2_.fhmn, align 4
  %106 = load float, float* @slas2_.fhmx, align 4
  %107 = fmul float %105, %106
  %108 = load float, float* @slas2_.ga, align 4
  %109 = fdiv float %107, %108
  %110 = load float*, float** %9, align 8
  store float %109, float* %110, align 4
  %111 = load float, float* @slas2_.ga, align 4
  %112 = load float*, float** %10, align 8
  store float %111, float* %112, align 4
  br label %158

113:                                              ; preds = %98
  %114 = load float, float* @slas2_.fhmn, align 4
  %115 = load float, float* @slas2_.fhmx, align 4
  %116 = fdiv float %114, %115
  %117 = fadd float %116, 1.000000e+00
  store float %117, float* @slas2_.as, align 4
  %118 = load float, float* @slas2_.fhmx, align 4
  %119 = load float, float* @slas2_.fhmn, align 4
  %120 = fsub float %118, %119
  %121 = load float, float* @slas2_.fhmx, align 4
  %122 = fdiv float %120, %121
  store float %122, float* @slas2_.at, align 4
  %123 = load float, float* @slas2_.as, align 4
  %124 = load float, float* @slas2_.au, align 4
  %125 = fmul float %123, %124
  store float %125, float* %11, align 4
  %126 = load float, float* @slas2_.at, align 4
  %127 = load float, float* @slas2_.au, align 4
  %128 = fmul float %126, %127
  store float %128, float* %12, align 4
  %129 = load float, float* %11, align 4
  %130 = load float, float* %11, align 4
  %131 = fmul float %129, %130
  %132 = fadd float %131, 1.000000e+00
  %133 = call float @sqrt(float %132)
  %134 = load float, float* %12, align 4
  %135 = load float, float* %12, align 4
  %136 = fmul float %134, %135
  %137 = fadd float %136, 1.000000e+00
  %138 = call float @sqrt(float %137)
  %139 = fadd float %133, %138
  %140 = fdiv float 1.000000e+00, %139
  store float %140, float* @slas2_.c__, align 4
  %141 = load float, float* @slas2_.fhmn, align 4
  %142 = load float, float* @slas2_.c__, align 4
  %143 = fmul float %141, %142
  %144 = load float, float* @slas2_.au, align 4
  %145 = fmul float %143, %144
  %146 = load float*, float** %9, align 8
  store float %145, float* %146, align 4
  %147 = load float*, float** %9, align 8
  %148 = load float, float* %147, align 4
  %149 = load float*, float** %9, align 8
  %150 = load float, float* %149, align 4
  %151 = fadd float %150, %148
  store float %151, float* %149, align 4
  %152 = load float, float* @slas2_.ga, align 4
  %153 = load float, float* @slas2_.c__, align 4
  %154 = load float, float* @slas2_.c__, align 4
  %155 = fadd float %153, %154
  %156 = fdiv float %152, %155
  %157 = load float*, float** %10, align 8
  store float %156, float* %157, align 4
  br label %158

158:                                              ; preds = %113, %104
  br label %159

159:                                              ; preds = %158, %60
  br label %160

160:                                              ; preds = %159, %55
  ret i32 0
}

declare dso_local float @dabs(float) #1

declare dso_local float @dmin(float, float) #1

declare dso_local float @dmax(float, float) #1

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
