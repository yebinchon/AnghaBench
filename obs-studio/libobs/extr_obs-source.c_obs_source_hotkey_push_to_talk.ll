; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_hotkey_push_to_talk.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_hotkey_push_to_talk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_action = type { i32, i32, i32 }
%struct.obs_source = type { i32, i32, i32 }

@AUDIO_ACTION_PTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32)* @obs_source_hotkey_push_to_talk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_source_hotkey_push_to_talk(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.audio_action, align 4
  %10 = alloca %struct.obs_source*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %9, i32 0, i32 0
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %9, i32 0, i32 1
  %14 = load i32, i32* @AUDIO_ACTION_PTT, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %9, i32 0, i32 2
  %16 = call i32 (...) @os_gettime_ns()
  store i32 %16, i32* %15, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @UNUSED_PARAMETER(i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @UNUSED_PARAMETER(i32* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.obs_source*
  store %struct.obs_source* %22, %struct.obs_source** %10, align 8
  %23 = load %struct.obs_source*, %struct.obs_source** %10, align 8
  %24 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %23, i32 0, i32 1
  %25 = call i32 @pthread_mutex_lock(i32* %24)
  %26 = load %struct.obs_source*, %struct.obs_source** %10, align 8
  %27 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @da_push_back(i32 %28, %struct.audio_action* %9)
  %30 = load %struct.obs_source*, %struct.obs_source** %10, align 8
  %31 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %30, i32 0, i32 1
  %32 = call i32 @pthread_mutex_unlock(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.obs_source*, %struct.obs_source** %10, align 8
  %35 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i32 @os_gettime_ns(...) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @da_push_back(i32, %struct.audio_action*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
