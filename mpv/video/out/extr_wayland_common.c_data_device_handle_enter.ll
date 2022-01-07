; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_device_handle_enter.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_device_handle_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_data_device = type { i32 }
%struct.wl_surface = type { i32 }
%struct.wl_data_offer = type { i32 }
%struct.vo_wayland_state = type { i32, %struct.wl_data_offer* }

@.str = private unnamed_addr constant [24 x i8] c"DND offer ID mismatch!\0A\00", align 1
@WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY = common dso_local global i32 0, align 4
@WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Accepting DND offer with mime type %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_data_device*, i32, %struct.wl_surface*, i32, i32, %struct.wl_data_offer*)* @data_device_handle_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_device_handle_enter(i8* %0, %struct.wl_data_device* %1, i32 %2, %struct.wl_surface* %3, i32 %4, i32 %5, %struct.wl_data_offer* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wl_data_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wl_surface*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wl_data_offer*, align 8
  %15 = alloca %struct.vo_wayland_state*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.wl_data_device* %1, %struct.wl_data_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.wl_surface* %3, %struct.wl_surface** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.wl_data_offer* %6, %struct.wl_data_offer** %14, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %17, %struct.vo_wayland_state** %15, align 8
  %18 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %15, align 8
  %19 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %18, i32 0, i32 1
  %20 = load %struct.wl_data_offer*, %struct.wl_data_offer** %19, align 8
  %21 = load %struct.wl_data_offer*, %struct.wl_data_offer** %14, align 8
  %22 = icmp ne %struct.wl_data_offer* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %15, align 8
  %25 = call i32 @MP_FATAL(%struct.vo_wayland_state* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %44

26:                                               ; preds = %7
  %27 = load %struct.wl_data_offer*, %struct.wl_data_offer** %14, align 8
  %28 = load i32, i32* @WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY, align 4
  %29 = load i32, i32* @WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY, align 4
  %32 = call i32 @wl_data_offer_set_actions(%struct.wl_data_offer* %27, i32 %30, i32 %31)
  %33 = load %struct.wl_data_offer*, %struct.wl_data_offer** %14, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %15, align 8
  %36 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @wl_data_offer_accept(%struct.wl_data_offer* %33, i32 %34, i32 %37)
  %39 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %15, align 8
  %40 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %15, align 8
  %41 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @MP_FATAL(%struct.vo_wayland_state*, i8*) #1

declare dso_local i32 @wl_data_offer_set_actions(%struct.wl_data_offer*, i32, i32) #1

declare dso_local i32 @wl_data_offer_accept(%struct.wl_data_offer*, i32, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo_wayland_state*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
