; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_dr_helper.c_dr_helper_release_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_dr_helper.c_dr_helper_release_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dr_helper = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dr_helper_release_thread(%struct.dr_helper* %0) #0 {
  %2 = alloca %struct.dr_helper*, align 8
  store %struct.dr_helper* %0, %struct.dr_helper** %2, align 8
  %3 = load %struct.dr_helper*, %struct.dr_helper** %2, align 8
  %4 = getelementptr inbounds %struct.dr_helper, %struct.dr_helper* %3, i32 0, i32 1
  %5 = call i32 @pthread_mutex_lock(i32* %4)
  %6 = load %struct.dr_helper*, %struct.dr_helper** %2, align 8
  %7 = getelementptr inbounds %struct.dr_helper, %struct.dr_helper* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.dr_helper*, %struct.dr_helper** %2, align 8
  %11 = getelementptr inbounds %struct.dr_helper, %struct.dr_helper* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (...) @pthread_self()
  %14 = call i32 @pthread_equal(i32 %12, i32 %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.dr_helper*, %struct.dr_helper** %2, align 8
  %17 = getelementptr inbounds %struct.dr_helper, %struct.dr_helper* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.dr_helper*, %struct.dr_helper** %2, align 8
  %19 = getelementptr inbounds %struct.dr_helper, %struct.dr_helper* %18, i32 0, i32 1
  %20 = call i32 @pthread_mutex_unlock(i32* %19)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_equal(i32, i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
