; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-wrapper.c_pulseaudio_unref.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-wrapper.c_pulseaudio_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pulseaudio_mutex = common dso_local global i32 0, align 4
@pulseaudio_refs = common dso_local global i64 0, align 8
@pulseaudio_context = common dso_local global i32* null, align 8
@pulseaudio_mainloop = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pulseaudio_unref() #0 {
  %1 = call i32 @pthread_mutex_lock(i32* @pulseaudio_mutex)
  %2 = load i64, i64* @pulseaudio_refs, align 8
  %3 = add nsw i64 %2, -1
  store i64 %3, i64* @pulseaudio_refs, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %0
  %6 = call i32 (...) @pulseaudio_lock()
  %7 = load i32*, i32** @pulseaudio_context, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i32*, i32** @pulseaudio_context, align 8
  %11 = call i32 @pa_context_disconnect(i32* %10)
  %12 = load i32*, i32** @pulseaudio_context, align 8
  %13 = call i32 @pa_context_unref(i32* %12)
  store i32* null, i32** @pulseaudio_context, align 8
  br label %14

14:                                               ; preds = %9, %5
  %15 = call i32 (...) @pulseaudio_unlock()
  %16 = load i32*, i32** @pulseaudio_mainloop, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32*, i32** @pulseaudio_mainloop, align 8
  %20 = call i32 @pa_threaded_mainloop_stop(i32* %19)
  %21 = load i32*, i32** @pulseaudio_mainloop, align 8
  %22 = call i32 @pa_threaded_mainloop_free(i32* %21)
  store i32* null, i32** @pulseaudio_mainloop, align 8
  br label %23

23:                                               ; preds = %18, %14
  br label %24

24:                                               ; preds = %23, %0
  %25 = call i32 @pthread_mutex_unlock(i32* @pulseaudio_mutex)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pulseaudio_lock(...) #1

declare dso_local i32 @pa_context_disconnect(i32*) #1

declare dso_local i32 @pa_context_unref(i32*) #1

declare dso_local i32 @pulseaudio_unlock(...) #1

declare dso_local i32 @pa_threaded_mainloop_stop(i32*) #1

declare dso_local i32 @pa_threaded_mainloop_free(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
