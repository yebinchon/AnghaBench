; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ComputeIoConcurrency.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ComputeIoConcurrency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_IO_CONCURRENCY = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ComputeIoConcurrency(i32 %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @Max(i32 %7, i32 0)
  %9 = load i32, i32* @MAX_IO_CONCURRENCY, align 4
  %10 = call i32 @Min(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = sitofp i32 %16 to double
  %18 = load i32, i32* %6, align 4
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %17, %19
  %21 = load double, double* %5, align 8
  %22 = fadd double %21, %20
  store double %22, double* %5, align 8
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load double, double* %5, align 8
  %28 = load double*, double** %4, align 8
  store double %27, double* %28, align 8
  %29 = load double, double* %5, align 8
  %30 = fcmp oge double %29, 0.000000e+00
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load double, double* %5, align 8
  %33 = load i64, i64* @INT_MAX, align 8
  %34 = sitofp i64 %33 to double
  %35 = fcmp olt double %32, %34
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @Max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
