; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_device_handle_data_offer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_device_handle_data_offer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_data_device = type { i32 }
%struct.wl_data_offer = type { i32 }
%struct.vo_wayland_state = type { %struct.wl_data_offer* }

@data_offer_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_data_device*, %struct.wl_data_offer*)* @data_device_handle_data_offer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_device_handle_data_offer(i8* %0, %struct.wl_data_device* %1, %struct.wl_data_offer* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_data_device*, align 8
  %6 = alloca %struct.wl_data_offer*, align 8
  %7 = alloca %struct.vo_wayland_state*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wl_data_device* %1, %struct.wl_data_device** %5, align 8
  store %struct.wl_data_offer* %2, %struct.wl_data_offer** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %9, %struct.vo_wayland_state** %7, align 8
  %10 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %11 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %10, i32 0, i32 0
  %12 = load %struct.wl_data_offer*, %struct.wl_data_offer** %11, align 8
  %13 = icmp ne %struct.wl_data_offer* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %16 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %15, i32 0, i32 0
  %17 = load %struct.wl_data_offer*, %struct.wl_data_offer** %16, align 8
  %18 = call i32 @wl_data_offer_destroy(%struct.wl_data_offer* %17)
  br label %19

19:                                               ; preds = %14, %3
  %20 = load %struct.wl_data_offer*, %struct.wl_data_offer** %6, align 8
  %21 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %22 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %21, i32 0, i32 0
  store %struct.wl_data_offer* %20, %struct.wl_data_offer** %22, align 8
  %23 = load %struct.wl_data_offer*, %struct.wl_data_offer** %6, align 8
  %24 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %25 = call i32 @wl_data_offer_add_listener(%struct.wl_data_offer* %23, i32* @data_offer_listener, %struct.vo_wayland_state* %24)
  ret void
}

declare dso_local i32 @wl_data_offer_destroy(%struct.wl_data_offer*) #1

declare dso_local i32 @wl_data_offer_add_listener(%struct.wl_data_offer*, i32*, %struct.vo_wayland_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
