; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_vo_wayland_wait_events.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_vo_wayland_wait_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.vo_wayland_state* }
%struct.vo_wayland_state = type { i32, i32*, %struct.wl_display* }
%struct.wl_display = type { i32 }
%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error occurred on the display fd, closing\0A\00", align 1
@MP_KEY_CLOSE_WIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_wayland_wait_events(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo_wayland_state*, align 8
  %6 = alloca %struct.wl_display*, align 8
  %7 = alloca [2 x %struct.pollfd], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 1
  %12 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  store %struct.vo_wayland_state* %12, %struct.vo_wayland_state** %5, align 8
  %13 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %14 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %13, i32 0, i32 2
  %15 = load %struct.wl_display*, %struct.wl_display** %14, align 8
  store %struct.wl_display* %15, %struct.wl_display** %6, align 8
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %102

21:                                               ; preds = %2
  %22 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %7, i64 0, i64 0
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %22, i32 0, i32 0
  %24 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %25 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %22, i32 0, i32 1
  %28 = load i32, i32* @POLLIN, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %22, i32 0, i32 2
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %22, i64 1
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %30, i32 0, i32 0
  %32 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %33 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %31, align 4
  %37 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %30, i32 0, i32 1
  %38 = load i32, i32* @POLLIN, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %30, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (...) @mp_time_us()
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 999
  %45 = sdiv i32 %44, 1000
  %46 = call i32 @MPCLAMP(i32 %45, i32 0, i32 10000)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.wl_display*, %struct.wl_display** %6, align 8
  %48 = call i32 @wl_display_dispatch_pending(%struct.wl_display* %47)
  %49 = load %struct.wl_display*, %struct.wl_display** %6, align 8
  %50 = call i32 @wl_display_flush(%struct.wl_display* %49)
  %51 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %7, i64 0, i64 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @poll(%struct.pollfd* %51, i32 2, i32 %52)
  %54 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %7, i64 0, i64 0
  %55 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @POLLERR, align 4
  %58 = load i32, i32* @POLLHUP, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @POLLNVAL, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %56, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %21
  %65 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %66 = call i32 @MP_FATAL(%struct.vo_wayland_state* %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %68 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @close(i32 %69)
  %71 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %72 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load %struct.vo*, %struct.vo** %3, align 8
  %74 = getelementptr inbounds %struct.vo, %struct.vo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MP_KEY_CLOSE_WIN, align 4
  %77 = call i32 @mp_input_put_key(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %64, %21
  %79 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %7, i64 0, i64 0
  %80 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @POLLIN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.wl_display*, %struct.wl_display** %6, align 8
  %87 = call i32 @wl_display_dispatch(%struct.wl_display* %86)
  br label %88

88:                                               ; preds = %85, %78
  %89 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %7, i64 0, i64 1
  %90 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @POLLIN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %97 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @mp_flush_wakeup_pipe(i32 %100)
  br label %102

102:                                              ; preds = %20, %95, %88
  ret void
}

declare dso_local i32 @mp_time_us(...) #1

declare dso_local i32 @MPCLAMP(i32, i32, i32) #1

declare dso_local i32 @wl_display_dispatch_pending(%struct.wl_display*) #1

declare dso_local i32 @wl_display_flush(%struct.wl_display*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @MP_FATAL(%struct.vo_wayland_state*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @mp_input_put_key(i32, i32) #1

declare dso_local i32 @wl_display_dispatch(%struct.wl_display*) #1

declare dso_local i32 @mp_flush_wakeup_pipe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
