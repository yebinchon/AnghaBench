; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_seek_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_seek_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_seek_reset(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 0
  %6 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  store %struct.vo_internal* %6, %struct.vo_internal** %3, align 8
  %7 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %8 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %7, i32 0, i32 1
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.vo*, %struct.vo** %2, align 8
  %11 = call i32 @forget_frames(%struct.vo* %10)
  %12 = load %struct.vo*, %struct.vo** %2, align 8
  %13 = call i32 @reset_vsync_timings(%struct.vo* %12)
  %14 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %15 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.vo*, %struct.vo** %2, align 8
  %17 = call i32 @wakeup_locked(%struct.vo* %16)
  %18 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %19 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %18, i32 0, i32 1
  %20 = call i32 @pthread_mutex_unlock(i32* %19)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @forget_frames(%struct.vo*) #1

declare dso_local i32 @reset_vsync_timings(%struct.vo*) #1

declare dso_local i32 @wakeup_locked(%struct.vo*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
