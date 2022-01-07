; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_idle_loop.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_idle_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@PT_QUIT = common dso_local global i64 0, align 8
@MPV_EVENT_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idle_loop(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %39, %1
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PT_QUIT, align 8
  %23 = icmp ne i64 %21, %22
  br label %24

24:                                               ; preds = %18, %11, %4
  %25 = phi i1 [ false, %11 ], [ false, %4 ], [ %23, %18 ]
  br i1 %25, label %26, label %42

26:                                               ; preds = %24
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %31 = call i32 @uninit_audio_out(%struct.MPContext* %30)
  %32 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %33 = call i32 @handle_force_window(%struct.MPContext* %32, i32 1)
  %34 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %35 = call i32 @mp_wakeup_core(%struct.MPContext* %34)
  %36 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %37 = load i32, i32* @MPV_EVENT_IDLE, align 4
  %38 = call i32 @mp_notify(%struct.MPContext* %36, i32 %37, i32* null)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %26
  %40 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %41 = call i32 @mp_idle(%struct.MPContext* %40)
  br label %4

42:                                               ; preds = %24
  ret void
}

declare dso_local i32 @uninit_audio_out(%struct.MPContext*) #1

declare dso_local i32 @handle_force_window(%struct.MPContext*, i32) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

declare dso_local i32 @mp_idle(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
