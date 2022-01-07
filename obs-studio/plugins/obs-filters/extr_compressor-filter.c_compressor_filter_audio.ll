; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_filter_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_filter_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_audio_data = type { i64, i64 }
%struct.compressor_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_audio_data* (i8*, %struct.obs_audio_data*)* @compressor_filter_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_audio_data* @compressor_filter_audio(i8* %0, %struct.obs_audio_data* %1) #0 {
  %3 = alloca %struct.obs_audio_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.obs_audio_data*, align 8
  %6 = alloca %struct.compressor_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca float**, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.obs_audio_data* %1, %struct.obs_audio_data** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.compressor_data*
  store %struct.compressor_data* %11, %struct.compressor_data** %6, align 8
  %12 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %13 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  store %struct.obs_audio_data* %18, %struct.obs_audio_data** %3, align 8
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %21 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to float**
  store float** %23, float*** %8, align 8
  %24 = load %struct.compressor_data*, %struct.compressor_data** %6, align 8
  %25 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %24, i32 0, i32 0
  %26 = call i32 @pthread_mutex_lock(i32* %25)
  %27 = load %struct.compressor_data*, %struct.compressor_data** %6, align 8
  %28 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  %30 = load %struct.compressor_data*, %struct.compressor_data** %6, align 8
  %31 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %30, i32 0, i32 0
  %32 = call i32 @pthread_mutex_unlock(i32* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load %struct.compressor_data*, %struct.compressor_data** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @analyze_sidechain(%struct.compressor_data* %36, i64 %37)
  br label %44

39:                                               ; preds = %19
  %40 = load %struct.compressor_data*, %struct.compressor_data** %6, align 8
  %41 = load float**, float*** %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @analyze_envelope(%struct.compressor_data* %40, float** %41, i64 %42)
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.compressor_data*, %struct.compressor_data** %6, align 8
  %46 = load float**, float*** %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @process_compression(%struct.compressor_data* %45, float** %46, i64 %47)
  %49 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  store %struct.obs_audio_data* %49, %struct.obs_audio_data** %3, align 8
  br label %50

50:                                               ; preds = %44, %17
  %51 = load %struct.obs_audio_data*, %struct.obs_audio_data** %3, align 8
  ret %struct.obs_audio_data* %51
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @analyze_sidechain(%struct.compressor_data*, i64) #1

declare dso_local i32 @analyze_envelope(%struct.compressor_data*, float**, i64) #1

declare dso_local i32 @process_compression(%struct.compressor_data*, float**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
