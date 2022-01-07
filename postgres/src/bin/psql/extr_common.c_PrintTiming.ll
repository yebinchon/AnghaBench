; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_PrintTiming.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_PrintTiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Time: %.3f ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Time: %.3f ms (%02d:%06.3f)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Time: %.3f ms (%02d:%02d:%06.3f)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Time: %.3f ms (%.0f d %02d:%02d:%06.3f)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double)* @PrintTiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintTiming(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %2, align 8
  %7 = load double, double* %2, align 8
  %8 = fcmp olt double %7, 1.000000e+03
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load double, double* %2, align 8
  %12 = call i32 (i8*, double, ...) @printf(i8* %10, double %11)
  br label %68

13:                                               ; preds = %1
  %14 = load double, double* %2, align 8
  %15 = fdiv double %14, 1.000000e+03
  store double %15, double* %3, align 8
  %16 = load double, double* %3, align 8
  %17 = fdiv double %16, 6.000000e+01
  %18 = call double @llvm.floor.f64(double %17)
  store double %18, double* %4, align 8
  %19 = load double, double* %4, align 8
  %20 = fmul double 6.000000e+01, %19
  %21 = load double, double* %3, align 8
  %22 = fsub double %21, %20
  store double %22, double* %3, align 8
  %23 = load double, double* %4, align 8
  %24 = fcmp olt double %23, 6.000000e+01
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %27 = load double, double* %2, align 8
  %28 = load double, double* %4, align 8
  %29 = fptosi double %28 to i32
  %30 = load double, double* %3, align 8
  %31 = call i32 (i8*, double, ...) @printf(i8* %26, double %27, i32 %29, double %30)
  br label %68

32:                                               ; preds = %13
  %33 = load double, double* %4, align 8
  %34 = fdiv double %33, 6.000000e+01
  %35 = call double @llvm.floor.f64(double %34)
  store double %35, double* %5, align 8
  %36 = load double, double* %5, align 8
  %37 = fmul double 6.000000e+01, %36
  %38 = load double, double* %4, align 8
  %39 = fsub double %38, %37
  store double %39, double* %4, align 8
  %40 = load double, double* %5, align 8
  %41 = fcmp olt double %40, 2.400000e+01
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %44 = load double, double* %2, align 8
  %45 = load double, double* %5, align 8
  %46 = fptosi double %45 to i32
  %47 = load double, double* %4, align 8
  %48 = fptosi double %47 to i32
  %49 = load double, double* %3, align 8
  %50 = call i32 (i8*, double, ...) @printf(i8* %43, double %44, i32 %46, i32 %48, double %49)
  br label %68

51:                                               ; preds = %32
  %52 = load double, double* %5, align 8
  %53 = fdiv double %52, 2.400000e+01
  %54 = call double @llvm.floor.f64(double %53)
  store double %54, double* %6, align 8
  %55 = load double, double* %6, align 8
  %56 = fmul double 2.400000e+01, %55
  %57 = load double, double* %5, align 8
  %58 = fsub double %57, %56
  store double %58, double* %5, align 8
  %59 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %60 = load double, double* %2, align 8
  %61 = load double, double* %6, align 8
  %62 = load double, double* %5, align 8
  %63 = fptosi double %62 to i32
  %64 = load double, double* %4, align 8
  %65 = fptosi double %64 to i32
  %66 = load double, double* %3, align 8
  %67 = call i32 (i8*, double, ...) @printf(i8* %59, double %60, double %61, i32 %63, i32 %65, double %66)
  br label %68

68:                                               ; preds = %51, %42, %25, %9
  ret void
}

declare dso_local i32 @printf(i8*, double, ...) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
