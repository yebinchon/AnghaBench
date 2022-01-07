; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_expander_filter_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_expander_filter_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_audio_data = type { i64, i64 }
%struct.expander_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_audio_data* (i8*, %struct.obs_audio_data*)* @expander_filter_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_audio_data* @expander_filter_audio(i8* %0, %struct.obs_audio_data* %1) #0 {
  %3 = alloca %struct.obs_audio_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.obs_audio_data*, align 8
  %6 = alloca %struct.expander_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca float**, align 8
  store i8* %0, i8** %4, align 8
  store %struct.obs_audio_data* %1, %struct.obs_audio_data** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.expander_data*
  store %struct.expander_data* %10, %struct.expander_data** %6, align 8
  %11 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %12 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  store %struct.obs_audio_data* %17, %struct.obs_audio_data** %3, align 8
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %20 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to float**
  store float** %22, float*** %8, align 8
  %23 = load %struct.expander_data*, %struct.expander_data** %6, align 8
  %24 = load float**, float*** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @analyze_envelope(%struct.expander_data* %23, float** %24, i64 %25)
  %27 = load %struct.expander_data*, %struct.expander_data** %6, align 8
  %28 = load float**, float*** %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @process_expansion(%struct.expander_data* %27, float** %28, i64 %29)
  %31 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  store %struct.obs_audio_data* %31, %struct.obs_audio_data** %3, align 8
  br label %32

32:                                               ; preds = %18, %16
  %33 = load %struct.obs_audio_data*, %struct.obs_audio_data** %3, align 8
  ret %struct.obs_audio_data* %33
}

declare dso_local i32 @analyze_envelope(%struct.expander_data*, float**, i64) #1

declare dso_local i32 @process_expansion(%struct.expander_data*, float**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
