; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_audio_resume.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_audio_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64, %struct.priv* }
%struct.priv = type { i32, i64, i32, i64 }

@SND_PCM_STATE_PAUSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"pcm resume error\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"resume not supported by hardware\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"pcm prepare error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @audio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_resume(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 1
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.priv*, %struct.priv** %3, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.ao*, %struct.ao** %2, align 8
  %15 = call i32 @resume_device(%struct.ao* %14)
  %16 = load %struct.ao*, %struct.ao** %2, align 8
  %17 = getelementptr inbounds %struct.ao, %struct.ao* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.ao*, %struct.ao** %2, align 8
  %24 = call i32 @get_delay(%struct.ao* %23)
  br label %53

25:                                               ; preds = %13
  %26 = load %struct.priv*, %struct.priv** %3, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.priv*, %struct.priv** %3, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @snd_pcm_state(i32 %33)
  %35 = load i64, i64* @SND_PCM_STATE_PAUSED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.priv*, %struct.priv** %3, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @snd_pcm_pause(i32 %40, i32 0)
  store i32 %41, i32* %4, align 4
  %42 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %37, %30
  br label %52

44:                                               ; preds = %25
  %45 = load %struct.ao*, %struct.ao** %2, align 8
  %46 = call i32 @MP_VERBOSE(%struct.ao* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.priv*, %struct.priv** %3, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_pcm_prepare(i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %44, %43
  br label %53

53:                                               ; preds = %52, %20
  %54 = load %struct.priv*, %struct.priv** %3, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.ao*, %struct.ao** %2, align 8
  %60 = load %struct.priv*, %struct.priv** %3, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ao_play_silence(%struct.ao* %59, i64 %62)
  br label %64

64:                                               ; preds = %58, %53
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.priv*, %struct.priv** %3, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %12
  ret void
}

declare dso_local i32 @resume_device(%struct.ao*) #1

declare dso_local i32 @get_delay(%struct.ao*) #1

declare dso_local i64 @snd_pcm_state(i32) #1

declare dso_local i32 @snd_pcm_pause(i32, i32) #1

declare dso_local i32 @CHECK_ALSA_ERROR(i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*) #1

declare dso_local i32 @snd_pcm_prepare(i32) #1

declare dso_local i32 @ao_play_silence(%struct.ao*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
