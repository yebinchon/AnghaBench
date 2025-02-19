; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting.c_clear_call_queue.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting.c_clear_call_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OS_EVENT_TYPE_AUTO = common dso_local global i32 0, align 4
@clear_queue_signal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clear_call_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_call_queue() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @OS_EVENT_TYPE_AUTO, align 4
  %3 = call i64 @os_event_init(i32** %1, i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %14

6:                                                ; preds = %0
  %7 = load i32, i32* @clear_queue_signal, align 4
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @defer_call_post(i32 %7, i32* %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @os_event_wait(i32* %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @os_event_destroy(i32* %12)
  br label %14

14:                                               ; preds = %6, %5
  ret void
}

declare dso_local i64 @os_event_init(i32**, i32) #1

declare dso_local i32 @defer_call_post(i32, i32*) #1

declare dso_local i32 @os_event_wait(i32*) #1

declare dso_local i32 @os_event_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
