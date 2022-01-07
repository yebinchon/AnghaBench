; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_check_dnd_fd.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_check_dnd_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_state = type { i32, i64, i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pollfd = type { i32, i32, i32, i32 }
%struct.bstr = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Read %td bytes from the DND fd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_wayland_state*)* @check_dnd_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_dnd_fd(%struct.vo_wayland_state* %0) #0 {
  %2 = alloca %struct.vo_wayland_state*, align 8
  %3 = alloca %struct.pollfd, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bstr, align 4
  store %struct.vo_wayland_state* %0, %struct.vo_wayland_state** %2, align 8
  %9 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %10 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %122

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 0
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 1
  %20 = load i32, i32* @POLLIN, align 4
  %21 = load i32, i32* @POLLERR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @POLLHUP, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %19, align 4
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = call i64 @poll(%struct.pollfd* %3, i32 1, i32 0)
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %122

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @POLLIN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %105

36:                                               ; preds = %30
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 1, i64* %6, align 8
  %37 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %38 = call i32* @ta_zalloc_size(%struct.vo_wayland_state* %37, i64 1)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %92

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %68, %42
  %44 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %45 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call i64 @read(i32 %46, i32* %49, i64 1)
  store i64 %50, i64* %5, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %43
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %4, align 8
  %56 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %58, 1
  %60 = call i32* @ta_realloc_size(%struct.vo_wayland_state* %56, i32* %57, i64 %59)
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i32 @memset(i32* %63, i32 0, i64 1)
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %52
  br label %92

68:                                               ; preds = %52
  br label %43

69:                                               ; preds = %43
  %70 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @bstr0(i32* %73)
  %75 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %77 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %76, i32 0, i32 5
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %82 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %85 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mp_event_drop_mime_data(i32 %80, i32* %83, i32 %88, i32 %86)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @talloc_free(i32* %90)
  br label %92

92:                                               ; preds = %69, %67, %41
  %93 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %94 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @wl_data_offer_finish(i32 %95)
  %97 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %98 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @talloc_free(i32* %99)
  %101 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %102 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %101, i32 0, i32 2
  store i32* null, i32** %102, align 8
  %103 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %104 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %92, %30
  %106 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @POLLIN, align 4
  %109 = load i32, i32* @POLLERR, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @POLLHUP, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %107, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %105
  %116 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %117 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @close(i32 %118)
  %120 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %121 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %120, i32 0, i32 0
  store i32 -1, i32* %121, align 8
  br label %122

122:                                              ; preds = %13, %29, %115, %105
  ret void
}

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32* @ta_zalloc_size(%struct.vo_wayland_state*, i64) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32* @ta_realloc_size(%struct.vo_wayland_state*, i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo_wayland_state*, i8*, i64) #1

declare dso_local i32 @bstr0(i32*) #1

declare dso_local i32 @mp_event_drop_mime_data(i32, i32*, i32, i32) #1

declare dso_local i32 @talloc_free(i32*) #1

declare dso_local i32 @wl_data_offer_finish(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
