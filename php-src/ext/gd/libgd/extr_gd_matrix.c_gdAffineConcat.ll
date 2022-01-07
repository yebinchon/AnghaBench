; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineConcat.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineConcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GD_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdAffineConcat(double* %0, double* %1, double* %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %13 = load double*, double** %5, align 8
  %14 = getelementptr inbounds double, double* %13, i64 0
  %15 = load double, double* %14, align 8
  %16 = load double*, double** %6, align 8
  %17 = getelementptr inbounds double, double* %16, i64 0
  %18 = load double, double* %17, align 8
  %19 = fmul double %15, %18
  %20 = load double*, double** %5, align 8
  %21 = getelementptr inbounds double, double* %20, i64 1
  %22 = load double, double* %21, align 8
  %23 = load double*, double** %6, align 8
  %24 = getelementptr inbounds double, double* %23, i64 2
  %25 = load double, double* %24, align 8
  %26 = fmul double %22, %25
  %27 = fadd double %19, %26
  store double %27, double* %7, align 8
  %28 = load double*, double** %5, align 8
  %29 = getelementptr inbounds double, double* %28, i64 0
  %30 = load double, double* %29, align 8
  %31 = load double*, double** %6, align 8
  %32 = getelementptr inbounds double, double* %31, i64 1
  %33 = load double, double* %32, align 8
  %34 = fmul double %30, %33
  %35 = load double*, double** %5, align 8
  %36 = getelementptr inbounds double, double* %35, i64 1
  %37 = load double, double* %36, align 8
  %38 = load double*, double** %6, align 8
  %39 = getelementptr inbounds double, double* %38, i64 3
  %40 = load double, double* %39, align 8
  %41 = fmul double %37, %40
  %42 = fadd double %34, %41
  store double %42, double* %8, align 8
  %43 = load double*, double** %5, align 8
  %44 = getelementptr inbounds double, double* %43, i64 2
  %45 = load double, double* %44, align 8
  %46 = load double*, double** %6, align 8
  %47 = getelementptr inbounds double, double* %46, i64 0
  %48 = load double, double* %47, align 8
  %49 = fmul double %45, %48
  %50 = load double*, double** %5, align 8
  %51 = getelementptr inbounds double, double* %50, i64 3
  %52 = load double, double* %51, align 8
  %53 = load double*, double** %6, align 8
  %54 = getelementptr inbounds double, double* %53, i64 2
  %55 = load double, double* %54, align 8
  %56 = fmul double %52, %55
  %57 = fadd double %49, %56
  store double %57, double* %9, align 8
  %58 = load double*, double** %5, align 8
  %59 = getelementptr inbounds double, double* %58, i64 2
  %60 = load double, double* %59, align 8
  %61 = load double*, double** %6, align 8
  %62 = getelementptr inbounds double, double* %61, i64 1
  %63 = load double, double* %62, align 8
  %64 = fmul double %60, %63
  %65 = load double*, double** %5, align 8
  %66 = getelementptr inbounds double, double* %65, i64 3
  %67 = load double, double* %66, align 8
  %68 = load double*, double** %6, align 8
  %69 = getelementptr inbounds double, double* %68, i64 3
  %70 = load double, double* %69, align 8
  %71 = fmul double %67, %70
  %72 = fadd double %64, %71
  store double %72, double* %10, align 8
  %73 = load double*, double** %5, align 8
  %74 = getelementptr inbounds double, double* %73, i64 4
  %75 = load double, double* %74, align 8
  %76 = load double*, double** %6, align 8
  %77 = getelementptr inbounds double, double* %76, i64 0
  %78 = load double, double* %77, align 8
  %79 = fmul double %75, %78
  %80 = load double*, double** %5, align 8
  %81 = getelementptr inbounds double, double* %80, i64 5
  %82 = load double, double* %81, align 8
  %83 = load double*, double** %6, align 8
  %84 = getelementptr inbounds double, double* %83, i64 2
  %85 = load double, double* %84, align 8
  %86 = fmul double %82, %85
  %87 = fadd double %79, %86
  %88 = load double*, double** %6, align 8
  %89 = getelementptr inbounds double, double* %88, i64 4
  %90 = load double, double* %89, align 8
  %91 = fadd double %87, %90
  store double %91, double* %11, align 8
  %92 = load double*, double** %5, align 8
  %93 = getelementptr inbounds double, double* %92, i64 4
  %94 = load double, double* %93, align 8
  %95 = load double*, double** %6, align 8
  %96 = getelementptr inbounds double, double* %95, i64 1
  %97 = load double, double* %96, align 8
  %98 = fmul double %94, %97
  %99 = load double*, double** %5, align 8
  %100 = getelementptr inbounds double, double* %99, i64 5
  %101 = load double, double* %100, align 8
  %102 = load double*, double** %6, align 8
  %103 = getelementptr inbounds double, double* %102, i64 3
  %104 = load double, double* %103, align 8
  %105 = fmul double %101, %104
  %106 = fadd double %98, %105
  %107 = load double*, double** %6, align 8
  %108 = getelementptr inbounds double, double* %107, i64 5
  %109 = load double, double* %108, align 8
  %110 = fadd double %106, %109
  store double %110, double* %12, align 8
  %111 = load double, double* %7, align 8
  %112 = load double*, double** %4, align 8
  %113 = getelementptr inbounds double, double* %112, i64 0
  store double %111, double* %113, align 8
  %114 = load double, double* %8, align 8
  %115 = load double*, double** %4, align 8
  %116 = getelementptr inbounds double, double* %115, i64 1
  store double %114, double* %116, align 8
  %117 = load double, double* %9, align 8
  %118 = load double*, double** %4, align 8
  %119 = getelementptr inbounds double, double* %118, i64 2
  store double %117, double* %119, align 8
  %120 = load double, double* %10, align 8
  %121 = load double*, double** %4, align 8
  %122 = getelementptr inbounds double, double* %121, i64 3
  store double %120, double* %122, align 8
  %123 = load double, double* %11, align 8
  %124 = load double*, double** %4, align 8
  %125 = getelementptr inbounds double, double* %124, i64 4
  store double %123, double* %125, align 8
  %126 = load double, double* %12, align 8
  %127 = load double*, double** %4, align 8
  %128 = getelementptr inbounds double, double* %127, i64 5
  store double %126, double* %128, align 8
  %129 = load i32, i32* @GD_TRUE, align 4
  ret i32 %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
