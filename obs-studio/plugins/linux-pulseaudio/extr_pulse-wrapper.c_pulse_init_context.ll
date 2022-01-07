; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-wrapper.c_pulse_init_context.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-wrapper.c_pulse_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pulse_mainloop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"OBS\00", align 1
@pulse_context = common dso_local global i32 0, align 4
@pulse_context_state_changed = common dso_local global i32 0, align 4
@PA_CONTEXT_NOAUTOSPAWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pulse_init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pulse_init_context() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @pulse_lock()
  %3 = call i32* (...) @pulse_properties()
  store i32* %3, i32** %1, align 8
  %4 = load i32, i32* @pulse_mainloop, align 4
  %5 = call i32 @pa_threaded_mainloop_get_api(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @pa_context_new_with_proplist(i32 %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %7, i32* @pulse_context, align 4
  %8 = load i32, i32* @pulse_context, align 4
  %9 = load i32, i32* @pulse_context_state_changed, align 4
  %10 = call i32 @pa_context_set_state_callback(i32 %8, i32 %9, i32* null)
  %11 = load i32, i32* @pulse_context, align 4
  %12 = load i32, i32* @PA_CONTEXT_NOAUTOSPAWN, align 4
  %13 = call i32 @pa_context_connect(i32 %11, i32* null, i32 %12, i32* null)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @pa_proplist_free(i32* %14)
  %16 = call i32 (...) @pulse_unlock()
  ret void
}

declare dso_local i32 @pulse_lock(...) #1

declare dso_local i32* @pulse_properties(...) #1

declare dso_local i32 @pa_context_new_with_proplist(i32, i8*, i32*) #1

declare dso_local i32 @pa_threaded_mainloop_get_api(i32) #1

declare dso_local i32 @pa_context_set_state_callback(i32, i32, i32*) #1

declare dso_local i32 @pa_context_connect(i32, i32*, i32, i32*) #1

declare dso_local i32 @pa_proplist_free(i32*) #1

declare dso_local i32 @pulse_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
