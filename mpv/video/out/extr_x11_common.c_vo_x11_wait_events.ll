; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_wait_events.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_wait_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i32*, i32 }
%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_x11_wait_events(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo_x11_state*, align 8
  %6 = alloca [2 x %struct.pollfd], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vo*, %struct.vo** %3, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 0
  %11 = load %struct.vo_x11_state*, %struct.vo_x11_state** %10, align 8
  store %struct.vo_x11_state* %11, %struct.vo_x11_state** %5, align 8
  %12 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 0
  %14 = load i32, i32* @POLLIN, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 2
  %17 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %18 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i64 1
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 0
  %22 = load i32, i32* @POLLIN, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 2
  %25 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %26 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %24, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (...) @mp_time_us()
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 999
  %35 = sdiv i32 %34, 1000
  %36 = call i32 @MPCLAMP(i32 %35, i32 0, i32 10000)
  store i32 %36, i32* %8, align 4
  %37 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @poll(%struct.pollfd* %37, i32 2, i32 %38)
  %40 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 1
  %41 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @POLLIN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %2
  %47 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %48 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mp_flush_wakeup_pipe(i32 %51)
  br label %53

53:                                               ; preds = %46, %2
  ret void
}

declare dso_local i32 @mp_time_us(...) #1

declare dso_local i32 @MPCLAMP(i32, i32, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @mp_flush_wakeup_pipe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
