; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_sample_filter.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_sample_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_kernel = type { i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.filter_kernel*, double)* @sample_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @sample_filter(%struct.filter_kernel* %0, double %1) #0 {
  %3 = alloca %struct.filter_kernel*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.filter_kernel* %0, %struct.filter_kernel** %3, align 8
  store double %1, double* %4, align 8
  %7 = load %struct.filter_kernel*, %struct.filter_kernel** %3, align 8
  %8 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %7, i32 0, i32 2
  %9 = load double, double* %4, align 8
  %10 = load %struct.filter_kernel*, %struct.filter_kernel** %3, align 8
  %11 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = fdiv double %9, %13
  %15 = load %struct.filter_kernel*, %struct.filter_kernel** %3, align 8
  %16 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fmul double %14, %18
  %20 = call double @sample_window(%struct.TYPE_2__* %8, double %19)
  store double %20, double* %5, align 8
  %21 = load double, double* %5, align 8
  %22 = load %struct.filter_kernel*, %struct.filter_kernel** %3, align 8
  %23 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %22, i32 0, i32 1
  %24 = load double, double* %4, align 8
  %25 = call double @sample_window(%struct.TYPE_2__* %23, double %24)
  %26 = fmul double %21, %25
  store double %26, double* %6, align 8
  %27 = load double, double* %6, align 8
  %28 = fcmp olt double %27, 0.000000e+00
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.filter_kernel*, %struct.filter_kernel** %3, align 8
  %31 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 1, %32
  %34 = sitofp i32 %33 to double
  %35 = load double, double* %6, align 8
  %36 = fmul double %34, %35
  br label %39

37:                                               ; preds = %2
  %38 = load double, double* %6, align 8
  br label %39

39:                                               ; preds = %37, %29
  %40 = phi double [ %36, %29 ], [ %38, %37 ]
  ret double %40
}

declare dso_local double @sample_window(%struct.TYPE_2__*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
