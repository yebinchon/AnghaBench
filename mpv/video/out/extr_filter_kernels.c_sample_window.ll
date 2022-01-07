; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_sample_window.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_sample_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_window = type { {}*, double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.filter_window*, double)* @sample_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @sample_window(%struct.filter_window* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.filter_window*, align 8
  %5 = alloca double, align 8
  store %struct.filter_window* %0, %struct.filter_window** %4, align 8
  store double %1, double* %5, align 8
  %6 = load %struct.filter_window*, %struct.filter_window** %4, align 8
  %7 = getelementptr inbounds %struct.filter_window, %struct.filter_window* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to double (%struct.filter_window*, double)**
  %9 = load double (%struct.filter_window*, double)*, double (%struct.filter_window*, double)** %8, align 8
  %10 = icmp ne double (%struct.filter_window*, double)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store double 1.000000e+00, double* %3, align 8
  br label %62

12:                                               ; preds = %2
  %13 = load double, double* %5, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  store double %14, double* %5, align 8
  %15 = load %struct.filter_window*, %struct.filter_window** %4, align 8
  %16 = getelementptr inbounds %struct.filter_window, %struct.filter_window* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fcmp ogt double %17, 0.000000e+00
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load double, double* %5, align 8
  %21 = load %struct.filter_window*, %struct.filter_window** %4, align 8
  %22 = getelementptr inbounds %struct.filter_window, %struct.filter_window* %21, i32 0, i32 1
  %23 = load double, double* %22, align 8
  %24 = fdiv double %20, %23
  br label %27

25:                                               ; preds = %12
  %26 = load double, double* %5, align 8
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi double [ %24, %19 ], [ %26, %25 ]
  store double %28, double* %5, align 8
  %29 = load double, double* %5, align 8
  %30 = load %struct.filter_window*, %struct.filter_window** %4, align 8
  %31 = getelementptr inbounds %struct.filter_window, %struct.filter_window* %30, i32 0, i32 2
  %32 = load double, double* %31, align 8
  %33 = fcmp ole double %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %46

35:                                               ; preds = %27
  %36 = load double, double* %5, align 8
  %37 = load %struct.filter_window*, %struct.filter_window** %4, align 8
  %38 = getelementptr inbounds %struct.filter_window, %struct.filter_window* %37, i32 0, i32 2
  %39 = load double, double* %38, align 8
  %40 = fsub double %36, %39
  %41 = load %struct.filter_window*, %struct.filter_window** %4, align 8
  %42 = getelementptr inbounds %struct.filter_window, %struct.filter_window* %41, i32 0, i32 2
  %43 = load double, double* %42, align 8
  %44 = fsub double 1.000000e+00, %43
  %45 = fdiv double %40, %44
  br label %46

46:                                               ; preds = %35, %34
  %47 = phi double [ 0.000000e+00, %34 ], [ %45, %35 ]
  store double %47, double* %5, align 8
  %48 = load double, double* %5, align 8
  %49 = load %struct.filter_window*, %struct.filter_window** %4, align 8
  %50 = getelementptr inbounds %struct.filter_window, %struct.filter_window* %49, i32 0, i32 3
  %51 = load double, double* %50, align 8
  %52 = fcmp olt double %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.filter_window*, %struct.filter_window** %4, align 8
  %55 = getelementptr inbounds %struct.filter_window, %struct.filter_window* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to double (%struct.filter_window*, double)**
  %57 = load double (%struct.filter_window*, double)*, double (%struct.filter_window*, double)** %56, align 8
  %58 = load %struct.filter_window*, %struct.filter_window** %4, align 8
  %59 = load double, double* %5, align 8
  %60 = call double %57(%struct.filter_window* %58, double %59)
  store double %60, double* %3, align 8
  br label %62

61:                                               ; preds = %46
  store double 0.000000e+00, double* %3, align 8
  br label %62

62:                                               ; preds = %61, %53, %11
  %63 = load double, double* %3, align 8
  ret double %63
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
