; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-wrapper.c_pulseaudio_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-wrapper.c_pulseaudio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pulseaudio_mutex = common dso_local global i32 0, align 4
@pulseaudio_refs = common dso_local global i64 0, align 8
@pulseaudio_mainloop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pulseaudio_init() #0 {
  %1 = call i32 @pthread_mutex_lock(i32* @pulseaudio_mutex)
  %2 = load i64, i64* @pulseaudio_refs, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = call i32 (...) @pa_threaded_mainloop_new()
  store i32 %5, i32* @pulseaudio_mainloop, align 4
  %6 = load i32, i32* @pulseaudio_mainloop, align 4
  %7 = call i32 @pa_threaded_mainloop_start(i32 %6)
  %8 = call i32 (...) @pulseaudio_init_context()
  br label %9

9:                                                ; preds = %4, %0
  %10 = load i64, i64* @pulseaudio_refs, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* @pulseaudio_refs, align 8
  %12 = call i32 @pthread_mutex_unlock(i32* @pulseaudio_mutex)
  ret i32 0
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pa_threaded_mainloop_new(...) #1

declare dso_local i32 @pa_threaded_mainloop_start(i32) #1

declare dso_local i32 @pulseaudio_init_context(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
