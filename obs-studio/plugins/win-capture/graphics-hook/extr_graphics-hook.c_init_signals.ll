; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_graphics-hook.c_init_signals.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_graphics-hook.c_init_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVENT_CAPTURE_RESTART = common dso_local global i32 0, align 4
@signal_restart = common dso_local global i8* null, align 8
@EVENT_CAPTURE_STOP = common dso_local global i32 0, align 4
@signal_stop = common dso_local global i8* null, align 8
@EVENT_HOOK_READY = common dso_local global i32 0, align 4
@signal_ready = common dso_local global i8* null, align 8
@EVENT_HOOK_EXIT = common dso_local global i32 0, align 4
@signal_exit = common dso_local global i8* null, align 8
@EVENT_HOOK_INIT = common dso_local global i32 0, align 4
@signal_init = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_signals() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @GetCurrentProcessId()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @EVENT_CAPTURE_RESTART, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i8* @init_event(i32 %4, i32 %5)
  store i8* %6, i8** @signal_restart, align 8
  %7 = load i8*, i8** @signal_restart, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %39

10:                                               ; preds = %0
  %11 = load i32, i32* @EVENT_CAPTURE_STOP, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i8* @init_event(i32 %11, i32 %12)
  store i8* %13, i8** @signal_stop, align 8
  %14 = load i8*, i8** @signal_stop, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %39

17:                                               ; preds = %10
  %18 = load i32, i32* @EVENT_HOOK_READY, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i8* @init_event(i32 %18, i32 %19)
  store i8* %20, i8** @signal_ready, align 8
  %21 = load i8*, i8** @signal_ready, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %39

24:                                               ; preds = %17
  %25 = load i32, i32* @EVENT_HOOK_EXIT, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i8* @init_event(i32 %25, i32 %26)
  store i8* %27, i8** @signal_exit, align 8
  %28 = load i8*, i8** @signal_exit, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %39

31:                                               ; preds = %24
  %32 = load i32, i32* @EVENT_HOOK_INIT, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i8* @init_event(i32 %32, i32 %33)
  store i8* %34, i8** @signal_init, align 8
  %35 = load i8*, i8** @signal_init, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %39

38:                                               ; preds = %31
  store i32 1, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %37, %30, %23, %16, %9
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i8* @init_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
