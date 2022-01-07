; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_adjust_sync.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_adjust_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, double, i64, i64, %struct.MPOpts* }
%struct.MPOpts = type { double, double }

@STATUS_PLAYING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, double, double)* @adjust_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_sync(%struct.MPContext* %0, double %1, double %2) #0 {
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.MPOpts*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %13 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 4
  %15 = load %struct.MPOpts*, %struct.MPOpts** %14, align 8
  store %struct.MPOpts* %15, %struct.MPOpts** %7, align 8
  %16 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @STATUS_PLAYING, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %91

22:                                               ; preds = %3
  %23 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %24 = call double @written_audio_pts(%struct.MPContext* %23)
  %25 = load %struct.MPOpts*, %struct.MPOpts** %7, align 8
  %26 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = fadd double %24, %27
  %29 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 1
  %31 = load double, double* %30, align 8
  %32 = fsub double %28, %31
  store double %32, double* %8, align 8
  %33 = load double, double* %8, align 8
  %34 = load double, double* %5, align 8
  %35 = fsub double %33, %34
  store double %35, double* %9, align 8
  %36 = load double, double* %9, align 8
  %37 = fmul double %36, 1.000000e-01
  store double %37, double* %10, align 8
  %38 = load double, double* %9, align 8
  %39 = call double @llvm.fabs.f64(double %38)
  %40 = fcmp olt double %39, 3.000000e-01
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, double 1.000000e-01, double 4.000000e-01
  store double %42, double* %11, align 8
  %43 = load %struct.MPOpts*, %struct.MPOpts** %7, align 8
  %44 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = fcmp oge double %45, 0.000000e+00
  br i1 %46, label %47, label %51

47:                                               ; preds = %22
  %48 = load %struct.MPOpts*, %struct.MPOpts** %7, align 8
  %49 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %48, i32 0, i32 1
  %50 = load double, double* %49, align 8
  br label %55

51:                                               ; preds = %22
  %52 = load double, double* %6, align 8
  %53 = load double, double* %11, align 8
  %54 = fmul double %52, %53
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi double [ %50, %47 ], [ %54, %51 ]
  store double %56, double* %12, align 8
  %57 = load double, double* %10, align 8
  %58 = load double, double* %12, align 8
  %59 = fneg double %58
  %60 = fcmp olt double %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load double, double* %12, align 8
  %63 = fneg double %62
  store double %63, double* %10, align 8
  br label %71

64:                                               ; preds = %55
  %65 = load double, double* %10, align 8
  %66 = load double, double* %12, align 8
  %67 = fcmp ogt double %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load double, double* %12, align 8
  store double %69, double* %10, align 8
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %61
  %72 = load double, double* %10, align 8
  %73 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %74 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %73, i32 0, i32 1
  %75 = load double, double* %74, align 8
  %76 = fadd double %75, %72
  store double %76, double* %74, align 8
  %77 = load double, double* %10, align 8
  %78 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %79 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sitofp i64 %80 to double
  %82 = fadd double %81, %77
  %83 = fptosi double %82 to i64
  store i64 %83, i64* %79, align 8
  %84 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %85 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %71
  %89 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %90 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %21, %88, %71
  ret void
}

declare dso_local double @written_audio_pts(%struct.MPContext*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
