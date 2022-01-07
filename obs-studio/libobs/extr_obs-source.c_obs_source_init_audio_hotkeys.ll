; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_init_audio_hotkeys.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_init_audio_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.obs_source = type { i8*, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@OBS_SOURCE_AUDIO = common dso_local global i32 0, align 4
@OBS_SOURCE_TYPE_INPUT = common dso_local global i64 0, align 8
@OBS_INVALID_HOTKEY_ID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"libobs.mute\00", align 1
@obs = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"libobs.unmute\00", align 1
@obs_source_hotkey_mute = common dso_local global i32 0, align 4
@obs_source_hotkey_unmute = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"libobs.push-to-mute\00", align 1
@obs_source_hotkey_push_to_mute = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"libobs.push-to-talk\00", align 1
@obs_source_hotkey_push_to_talk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source*)* @obs_source_init_audio_hotkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_source_init_audio_hotkeys(%struct.obs_source* %0) #0 {
  %2 = alloca %struct.obs_source*, align 8
  store %struct.obs_source* %0, %struct.obs_source** %2, align 8
  %3 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %4 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @OBS_SOURCE_AUDIO, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %12 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OBS_SOURCE_TYPE_INPUT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %10, %1
  %18 = load i8*, i8** @OBS_INVALID_HOTKEY_ID, align 8
  %19 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %20 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @OBS_INVALID_HOTKEY_ID, align 8
  %22 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %23 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %61

24:                                               ; preds = %10
  %25 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @obs_source_hotkey_mute, align 4
  %35 = load i32, i32* @obs_source_hotkey_unmute, align 4
  %36 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %37 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %38 = call i8* @obs_hotkey_pair_register_source(%struct.obs_source* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %35, %struct.obs_source* %36, %struct.obs_source* %37)
  %39 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %40 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @obs_source_hotkey_push_to_mute, align 4
  %47 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %48 = call i8* @obs_hotkey_register_source(%struct.obs_source* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46, %struct.obs_source* %47)
  %49 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %50 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @obs_source_hotkey_push_to_talk, align 4
  %57 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %58 = call i8* @obs_hotkey_register_source(%struct.obs_source* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56, %struct.obs_source* %57)
  %59 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %60 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %24, %17
  ret void
}

declare dso_local i8* @obs_hotkey_pair_register_source(%struct.obs_source*, i8*, i32, i8*, i32, i32, i32, %struct.obs_source*, %struct.obs_source*) #1

declare dso_local i8* @obs_hotkey_register_source(%struct.obs_source*, i8*, i32, i32, %struct.obs_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
