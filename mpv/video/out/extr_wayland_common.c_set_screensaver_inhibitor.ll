; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_set_screensaver_inhibitor.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_set_screensaver_inhibitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_state = type { i32*, i32, %struct.zwp_idle_inhibit_manager_v1* }
%struct.zwp_idle_inhibit_manager_v1 = type { i32 }

@VO_NOTIMPL = common dso_local global i32 0, align 4
@VO_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Enabling idle inhibitor\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Disabling the idle inhibitor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_wayland_state*, i32)* @set_screensaver_inhibitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_screensaver_inhibitor(%struct.vo_wayland_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo_wayland_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zwp_idle_inhibit_manager_v1*, align 8
  store %struct.vo_wayland_state* %0, %struct.vo_wayland_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %8 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %7, i32 0, i32 2
  %9 = load %struct.zwp_idle_inhibit_manager_v1*, %struct.zwp_idle_inhibit_manager_v1** %8, align 8
  %10 = icmp ne %struct.zwp_idle_inhibit_manager_v1* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @VO_NOTIMPL, align 4
  store i32 %12, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %16 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = icmp eq i32 %14, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @VO_TRUE, align 4
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %30 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %32 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %31, i32 0, i32 2
  %33 = load %struct.zwp_idle_inhibit_manager_v1*, %struct.zwp_idle_inhibit_manager_v1** %32, align 8
  store %struct.zwp_idle_inhibit_manager_v1* %33, %struct.zwp_idle_inhibit_manager_v1** %6, align 8
  %34 = load %struct.zwp_idle_inhibit_manager_v1*, %struct.zwp_idle_inhibit_manager_v1** %6, align 8
  %35 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %36 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @zwp_idle_inhibit_manager_v1_create_inhibitor(%struct.zwp_idle_inhibit_manager_v1* %34, i32 %37)
  %39 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %40 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  br label %50

41:                                               ; preds = %25
  %42 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %43 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %45 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @zwp_idle_inhibitor_v1_destroy(i32* %46)
  %48 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %49 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %41, %28
  %51 = load i32, i32* @VO_TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %23, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @MP_VERBOSE(%struct.vo_wayland_state*, i8*) #1

declare dso_local i32* @zwp_idle_inhibit_manager_v1_create_inhibitor(%struct.zwp_idle_inhibit_manager_v1*, i32) #1

declare dso_local i32 @zwp_idle_inhibitor_v1_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
