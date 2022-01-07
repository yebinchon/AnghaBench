; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrtran.c_convert_gamma_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrtran.c_convert_gamma_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PNG_FP_1 = common dso_local global double 0.000000e+00, align 8
@PNG_FP_MAX = common dso_local global double 0.000000e+00, align 8
@PNG_FP_MIN = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"gamma value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double)* @convert_gamma_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_gamma_value(i32 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %5 = load double, double* %4, align 8
  %6 = fcmp ogt double %5, 0.000000e+00
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load double, double* %4, align 8
  %9 = fcmp olt double %8, 1.280000e+02
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load double, double* @PNG_FP_1, align 8
  %12 = load double, double* %4, align 8
  %13 = fmul double %12, %11
  store double %13, double* %4, align 8
  br label %14

14:                                               ; preds = %10, %7, %2
  %15 = load double, double* %4, align 8
  %16 = fadd double %15, 5.000000e-01
  %17 = call double @llvm.floor.f64(double %16)
  store double %17, double* %4, align 8
  %18 = load double, double* %4, align 8
  %19 = load double, double* @PNG_FP_MAX, align 8
  %20 = fcmp ogt double %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load double, double* %4, align 8
  %23 = load double, double* @PNG_FP_MIN, align 8
  %24 = fcmp olt double %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %14
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @png_fixed_error(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = load double, double* %4, align 8
  %30 = fptosi double %29 to i32
  ret i32 %30
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

declare dso_local i32 @png_fixed_error(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
