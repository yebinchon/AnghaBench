; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_mp_compute_weights.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_mp_compute_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_kernel = type { i64, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filter_kernel*, double, float*)* @mp_compute_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_compute_weights(%struct.filter_kernel* %0, double %1, float* %2) #0 {
  %4 = alloca %struct.filter_kernel*, align 8
  %5 = alloca double, align 8
  %6 = alloca float*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store %struct.filter_kernel* %0, %struct.filter_kernel** %4, align 8
  store double %1, double* %5, align 8
  store float* %2, float** %6, align 8
  %12 = load %struct.filter_kernel*, %struct.filter_kernel** %4, align 8
  %13 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %53, %3
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.filter_kernel*, %struct.filter_kernel** %4, align 8
  %22 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %18
  %26 = load double, double* %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.filter_kernel*, %struct.filter_kernel** %4, align 8
  %30 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sdiv i64 %31, 2
  %33 = sub nsw i64 %28, %32
  %34 = add nsw i64 %33, 1
  %35 = sitofp i64 %34 to double
  %36 = fsub double %26, %35
  store double %36, double* %9, align 8
  %37 = load %struct.filter_kernel*, %struct.filter_kernel** %4, align 8
  %38 = load double, double* %9, align 8
  %39 = load %struct.filter_kernel*, %struct.filter_kernel** %4, align 8
  %40 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fdiv double %38, %41
  %43 = call double @sample_filter(%struct.filter_kernel* %37, double %42)
  store double %43, double* %10, align 8
  %44 = load double, double* %10, align 8
  %45 = fptrunc double %44 to float
  %46 = load float*, float** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  store float %45, float* %49, align 4
  %50 = load double, double* %10, align 8
  %51 = load double, double* %7, align 8
  %52 = fadd double %51, %50
  store double %52, double* %7, align 8
  br label %53

53:                                               ; preds = %25
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %18

56:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %74, %56
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.filter_kernel*, %struct.filter_kernel** %4, align 8
  %61 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load double, double* %7, align 8
  %66 = load float*, float** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  %70 = load float, float* %69, align 4
  %71 = fpext float %70 to double
  %72 = fdiv double %71, %65
  %73 = fptrunc double %72 to float
  store float %73, float* %69, align 4
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %57

77:                                               ; preds = %57
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local double @sample_filter(%struct.filter_kernel*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
