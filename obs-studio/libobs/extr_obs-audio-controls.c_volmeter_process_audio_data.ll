; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_process_audio_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_process_audio_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.audio_data*)* @volmeter_process_audio_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volmeter_process_audio_data(i32* %0, %struct.audio_data* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.audio_data*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.audio_data* %1, %struct.audio_data** %4, align 8
  %6 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %7 = call i32 @get_nr_channels_from_audio_data(%struct.audio_data* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @volmeter_process_peak(i32* %8, %struct.audio_data* %9, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @volmeter_process_magnitude(i32* %12, %struct.audio_data* %13, i32 %14)
  ret void
}

declare dso_local i32 @get_nr_channels_from_audio_data(%struct.audio_data*) #1

declare dso_local i32 @volmeter_process_peak(i32*, %struct.audio_data*, i32) #1

declare dso_local i32 @volmeter_process_magnitude(i32*, %struct.audio_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
