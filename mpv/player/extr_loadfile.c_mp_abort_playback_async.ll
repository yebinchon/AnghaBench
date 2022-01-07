; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_abort_playback_async.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_abort_playback_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, %struct.mp_abort_entry**, i32 }
%struct.mp_abort_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_abort_playback_async(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_abort_entry*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @mp_cancel_trigger(i32 %7)
  %9 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %10 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %9, i32 0, i32 1
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %35, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 2
  %21 = load %struct.mp_abort_entry**, %struct.mp_abort_entry*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mp_abort_entry*, %struct.mp_abort_entry** %21, i64 %23
  %25 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %24, align 8
  store %struct.mp_abort_entry* %25, %struct.mp_abort_entry** %4, align 8
  %26 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %4, align 8
  %27 = getelementptr inbounds %struct.mp_abort_entry, %struct.mp_abort_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %32 = load %struct.mp_abort_entry*, %struct.mp_abort_entry** %4, align 8
  %33 = call i32 @mp_abort_trigger_locked(%struct.MPContext* %31, %struct.mp_abort_entry* %32)
  br label %34

34:                                               ; preds = %30, %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %40 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %39, i32 0, i32 1
  %41 = call i32 @pthread_mutex_unlock(i32* %40)
  ret void
}

declare dso_local i32 @mp_cancel_trigger(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mp_abort_trigger_locked(%struct.MPContext*, %struct.mp_abort_entry*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
