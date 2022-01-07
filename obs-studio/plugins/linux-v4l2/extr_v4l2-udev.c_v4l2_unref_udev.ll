; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-udev.c_v4l2_unref_udev.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-udev.c_v4l2_unref_udev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@udev_mutex = common dso_local global i32 0, align 4
@udev_refs = common dso_local global i64 0, align 8
@udev_event = common dso_local global i32 0, align 4
@udev_thread = common dso_local global i32 0, align 4
@udev_signalhandler = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_unref_udev() #0 {
  %1 = call i32 @pthread_mutex_lock(i32* @udev_mutex)
  %2 = load i64, i64* @udev_refs, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %0
  %5 = load i64, i64* @udev_refs, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* @udev_refs, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load i32, i32* @udev_event, align 4
  %10 = call i32 @os_event_signal(i32 %9)
  %11 = load i32, i32* @udev_thread, align 4
  %12 = call i32 @pthread_join(i32 %11, i32* null)
  %13 = load i32, i32* @udev_event, align 4
  %14 = call i32 @os_event_destroy(i32 %13)
  %15 = load i32*, i32** @udev_signalhandler, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i32*, i32** @udev_signalhandler, align 8
  %19 = call i32 @signal_handler_destroy(i32* %18)
  br label %20

20:                                               ; preds = %17, %8
  store i32* null, i32** @udev_signalhandler, align 8
  br label %21

21:                                               ; preds = %20, %4, %0
  %22 = call i32 @pthread_mutex_unlock(i32* @udev_mutex)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @os_event_destroy(i32) #1

declare dso_local i32 @signal_handler_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
