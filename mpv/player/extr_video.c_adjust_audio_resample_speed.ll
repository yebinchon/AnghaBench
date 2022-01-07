; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_adjust_audio_resample_speed.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_adjust_audio_resample_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, double, double, double, i32, double, %struct.MPOpts* }
%struct.MPOpts = type { i32, i32, double }

@VS_DISP_RESAMPLE = common dso_local global i32 0, align 4
@STATUS_PLAYING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Change display sync audio drift: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Compensation factor: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, double)* @adjust_audio_resample_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_audio_resample_speed(%struct.MPContext* %0, double %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.MPOpts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store double %1, double* %4, align 8
  %15 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %16 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %15, i32 0, i32 6
  %17 = load %struct.MPOpts*, %struct.MPOpts** %16, align 8
  store %struct.MPOpts* %17, %struct.MPOpts** %5, align 8
  %18 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %19 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @VS_DISP_RESAMPLE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @STATUS_PLAYING, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24, %2
  %31 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %32 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %31, i32 0, i32 2
  %33 = load double, double* %32, align 8
  %34 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %35 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %34, i32 0, i32 1
  store double %33, double* %35, align 8
  br label %147

36:                                               ; preds = %24
  %37 = load double, double* %4, align 8
  %38 = fdiv double %37, 2.000000e+00
  store double %38, double* %7, align 8
  %39 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %40 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %39, i32 0, i32 3
  %41 = load double, double* %40, align 8
  store double %41, double* %8, align 8
  %42 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %43 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %9, align 4
  %45 = load double, double* %8, align 8
  %46 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %47 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 0, %48
  %50 = sitofp i32 %49 to double
  %51 = fmul double %45, %50
  %52 = fcmp oge double %51, 0.000000e+00
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %36
  %55 = load double, double* %8, align 8
  %56 = call double @llvm.fabs.f64(double %55)
  %57 = load double, double* %7, align 8
  %58 = fcmp ogt double %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load double, double* %8, align 8
  %61 = fcmp oge double %60, 0.000000e+00
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 -1
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %66 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %147

76:                                               ; preds = %73, %64
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sitofp i32 %81 to double
  %83 = call i32 @MP_VERBOSE(%struct.MPContext* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), double %82)
  br label %84

84:                                               ; preds = %79, %76
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %87 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %89 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %90, 100
  %92 = sitofp i32 %91 to double
  store double %92, double* %11, align 8
  %93 = load double, double* %11, align 8
  %94 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %95 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 0, %96
  %98 = sitofp i32 %97 to double
  %99 = fmul double %93, %98
  %100 = fadd double 1.000000e+00, %99
  store double %100, double* %12, align 8
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %131

103:                                              ; preds = %84
  %104 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %105 = load double, double* %4, align 8
  %106 = call double @compute_audio_drift(%struct.MPContext* %104, double %105)
  store double %106, double* %13, align 8
  %107 = load double, double* %13, align 8
  %108 = call i64 @isnormal(double %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %103
  %111 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %112 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %111, i32 0, i32 6
  %113 = load %struct.MPOpts*, %struct.MPOpts** %112, align 8
  %114 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %113, i32 0, i32 2
  %115 = load double, double* %114, align 8
  %116 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %117 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %116, i32 0, i32 2
  %118 = load double, double* %117, align 8
  %119 = fmul double %115, %118
  store double %119, double* %14, align 8
  %120 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %121 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %120, i32 0, i32 5
  %122 = load double, double* %121, align 8
  %123 = load double, double* %13, align 8
  %124 = fsub double %122, %123
  %125 = load double, double* %14, align 8
  %126 = fdiv double %124, %125
  store double %126, double* %12, align 8
  %127 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %128 = load double, double* %12, align 8
  %129 = call i32 @MP_VERBOSE(%struct.MPContext* %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), double %128)
  br label %130

130:                                              ; preds = %110, %103
  br label %131

131:                                              ; preds = %130, %84
  %132 = load double, double* %12, align 8
  %133 = load double, double* %11, align 8
  %134 = fsub double 1.000000e+00, %133
  %135 = fptosi double %134 to i32
  %136 = load double, double* %11, align 8
  %137 = fadd double 1.000000e+00, %136
  %138 = fptosi double %137 to i32
  %139 = call double @MPCLAMP(double %132, i32 %135, i32 %138)
  store double %139, double* %12, align 8
  %140 = load double, double* %12, align 8
  %141 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %142 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %141, i32 0, i32 2
  %143 = load double, double* %142, align 8
  %144 = fmul double %140, %143
  %145 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %146 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %145, i32 0, i32 1
  store double %144, double* %146, align 8
  br label %147

147:                                              ; preds = %30, %131, %73
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, double) #2

declare dso_local double @compute_audio_drift(%struct.MPContext*, double) #2

declare dso_local i64 @isnormal(double) #2

declare dso_local double @MPCLAMP(double, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
