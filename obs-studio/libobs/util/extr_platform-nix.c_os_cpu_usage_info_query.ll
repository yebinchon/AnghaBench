; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_cpu_usage_info_query.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_cpu_usage_info_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.tms = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @os_cpu_usage_info_query(%struct.TYPE_3__* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.tms, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %74

10:                                               ; preds = %1
  %11 = call i64 @times(%struct.tms* %4)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %12, %15
  br i1 %16, label %31, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.tms, %struct.tms* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.tms, %struct.tms* %4, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %17, %10
  store double 0.000000e+00, double* %2, align 8
  br label %74

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.tms, %struct.tms* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = getelementptr inbounds %struct.tms, %struct.tms* %4, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = add nsw i64 %38, %44
  %46 = sitofp i64 %45 to double
  store double %46, double* %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = sitofp i64 %51 to double
  %53 = load double, double* %6, align 8
  %54 = fdiv double %53, %52
  store double %54, double* %6, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = sitofp i64 %57 to double
  %59 = load double, double* %6, align 8
  %60 = fdiv double %59, %58
  store double %60, double* %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = getelementptr inbounds %struct.tms, %struct.tms* %4, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = getelementptr inbounds %struct.tms, %struct.tms* %4, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load double, double* %6, align 8
  %73 = fmul double %72, 1.000000e+02
  store double %73, double* %2, align 8
  br label %74

74:                                               ; preds = %32, %31, %9
  %75 = load double, double* %2, align 8
  ret double %75
}

declare dso_local i64 @times(%struct.tms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
