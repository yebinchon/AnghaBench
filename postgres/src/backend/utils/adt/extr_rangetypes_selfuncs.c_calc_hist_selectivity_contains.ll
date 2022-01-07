; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_calc_hist_selectivity_contains.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_calc_hist_selectivity_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32*, i32*, i32*, i32, i32*, i32)* @calc_hist_selectivity_contains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_hist_selectivity_contains(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @rbound_bsearch(i32* %23, i32* %24, i32* %25, i32 %26, i32 1)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %7
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = call double @get_position(i32* %36, i32* %37, i32* %41, i32* %46)
  store double %47, double* %18, align 8
  br label %49

48:                                               ; preds = %30, %7
  store double 0.000000e+00, double* %18, align 8
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @get_distance(i32* %50, i32* %51, i32* %52)
  store i32 %53, i32* %20, align 4
  store double 0.000000e+00, double* %19, align 8
  %54 = load double, double* %18, align 8
  store double %54, double* %17, align 8
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %83, %49
  %57 = load i32, i32* %15, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @get_distance(i32* %60, i32* %64, i32* %65)
  store i32 %66, i32* %21, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %21, align 4
  %71 = call double @calc_length_hist_frac(i32* %67, i32 %68, i32 %69, i32 %70, i32 0)
  %72 = fsub double 1.000000e+00, %71
  store double %72, double* %22, align 8
  %73 = load double, double* %22, align 8
  %74 = load double, double* %17, align 8
  %75 = fmul double %73, %74
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %75, %78
  %80 = load double, double* %19, align 8
  %81 = fadd double %80, %79
  store double %81, double* %19, align 8
  store double 1.000000e+00, double* %17, align 8
  %82 = load i32, i32* %21, align 4
  store i32 %82, i32* %20, align 4
  br label %83

83:                                               ; preds = %59
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %15, align 4
  br label %56

86:                                               ; preds = %56
  %87 = load double, double* %19, align 8
  ret double %87
}

declare dso_local i32 @rbound_bsearch(i32*, i32*, i32*, i32, i32) #1

declare dso_local double @get_position(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @get_distance(i32*, i32*, i32*) #1

declare dso_local double @calc_length_hist_frac(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
