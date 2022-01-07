; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_thread_tools.c_mp_cancel_get_fd.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_thread_tools.c_mp_cancel_get_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cancel = type { i64*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_cancel_get_fd(%struct.mp_cancel* %0) #0 {
  %2 = alloca %struct.mp_cancel*, align 8
  store %struct.mp_cancel* %0, %struct.mp_cancel** %2, align 8
  %3 = load %struct.mp_cancel*, %struct.mp_cancel** %2, align 8
  %4 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %3, i32 0, i32 1
  %5 = call i32 @pthread_mutex_lock(i32* %4)
  %6 = load %struct.mp_cancel*, %struct.mp_cancel** %2, align 8
  %7 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.mp_cancel*, %struct.mp_cancel** %2, align 8
  %14 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = call i32 @mp_make_wakeup_pipe(i64* %15)
  %17 = load %struct.mp_cancel*, %struct.mp_cancel** %2, align 8
  %18 = call i32 @retrigger_locked(%struct.mp_cancel* %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.mp_cancel*, %struct.mp_cancel** %2, align 8
  %21 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %20, i32 0, i32 1
  %22 = call i32 @pthread_mutex_unlock(i32* %21)
  %23 = load %struct.mp_cancel*, %struct.mp_cancel** %2, align 8
  %24 = getelementptr inbounds %struct.mp_cancel, %struct.mp_cancel* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  ret i32 %28
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mp_make_wakeup_pipe(i64*) #1

declare dso_local i32 @retrigger_locked(%struct.mp_cancel*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
