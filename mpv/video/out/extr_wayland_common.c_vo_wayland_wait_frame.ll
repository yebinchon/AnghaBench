; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_vo_wayland_wait_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_vo_wayland_wait_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_state = type { i32, i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pollfd = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_wayland_wait_frame(%struct.vo_wayland_state* %0, i32 %1) #0 {
  %3 = alloca %struct.vo_wayland_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.pollfd], align 4
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vo_wayland_state* %0, %struct.vo_wayland_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %5, i64 0, i64 0
  %10 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 0
  %11 = load i32, i32* @POLLIN, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  %13 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %14 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sitofp i32 %20 to double
  %22 = fdiv double 1.000000e+06, %21
  store double %22, double* %6, align 8
  %23 = call i64 (...) @mp_time_us()
  %24 = sitofp i64 %23 to double
  %25 = load double, double* %6, align 8
  %26 = fadd double %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sitofp i64 %28 to double
  %30 = fadd double %26, %29
  %31 = fptosi double %30 to i64
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %68, %2
  %33 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %34 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* %7, align 8
  %39 = call i64 (...) @mp_time_us()
  %40 = icmp sgt i64 %38, %39
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ false, %32 ], [ %40, %37 ]
  br i1 %42, label %43, label %80

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %50, %43
  %45 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %46 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @wl_display_prepare_read(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %52 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wl_display_dispatch_pending(i32 %53)
  br label %44

55:                                               ; preds = %44
  %56 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %57 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @wl_display_flush(i32 %58)
  %60 = load i64, i64* %7, align 8
  %61 = call i64 (...) @mp_time_us()
  %62 = sub nsw i64 %60, %61
  %63 = sdiv i64 %62, 1000
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %67, %55
  %69 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %5, i64 0, i64 0
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @poll(%struct.pollfd* %69, i32 1, i32 %70)
  %72 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %73 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @wl_display_read_events(i32 %74)
  %76 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %77 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @wl_display_dispatch_pending(i32 %78)
  br label %32

80:                                               ; preds = %41
  %81 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %82 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %87 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %95

90:                                               ; preds = %80
  %91 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %92 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %94 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %97 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %100 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %98, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %107 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %95
  ret void
}

declare dso_local i64 @mp_time_us(...) #1

declare dso_local i64 @wl_display_prepare_read(i32) #1

declare dso_local i32 @wl_display_dispatch_pending(i32) #1

declare dso_local i32 @wl_display_flush(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @wl_display_read_events(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
