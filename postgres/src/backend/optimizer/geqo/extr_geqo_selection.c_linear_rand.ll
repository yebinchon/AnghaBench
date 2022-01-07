; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/geqo/extr_geqo_selection.c_linear_rand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/geqo/extr_geqo_selection.c_linear_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, double)* @linear_rand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_rand(i32* %0, i32 %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sitofp i32 %10 to double
  store double %11, double* %8, align 8
  br label %12

12:                                               ; preds = %45, %3
  %13 = load double, double* %6, align 8
  %14 = load double, double* %6, align 8
  %15 = fmul double %13, %14
  %16 = load double, double* %6, align 8
  %17 = fsub double %16, 1.000000e+00
  %18 = fmul double 4.000000e+00, %17
  %19 = load i32*, i32** %4, align 8
  %20 = call double @geqo_rand(i32* %19)
  %21 = fmul double %18, %20
  %22 = fsub double %15, %21
  store double %22, double* %9, align 8
  %23 = load double, double* %9, align 8
  %24 = fcmp ogt double %23, 0.000000e+00
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load double, double* %9, align 8
  %27 = call double @sqrt(double %26) #3
  store double %27, double* %9, align 8
  br label %28

28:                                               ; preds = %25, %12
  %29 = load double, double* %8, align 8
  %30 = load double, double* %6, align 8
  %31 = load double, double* %9, align 8
  %32 = fsub double %30, %31
  %33 = fmul double %29, %32
  %34 = fdiv double %33, 2.000000e+00
  %35 = load double, double* %6, align 8
  %36 = fsub double %35, 1.000000e+00
  %37 = fdiv double %34, %36
  store double %37, double* %7, align 8
  br label %38

38:                                               ; preds = %28
  %39 = load double, double* %7, align 8
  %40 = fcmp olt double %39, 0.000000e+00
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load double, double* %7, align 8
  %43 = load double, double* %8, align 8
  %44 = fcmp oge double %42, %43
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ true, %38 ], [ %44, %41 ]
  br i1 %46, label %12, label %47

47:                                               ; preds = %45
  %48 = load double, double* %7, align 8
  %49 = fptosi double %48 to i32
  ret i32 %49
}

declare dso_local double @geqo_rand(i32*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
