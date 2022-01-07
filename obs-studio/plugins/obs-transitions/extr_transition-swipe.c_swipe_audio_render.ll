; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-swipe.c_swipe_audio_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-swipe.c_swipe_audio_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_audio_mix = type { i32 }
%struct.swipe_info = type { i32 }

@mix_a = common dso_local global i32 0, align 4
@mix_b = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.obs_source_audio_mix*, i32, i64, i64)* @swipe_audio_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swipe_audio_render(i8* %0, i32* %1, %struct.obs_source_audio_mix* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.obs_source_audio_mix*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.swipe_info*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.obs_source_audio_mix* %2, %struct.obs_source_audio_mix** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.swipe_info*
  store %struct.swipe_info* %15, %struct.swipe_info** %13, align 8
  %16 = load %struct.swipe_info*, %struct.swipe_info** %13, align 8
  %17 = getelementptr inbounds %struct.swipe_info, %struct.swipe_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.obs_source_audio_mix*, %struct.obs_source_audio_mix** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i32, i32* @mix_a, align 4
  %25 = load i32, i32* @mix_b, align 4
  %26 = call i32 @obs_transition_audio_render(i32 %18, i32* %19, %struct.obs_source_audio_mix* %20, i32 %21, i64 %22, i64 %23, i32 %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @obs_transition_audio_render(i32, i32*, %struct.obs_source_audio_mix*, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
