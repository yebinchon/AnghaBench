; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_compute_replaygain.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_compute_replaygain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.track***, %struct.MPOpts* }
%struct.track = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.replaygain_data* }
%struct.replaygain_data = type { float, float, float, float }
%struct.MPOpts = type { i32, float, i32, i64 }

@STREAM_AUDIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Replaygain: Track=%f/%f Album=%f/%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Applying replay-gain: %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"...with clipping prevention: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Applying fallback gain: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.MPContext*)* @compute_replaygain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @compute_replaygain(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.replaygain_data*, align 8
  %6 = alloca %struct.track*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %9 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %10 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %9, i32 0, i32 1
  %11 = load %struct.MPOpts*, %struct.MPOpts** %10, align 8
  store %struct.MPOpts* %11, %struct.MPOpts** %3, align 8
  store float 1.000000e+00, float* %4, align 4
  store %struct.replaygain_data* null, %struct.replaygain_data** %5, align 8
  %12 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 0
  %14 = load %struct.track***, %struct.track**** %13, align 8
  %15 = getelementptr inbounds %struct.track**, %struct.track*** %14, i64 0
  %16 = load %struct.track**, %struct.track*** %15, align 8
  %17 = load i64, i64* @STREAM_AUDIO, align 8
  %18 = getelementptr inbounds %struct.track*, %struct.track** %16, i64 %17
  %19 = load %struct.track*, %struct.track** %18, align 8
  store %struct.track* %19, %struct.track** %6, align 8
  %20 = load %struct.track*, %struct.track** %6, align 8
  %21 = icmp ne %struct.track* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.track*, %struct.track** %6, align 8
  %24 = getelementptr inbounds %struct.track, %struct.track* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.replaygain_data*, %struct.replaygain_data** %28, align 8
  store %struct.replaygain_data* %29, %struct.replaygain_data** %5, align 8
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %32 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %100

35:                                               ; preds = %30
  %36 = load %struct.replaygain_data*, %struct.replaygain_data** %5, align 8
  %37 = icmp ne %struct.replaygain_data* %36, null
  br i1 %37, label %38, label %100

38:                                               ; preds = %35
  %39 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %40 = load %struct.replaygain_data*, %struct.replaygain_data** %5, align 8
  %41 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %40, i32 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = load %struct.replaygain_data*, %struct.replaygain_data** %5, align 8
  %44 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = load %struct.replaygain_data*, %struct.replaygain_data** %5, align 8
  %48 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %47, i32 0, i32 2
  %49 = load float, float* %48, align 4
  %50 = fpext float %49 to double
  %51 = load %struct.replaygain_data*, %struct.replaygain_data** %5, align 8
  %52 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %51, i32 0, i32 3
  %53 = load float, float* %52, align 4
  %54 = fpext float %53 to double
  %55 = call i32 (%struct.MPContext*, i8*, float, ...) @MP_VERBOSE(%struct.MPContext* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), float %42, double %46, double %50, double %54)
  %56 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %57 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %67

60:                                               ; preds = %38
  %61 = load %struct.replaygain_data*, %struct.replaygain_data** %5, align 8
  %62 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %61, i32 0, i32 0
  %63 = load float, float* %62, align 4
  store float %63, float* %7, align 4
  %64 = load %struct.replaygain_data*, %struct.replaygain_data** %5, align 8
  %65 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %64, i32 0, i32 1
  %66 = load float, float* %65, align 4
  store float %66, float* %8, align 4
  br label %74

67:                                               ; preds = %38
  %68 = load %struct.replaygain_data*, %struct.replaygain_data** %5, align 8
  %69 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %68, i32 0, i32 2
  %70 = load float, float* %69, align 4
  store float %70, float* %7, align 4
  %71 = load %struct.replaygain_data*, %struct.replaygain_data** %5, align 8
  %72 = getelementptr inbounds %struct.replaygain_data, %struct.replaygain_data* %71, i32 0, i32 3
  %73 = load float, float* %72, align 4
  store float %73, float* %8, align 4
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %76 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to float
  %79 = load float, float* %7, align 4
  %80 = fadd float %79, %78
  store float %80, float* %7, align 4
  %81 = load float, float* %7, align 4
  %82 = call float @db_gain(float %81)
  store float %82, float* %4, align 4
  %83 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %84 = load float, float* %4, align 4
  %85 = call i32 (%struct.MPContext*, i8*, float, ...) @MP_VERBOSE(%struct.MPContext* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), float %84)
  %86 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %87 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %74
  %91 = load float, float* %4, align 4
  %92 = load float, float* %8, align 4
  %93 = fpext float %92 to double
  %94 = fdiv double 1.000000e+00, %93
  %95 = call float @MPMIN(float %91, double %94)
  store float %95, float* %4, align 4
  %96 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %97 = load float, float* %4, align 4
  %98 = call i32 (%struct.MPContext*, i8*, float, ...) @MP_VERBOSE(%struct.MPContext* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), float %97)
  br label %99

99:                                               ; preds = %90, %74
  br label %114

100:                                              ; preds = %35, %30
  %101 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %102 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %101, i32 0, i32 1
  %103 = load float, float* %102, align 4
  %104 = fcmp une float %103, 0.000000e+00
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %107 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %106, i32 0, i32 1
  %108 = load float, float* %107, align 4
  %109 = call float @db_gain(float %108)
  store float %109, float* %4, align 4
  %110 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %111 = load float, float* %4, align 4
  %112 = call i32 (%struct.MPContext*, i8*, float, ...) @MP_VERBOSE(%struct.MPContext* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), float %111)
  br label %113

113:                                              ; preds = %105, %100
  br label %114

114:                                              ; preds = %113, %99
  %115 = load float, float* %4, align 4
  ret float %115
}

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, float, ...) #1

declare dso_local float @db_gain(float) #1

declare dso_local float @MPMIN(float, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
