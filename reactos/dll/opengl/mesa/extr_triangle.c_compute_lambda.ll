; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_triangle.c_compute_lambda.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_triangle.c_compute_lambda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double, double, double, double, double, double, double, double, double)* @compute_lambda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @compute_lambda(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9, double %10) #0 {
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  store double %0, double* %13, align 8
  store double %1, double* %14, align 8
  store double %2, double* %15, align 8
  store double %3, double* %16, align 8
  store double %4, double* %17, align 8
  store double %5, double* %18, align 8
  store double %6, double* %19, align 8
  store double %7, double* %20, align 8
  store double %8, double* %21, align 8
  store double %9, double* %22, align 8
  store double %10, double* %23, align 8
  %32 = load double, double* %19, align 8
  %33 = fdiv double 1.000000e+00, %32
  store double %33, double* %24, align 8
  %34 = load double, double* %15, align 8
  %35 = load double, double* %13, align 8
  %36 = load double, double* %20, align 8
  %37 = fmul double %35, %36
  %38 = fsub double %34, %37
  %39 = load double, double* %24, align 8
  %40 = fmul double %38, %39
  %41 = load double, double* %22, align 8
  %42 = fmul double %40, %41
  store double %42, double* %25, align 8
  %43 = load double, double* %16, align 8
  %44 = load double, double* %13, align 8
  %45 = load double, double* %21, align 8
  %46 = fmul double %44, %45
  %47 = fsub double %43, %46
  %48 = load double, double* %24, align 8
  %49 = fmul double %47, %48
  %50 = load double, double* %22, align 8
  %51 = fmul double %49, %50
  store double %51, double* %26, align 8
  %52 = load double, double* %17, align 8
  %53 = load double, double* %14, align 8
  %54 = load double, double* %20, align 8
  %55 = fmul double %53, %54
  %56 = fsub double %52, %55
  %57 = load double, double* %24, align 8
  %58 = fmul double %56, %57
  %59 = load double, double* %23, align 8
  %60 = fmul double %58, %59
  store double %60, double* %27, align 8
  %61 = load double, double* %18, align 8
  %62 = load double, double* %14, align 8
  %63 = load double, double* %21, align 8
  %64 = fmul double %62, %63
  %65 = fsub double %61, %64
  %66 = load double, double* %24, align 8
  %67 = fmul double %65, %66
  %68 = load double, double* %23, align 8
  %69 = fmul double %67, %68
  store double %69, double* %28, align 8
  %70 = load double, double* %25, align 8
  %71 = load double, double* %25, align 8
  %72 = fmul double %70, %71
  %73 = load double, double* %26, align 8
  %74 = load double, double* %26, align 8
  %75 = fmul double %73, %74
  %76 = fadd double %72, %75
  store double %76, double* %29, align 8
  %77 = load double, double* %27, align 8
  %78 = load double, double* %27, align 8
  %79 = fmul double %77, %78
  %80 = load double, double* %28, align 8
  %81 = load double, double* %28, align 8
  %82 = fmul double %80, %81
  %83 = fadd double %79, %82
  store double %83, double* %30, align 8
  %84 = load double, double* %29, align 8
  %85 = load double, double* %30, align 8
  %86 = fadd double %84, %85
  store double %86, double* %31, align 8
  %87 = load double, double* %31, align 8
  %88 = fcmp ole double %87, 0.000000e+00
  br i1 %88, label %89, label %90

89:                                               ; preds = %11
  store double 0.000000e+00, double* %12, align 8
  br label %95

90:                                               ; preds = %11
  %91 = load double, double* %31, align 8
  %92 = call double @log(double %91) #2
  %93 = fmul double %92, 0x3FF715475A31A4BE
  %94 = fmul double %93, 5.000000e-01
  store double %94, double* %12, align 8
  br label %95

95:                                               ; preds = %90, %89
  %96 = load double, double* %12, align 8
  ret double %96
}

; Function Attrs: nounwind
declare dso_local double @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
