; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_update_core_idle_state.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_update_core_idle_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i64, i32, i64, i32, i64, i32 }

@STATUS_EOF = common dso_local global i64 0, align 8
@MP_EVENT_CORE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_core_idle_state(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @STATUS_EOF, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STATUS_EOF, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ false, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %16
  %24 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %25 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %35 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %33, %28, %23, %16
  %43 = phi i1 [ false, %33 ], [ false, %28 ], [ false, %23 ], [ false, %16 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %55 = call i32 @update_screensaver_state(%struct.MPContext* %54)
  %56 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %57 = load i32, i32* @MP_EVENT_CORE_IDLE, align 4
  %58 = call i32 @mp_notify(%struct.MPContext* %56, i32 %57, i32* null)
  br label %59

59:                                               ; preds = %50, %42
  ret void
}

declare dso_local i32 @update_screensaver_state(%struct.MPContext*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
