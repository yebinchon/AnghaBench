; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_compute_audio_drift.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_compute_audio_drift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.frame_info* }
%struct.frame_info = type { double, double }

@NAN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.MPContext*, double)* @compute_audio_drift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @compute_audio_drift(%struct.MPContext* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.frame_info*, align 8
  %14 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store double %1, double* %5, align 8
  %15 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %16 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %17, 10
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load double, double* @NAN, align 8
  store double %20, double* %3, align 8
  br label %92

21:                                               ; preds = %2
  %22 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %71, %21
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %26
  %31 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %32 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %31, i32 0, i32 1
  %33 = load %struct.frame_info*, %struct.frame_info** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %33, i64 %36
  store %struct.frame_info* %37, %struct.frame_info** %13, align 8
  %38 = load %struct.frame_info*, %struct.frame_info** %13, align 8
  %39 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = fcmp olt double %40, 0.000000e+00
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load double, double* @NAN, align 8
  store double %43, double* %3, align 8
  br label %92

44:                                               ; preds = %30
  %45 = load %struct.frame_info*, %struct.frame_info** %13, align 8
  %46 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %45, i32 0, i32 1
  %47 = load double, double* %46, align 8
  store double %47, double* %14, align 8
  %48 = load double, double* %11, align 8
  %49 = load double, double* %7, align 8
  %50 = fadd double %49, %48
  store double %50, double* %7, align 8
  %51 = load double, double* %14, align 8
  %52 = load double, double* %8, align 8
  %53 = fadd double %52, %51
  store double %53, double* %8, align 8
  %54 = load double, double* %11, align 8
  %55 = load double, double* %14, align 8
  %56 = fmul double %54, %55
  %57 = load double, double* %9, align 8
  %58 = fadd double %57, %56
  store double %58, double* %9, align 8
  %59 = load double, double* %11, align 8
  %60 = load double, double* %11, align 8
  %61 = fmul double %59, %60
  %62 = load double, double* %10, align 8
  %63 = fadd double %62, %61
  store double %63, double* %10, align 8
  %64 = load %struct.frame_info*, %struct.frame_info** %13, align 8
  %65 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = load double, double* %5, align 8
  %68 = fmul double %66, %67
  %69 = load double, double* %11, align 8
  %70 = fsub double %69, %68
  store double %70, double* %11, align 8
  br label %71

71:                                               ; preds = %44
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %26

74:                                               ; preds = %26
  %75 = load double, double* %7, align 8
  %76 = load double, double* %8, align 8
  %77 = fmul double %75, %76
  %78 = load i32, i32* %6, align 4
  %79 = sitofp i32 %78 to double
  %80 = load double, double* %9, align 8
  %81 = fmul double %79, %80
  %82 = fsub double %77, %81
  %83 = load double, double* %7, align 8
  %84 = load double, double* %7, align 8
  %85 = fmul double %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = sitofp i32 %86 to double
  %88 = load double, double* %10, align 8
  %89 = fmul double %87, %88
  %90 = fsub double %85, %89
  %91 = fdiv double %82, %90
  store double %91, double* %3, align 8
  br label %92

92:                                               ; preds = %74, %42, %19
  %93 = load double, double* %3, align 8
  ret double %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
