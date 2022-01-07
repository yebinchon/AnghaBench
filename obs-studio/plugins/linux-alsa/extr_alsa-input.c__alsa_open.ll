; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_open.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alsa_data = type { i32, i32, i32 }

@SND_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to open '%s': %s\00", align 1
@SND_PCM_STATE_PREPARED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Device not prepared: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to start '%s': %s\00", align 1
@PTHREAD_CREATE_JOINABLE = common dso_local global i32 0, align 4
@_alsa_listen = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to create capture thread for device '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_alsa_open(%struct.alsa_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alsa_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.alsa_data* %0, %struct.alsa_data** %3, align 8
  %6 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %7 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %6, i32 0, i32 2
  %8 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %9 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SND_PCM_STREAM_CAPTURE, align 4
  %12 = call i32 @snd_pcm_open(i32* %7, i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @LOG_ERROR, align 4
  %17 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %18 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @snd_strerror(i32 %20)
  %22 = call i32 (i32, i8*, i32, ...) @blog(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21)
  store i32 0, i32* %2, align 4
  br label %79

23:                                               ; preds = %1
  %24 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %25 = call i32 @_alsa_configure(%struct.alsa_data* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %76

28:                                               ; preds = %23
  %29 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %30 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @snd_pcm_state(i32 %31)
  %33 = load i64, i64* @SND_PCM_STATE_PREPARED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32, i32* @LOG_ERROR, align 4
  %37 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %38 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, ...) @blog(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %76

41:                                               ; preds = %28
  %42 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %43 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_pcm_start(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i32, i32* @LOG_ERROR, align 4
  %50 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %51 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @snd_strerror(i32 %53)
  %55 = call i32 (i32, i8*, i32, ...) @blog(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %54)
  br label %76

56:                                               ; preds = %41
  %57 = call i32 @pthread_attr_init(i32* %4)
  %58 = load i32, i32* @PTHREAD_CREATE_JOINABLE, align 4
  %59 = call i32 @pthread_attr_setdetachstate(i32* %4, i32 %58)
  %60 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %61 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %60, i32 0, i32 1
  %62 = load i32, i32* @_alsa_listen, align 4
  %63 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %64 = call i32 @pthread_create(i32* %61, i32* %4, i32 %62, %struct.alsa_data* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = call i32 @pthread_attr_destroy(i32* %4)
  %69 = load i32, i32* @LOG_ERROR, align 4
  %70 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %71 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, i32, ...) @blog(i32 %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %76

74:                                               ; preds = %56
  %75 = call i32 @pthread_attr_destroy(i32* %4)
  store i32 1, i32* %2, align 4
  br label %79

76:                                               ; preds = %67, %48, %35, %27
  %77 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %78 = call i32 @_alsa_close(%struct.alsa_data* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %74, %15
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @snd_pcm_open(i32*, i32, i32, i32) #1

declare dso_local i32 @blog(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_strerror(i32) #1

declare dso_local i32 @_alsa_configure(%struct.alsa_data*) #1

declare dso_local i64 @snd_pcm_state(i32) #1

declare dso_local i32 @snd_pcm_start(i32) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.alsa_data*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @_alsa_close(%struct.alsa_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
