; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_inet_semi_join_sel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_inet_semi_join_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, i32, i32*, i32, i32, i32*, i32, double, i32*, i32)* @inet_semi_join_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @inet_semi_join_sel(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5, i32 %6, double %7, i32* %8, i32 %9) #0 {
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store double %7, double* %19, align 8
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %10
  store i32 0, i32* %22, align 4
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32, i32* %22, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32*, i32** %20, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* %22, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @FunctionCall2(i32* %32, i32 %33, i32 %38)
  %40 = call i64 @DatumGetBool(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store double 1.000000e+00, double* %11, align 8
  br label %70

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %22, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %22, align 4
  br label %27

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47, %10
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load double, double* %19, align 8
  %53 = fcmp ogt double %52, 0.000000e+00
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i32*, i32** %17, align 8
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %21, align 4
  %59 = sub nsw i32 0, %58
  %60 = call double @inet_hist_value_sel(i32* %55, i32 %56, i32 %57, i32 %59)
  store double %60, double* %23, align 8
  %61 = load double, double* %23, align 8
  %62 = fcmp ogt double %61, 0.000000e+00
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load double, double* %19, align 8
  %65 = load double, double* %23, align 8
  %66 = fmul double %64, %65
  %67 = call double @Min(double 1.000000e+00, double %66)
  store double %67, double* %11, align 8
  br label %70

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %51, %48
  store double 0.000000e+00, double* %11, align 8
  br label %70

70:                                               ; preds = %69, %63, %42
  %71 = load double, double* %11, align 8
  ret double %71
}

declare dso_local i64 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCall2(i32*, i32, i32) #1

declare dso_local double @inet_hist_value_sel(i32*, i32, i32, i32) #1

declare dso_local double @Min(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
