; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_event.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, i32, i32 }

@VO_EVENTS_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_event(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo_internal*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vo*, %struct.vo** %3, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 0
  %8 = load %struct.vo_internal*, %struct.vo_internal** %7, align 8
  store %struct.vo_internal* %8, %struct.vo_internal** %5, align 8
  %9 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %10 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %9, i32 0, i32 2
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %13 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @VO_EVENTS_USER, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @VO_EVENTS_USER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.vo*, %struct.vo** %3, align 8
  %25 = call i32 @wakeup_core(%struct.vo* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.vo*, %struct.vo** %3, align 8
  %31 = call i32 @wakeup_locked(%struct.vo* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %35 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %40 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %44 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %43, i32 0, i32 2
  %45 = call i32 @pthread_mutex_unlock(i32* %44)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @wakeup_core(%struct.vo*) #1

declare dso_local i32 @wakeup_locked(%struct.vo*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
