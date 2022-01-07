; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_wakeup_gui_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_wakeup_gui_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_w32_state = type { i32 }

@WM_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wakeup_gui_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_gui_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vo_w32_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.vo_w32_state*
  store %struct.vo_w32_state* %5, %struct.vo_w32_state** %3, align 8
  %6 = load %struct.vo_w32_state*, %struct.vo_w32_state** %3, align 8
  %7 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @GetWindowThreadProcessId(i32 %8, i32* null)
  %10 = call i64 (...) @GetCurrentThreadId()
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.vo_w32_state*, %struct.vo_w32_state** %3, align 8
  %14 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WM_NULL, align 4
  %17 = call i32 @PostMessageW(i32 %15, i32 %16, i32 0, i32 0)
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.vo_w32_state*, %struct.vo_w32_state** %3, align 8
  %20 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WM_NULL, align 4
  %23 = call i32 @SendNotifyMessageW(i32 %21, i32 %22, i32 0, i32 0)
  br label %24

24:                                               ; preds = %18, %12
  ret void
}

declare dso_local i64 @GetWindowThreadProcessId(i32, i32*) #1

declare dso_local i64 @GetCurrentThreadId(...) #1

declare dso_local i32 @PostMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @SendNotifyMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
