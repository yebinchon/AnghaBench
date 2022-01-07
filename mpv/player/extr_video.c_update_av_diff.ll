; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_update_av_diff.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_update_av_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { double, i64, i64, double, i32, %struct.TYPE_2__*, %struct.MPOpts* }
%struct.TYPE_2__ = type { i64 }
%struct.MPOpts = type { double }

@STATUS_PLAYING = common dso_local global i64 0, align 8
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@av_desync_help_text = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, double)* @update_av_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_av_diff(%struct.MPContext* %0, double %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.MPOpts*, align 8
  %6 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store double %1, double* %4, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 6
  %9 = load %struct.MPOpts*, %struct.MPOpts** %8, align 8
  store %struct.MPOpts* %9, %struct.MPOpts** %5, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 0
  store double 0.000000e+00, double* %11, align 8
  %12 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @STATUS_PLAYING, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STATUS_PLAYING, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %2
  br label %80

24:                                               ; preds = %17
  %25 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 5
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %31 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %30, i32 0, i32 5
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %80

37:                                               ; preds = %29, %24
  %38 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %39 = call double @playing_audio_pts(%struct.MPContext* %38)
  store double %39, double* %6, align 8
  %40 = load double, double* %6, align 8
  %41 = load double, double* @MP_NOPTS_VALUE, align 8
  %42 = fcmp une double %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %45 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %44, i32 0, i32 3
  %46 = load double, double* %45, align 8
  %47 = load double, double* @MP_NOPTS_VALUE, align 8
  %48 = fcmp une double %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load double, double* %6, align 8
  %51 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %52 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %51, i32 0, i32 3
  %53 = load double, double* %52, align 8
  %54 = fsub double %50, %53
  %55 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %56 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %55, i32 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = fadd double %54, %57
  %59 = load double, double* %4, align 8
  %60 = fadd double %58, %59
  %61 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %62 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %61, i32 0, i32 0
  store double %60, double* %62, align 8
  br label %63

63:                                               ; preds = %49, %43, %37
  %64 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %65 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = call double @llvm.fabs.f64(double %66)
  %68 = fcmp ogt double %67, 5.000000e-01
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %71 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %76 = load i32, i32* @av_desync_help_text, align 4
  %77 = call i32 @MP_WARN(%struct.MPContext* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %79 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %78, i32 0, i32 4
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %23, %36, %74, %69, %63
  ret void
}

declare dso_local double @playing_audio_pts(%struct.MPContext*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @MP_WARN(%struct.MPContext*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
