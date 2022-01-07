; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-wrapper.c_pulse_context_ready.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-wrapper.c_pulse_context_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pulse_context = common dso_local global i32 0, align 4
@PA_CONTEXT_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pulse_context_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse_context_ready() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @pulse_lock()
  %3 = load i32, i32* @pulse_context, align 4
  %4 = call i64 @pa_context_get_state(i32 %3)
  %5 = call i32 @PA_CONTEXT_IS_GOOD(i64 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @pulse_unlock()
  store i32 -1, i32* %1, align 4
  br label %19

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %15, %9
  %11 = load i32, i32* @pulse_context, align 4
  %12 = call i64 @pa_context_get_state(i32 %11)
  %13 = load i64, i64* @PA_CONTEXT_READY, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 (...) @pulse_wait()
  br label %10

17:                                               ; preds = %10
  %18 = call i32 (...) @pulse_unlock()
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %7
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @pulse_lock(...) #1

declare dso_local i32 @PA_CONTEXT_IS_GOOD(i64) #1

declare dso_local i64 @pa_context_get_state(i32) #1

declare dso_local i32 @pulse_unlock(...) #1

declare dso_local i32 @pulse_wait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
