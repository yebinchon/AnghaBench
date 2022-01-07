; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_get_display_fps.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_get_display_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { double, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @vo_get_display_fps(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  %4 = alloca double, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %5 = load %struct.vo*, %struct.vo** %2, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 0
  %7 = load %struct.vo_internal*, %struct.vo_internal** %6, align 8
  store %struct.vo_internal* %7, %struct.vo_internal** %3, align 8
  %8 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %9 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %8, i32 0, i32 1
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  %11 = load %struct.vo*, %struct.vo** %2, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 0
  %13 = load %struct.vo_internal*, %struct.vo_internal** %12, align 8
  %14 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  store double %15, double* %4, align 8
  %16 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %17 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %16, i32 0, i32 1
  %18 = call i32 @pthread_mutex_unlock(i32* %17)
  %19 = load double, double* %4, align 8
  ret double %19
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
