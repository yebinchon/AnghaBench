; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-udev.c_v4l2_init_udev.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-udev.c_v4l2_init_udev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@udev_mutex = common dso_local global i32 0, align 4
@udev_refs = common dso_local global i64 0, align 8
@udev_event = common dso_local global i32 0, align 4
@OS_EVENT_TYPE_MANUAL = common dso_local global i32 0, align 4
@udev_thread = common dso_local global i32 0, align 4
@udev_event_thread = common dso_local global i32 0, align 4
@udev_signalhandler = common dso_local global i32 0, align 4
@udev_signals = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_init_udev() #0 {
  %1 = call i32 @pthread_mutex_lock(i32* @udev_mutex)
  %2 = load i64, i64* @udev_refs, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = load i32, i32* @OS_EVENT_TYPE_MANUAL, align 4
  %6 = call i64 @os_event_init(i32* @udev_event, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %26

9:                                                ; preds = %4
  %10 = load i32, i32* @udev_event_thread, align 4
  %11 = call i64 @pthread_create(i32* @udev_thread, i32* null, i32 %10, i32* null)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %26

14:                                               ; preds = %9
  %15 = call i32 (...) @signal_handler_create()
  store i32 %15, i32* @udev_signalhandler, align 4
  %16 = load i32, i32* @udev_signalhandler, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %26

19:                                               ; preds = %14
  %20 = load i32, i32* @udev_signalhandler, align 4
  %21 = load i32, i32* @udev_signals, align 4
  %22 = call i32 @signal_handler_add_array(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %0
  %24 = load i64, i64* @udev_refs, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @udev_refs, align 8
  br label %26

26:                                               ; preds = %23, %18, %13, %8
  %27 = call i32 @pthread_mutex_unlock(i32* @udev_mutex)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @os_event_init(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @signal_handler_create(...) #1

declare dso_local i32 @signal_handler_add_array(i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
