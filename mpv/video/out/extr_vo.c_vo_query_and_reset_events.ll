; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_query_and_reset_events.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_query_and_reset_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vo_query_and_reset_events(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo_internal*, align 8
  %6 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.vo_internal*, %struct.vo_internal** %8, align 8
  store %struct.vo_internal* %9, %struct.vo_internal** %5, align 8
  %10 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %11 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %10, i32 0, i32 1
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  %13 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %14 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %21 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %25 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %24, i32 0, i32 1
  %26 = call i32 @pthread_mutex_unlock(i32* %25)
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
