; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_mp_compute_lut.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_mp_compute_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_kernel = type { double, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_compute_lut(%struct.filter_kernel* %0, i32 %1, i32 %2, float* %3) #0 {
  %5 = alloca %struct.filter_kernel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store %struct.filter_kernel* %0, %struct.filter_kernel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  %12 = load %struct.filter_kernel*, %struct.filter_kernel** %5, align 8
  %13 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %4
  %17 = load %struct.filter_kernel*, %struct.filter_kernel** %5, align 8
  %18 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %17, i32 0, i32 0
  store double 0.000000e+00, double* %18, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %56, %16
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.filter_kernel*, %struct.filter_kernel** %5, align 8
  %26 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %24, %28
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sdiv i32 %29, %31
  %33 = sitofp i32 %32 to double
  store double %33, double* %10, align 8
  %34 = load %struct.filter_kernel*, %struct.filter_kernel** %5, align 8
  %35 = load double, double* %10, align 8
  %36 = call float @sample_filter(%struct.filter_kernel* %34, double %35)
  %37 = load float*, float** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  store float %36, float* %40, align 4
  %41 = load float*, float** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = call i64 @fabs(float %45)
  %47 = load %struct.filter_kernel*, %struct.filter_kernel** %5, align 8
  %48 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %23
  %52 = load double, double* %10, align 8
  %53 = load %struct.filter_kernel*, %struct.filter_kernel** %5, align 8
  %54 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %53, i32 0, i32 0
  store double %52, double* %54, align 8
  br label %55

55:                                               ; preds = %51, %23
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %19

59:                                               ; preds = %19
  br label %85

60:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load %struct.filter_kernel*, %struct.filter_kernel** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sitofp i32 %67 to double
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %68, %71
  %73 = fptosi double %72 to i32
  %74 = load float*, float** %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %74, i64 %78
  %80 = call i32 @mp_compute_weights(%struct.filter_kernel* %66, i32 %73, float* %79)
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %61

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84, %59
  ret void
}

declare dso_local float @sample_filter(%struct.filter_kernel*, double) #1

declare dso_local i64 @fabs(float) #1

declare dso_local i32 @mp_compute_weights(%struct.filter_kernel*, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
