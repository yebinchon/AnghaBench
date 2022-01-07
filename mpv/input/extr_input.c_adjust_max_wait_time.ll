; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_adjust_max_wait_time.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_adjust_max_wait_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i64, i64, %struct.input_opts* }
%struct.input_opts = type { double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_ctx*, double*)* @adjust_max_wait_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_max_wait_time(%struct.input_ctx* %0, double* %1) #0 {
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca double*, align 8
  %5 = alloca %struct.input_opts*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %3, align 8
  store double* %1, double** %4, align 8
  %6 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %6, i32 0, i32 2
  %8 = load %struct.input_opts*, %struct.input_opts** %7, align 8
  store %struct.input_opts* %8, %struct.input_opts** %5, align 8
  %9 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load %struct.input_opts*, %struct.input_opts** %5, align 8
  %15 = getelementptr inbounds %struct.input_opts, %struct.input_opts* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = fcmp ogt double %16, 0.000000e+00
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load double*, double** %4, align 8
  %25 = load double, double* %24, align 8
  %26 = load %struct.input_opts*, %struct.input_opts** %5, align 8
  %27 = getelementptr inbounds %struct.input_opts, %struct.input_opts* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = fdiv double 1.000000e+00, %28
  %30 = call double @MPMIN(double %25, double %29)
  %31 = load double*, double** %4, align 8
  store double %30, double* %31, align 8
  %32 = load double*, double** %4, align 8
  %33 = load double, double* %32, align 8
  %34 = load %struct.input_opts*, %struct.input_opts** %5, align 8
  %35 = getelementptr inbounds %struct.input_opts, %struct.input_opts* %34, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = fdiv double %36, 1.000000e+03
  %38 = call double @MPMIN(double %33, double %37)
  %39 = load double*, double** %4, align 8
  store double %38, double* %39, align 8
  br label %40

40:                                               ; preds = %23, %18, %13, %2
  ret void
}

declare dso_local double @MPMIN(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
