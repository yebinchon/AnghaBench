; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_sinh.c_sinh.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_sinh.c_sinh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sinh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %3, align 8
  %9 = bitcast %union.anon* %4 to double*
  %10 = load double, double* %3, align 8
  store double %10, double* %9, align 8
  store double 5.000000e-01, double* %7, align 8
  %11 = bitcast %union.anon* %4 to i32*
  %12 = load i32, i32* %11, align 8
  %13 = ashr i32 %12, 63
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load double, double* %7, align 8
  %17 = fneg double %16
  store double %17, double* %7, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = bitcast %union.anon* %4 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 0
  store i32 %21, i32* %19, align 8
  %22 = bitcast %union.anon* %4 to double*
  %23 = load double, double* %22, align 8
  store double %23, double* %8, align 8
  %24 = bitcast %union.anon* %4 to i32*
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 32
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 1082535490
  br i1 %28, label %29, label %60

29:                                               ; preds = %18
  %30 = load double, double* %8, align 8
  %31 = call double @expm1(double %30) #3
  store double %31, double* %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 1072693248
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 1045430272
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load double, double* %3, align 8
  store double %38, double* %2, align 8
  br label %68

39:                                               ; preds = %34
  %40 = load double, double* %7, align 8
  %41 = load double, double* %6, align 8
  %42 = fmul double 2.000000e+00, %41
  %43 = load double, double* %6, align 8
  %44 = load double, double* %6, align 8
  %45 = fmul double %43, %44
  %46 = load double, double* %6, align 8
  %47 = fadd double %46, 1.000000e+00
  %48 = fdiv double %45, %47
  %49 = fsub double %42, %48
  %50 = fmul double %40, %49
  store double %50, double* %2, align 8
  br label %68

51:                                               ; preds = %29
  %52 = load double, double* %7, align 8
  %53 = load double, double* %6, align 8
  %54 = load double, double* %6, align 8
  %55 = load double, double* %6, align 8
  %56 = fadd double %55, 1.000000e+00
  %57 = fdiv double %54, %56
  %58 = fadd double %53, %57
  %59 = fmul double %52, %58
  store double %59, double* %2, align 8
  br label %68

60:                                               ; preds = %18
  %61 = load double, double* %7, align 8
  %62 = fmul double 2.000000e+00, %61
  %63 = load double, double* %8, align 8
  %64 = call i32 @__expo2(double %63)
  %65 = sitofp i32 %64 to double
  %66 = fmul double %62, %65
  store double %66, double* %6, align 8
  %67 = load double, double* %6, align 8
  store double %67, double* %2, align 8
  br label %68

68:                                               ; preds = %60, %51, %39, %37
  %69 = load double, double* %2, align 8
  ret double %69
}

; Function Attrs: nounwind
declare dso_local double @expm1(double) #1

declare dso_local i32 @__expo2(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
