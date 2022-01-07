; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_audio_pause.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_audio_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i64, %struct.priv* }
%struct.priv = type { i32, i32, i32, i32, i64 }

@SND_PCM_STATE_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"pcm pause error\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pcm drop error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @audio_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_pause(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 2
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.priv*, %struct.priv** %3, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.ao*, %struct.ao** %2, align 8
  %15 = call i32 @get_delay(%struct.ao* %14)
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.priv*, %struct.priv** %3, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ao*, %struct.ao** %2, align 8
  %22 = getelementptr inbounds %struct.ao, %struct.ao* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = load %struct.priv*, %struct.priv** %3, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ao*, %struct.ao** %2, align 8
  %28 = getelementptr inbounds %struct.ao, %struct.ao* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %13
  %32 = load %struct.ao*, %struct.ao** %2, align 8
  %33 = call i32 @soft_reset(%struct.ao* %32)
  br label %62

34:                                               ; preds = %13
  %35 = load %struct.priv*, %struct.priv** %3, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.priv*, %struct.priv** %3, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @snd_pcm_state(i32 %42)
  %44 = load i64, i64* @SND_PCM_STATE_RUNNING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.priv*, %struct.priv** %3, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @snd_pcm_pause(i32 %49, i32 1)
  store i32 %50, i32* %4, align 4
  %51 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.priv*, %struct.priv** %3, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %46, %39
  br label %61

55:                                               ; preds = %34
  %56 = load %struct.priv*, %struct.priv** %3, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snd_pcm_drop(i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %55, %54
  br label %62

62:                                               ; preds = %61, %31
  %63 = load %struct.priv*, %struct.priv** %3, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %12, %62
  ret void
}

declare dso_local i32 @get_delay(%struct.ao*) #1

declare dso_local i32 @soft_reset(%struct.ao*) #1

declare dso_local i64 @snd_pcm_state(i32) #1

declare dso_local i32 @snd_pcm_pause(i32, i32) #1

declare dso_local i32 @CHECK_ALSA_ERROR(i8*) #1

declare dso_local i32 @snd_pcm_drop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
