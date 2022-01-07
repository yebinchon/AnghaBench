; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_vo_events.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_vo_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_4__*, %struct.vo* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vo = type { i32 }

@VO_EVENTS_USER = common dso_local global i32 0, align 4
@VO_EVENT_RESIZE = common dso_local global i32 0, align 4
@MP_EVENT_WIN_RESIZE = common dso_local global i32 0, align 4
@VO_EVENT_WIN_STATE = common dso_local global i32 0, align 4
@MP_EVENT_WIN_STATE = common dso_local global i32 0, align 4
@VO_EVENT_FULLSCREEN_STATE = common dso_local global i32 0, align 4
@VOCTRL_GET_FULLSCREEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @handle_vo_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_vo_events(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 2
  %8 = load %struct.vo*, %struct.vo** %7, align 8
  store %struct.vo* %8, %struct.vo** %3, align 8
  %9 = load %struct.vo*, %struct.vo** %3, align 8
  %10 = icmp ne %struct.vo* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.vo*, %struct.vo** %3, align 8
  %13 = load i32, i32* @VO_EVENTS_USER, align 4
  %14 = call i32 @vo_query_and_reset_events(%struct.vo* %12, i32 %13)
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ %14, %11 ], [ 0, %15 ]
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @VO_EVENT_RESIZE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %24 = load i32, i32* @MP_EVENT_WIN_RESIZE, align 4
  %25 = call i32 @mp_notify(%struct.MPContext* %23, i32 %24, i32* null)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VO_EVENT_WIN_STATE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %33 = load i32, i32* @MP_EVENT_WIN_STATE, align 4
  %34 = call i32 @mp_notify(%struct.MPContext* %32, i32 %33, i32* null)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @VO_EVENT_FULLSCREEN_STATE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %42 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.vo*, %struct.vo** %3, align 8
  %49 = load i32, i32* @VOCTRL_GET_FULLSCREEN, align 4
  %50 = call i32 @vo_control(%struct.vo* %48, i32 %49, i32* %5)
  %51 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %52 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %55 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @bstr0(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @m_config_get_co(i32 %56, i32 %57)
  %59 = call i32 @m_config_set_option_raw_direct(i32 %53, i32 %58, i32* %5, i32 0)
  br label %60

60:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @vo_query_and_reset_events(%struct.vo*, i32) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

declare dso_local i32 @vo_control(%struct.vo*, i32, i32*) #1

declare dso_local i32 @m_config_set_option_raw_direct(i32, i32, i32*, i32) #1

declare dso_local i32 @m_config_get_co(i32, i32) #1

declare dso_local i32 @bstr0(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
