; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_device_handle_leave.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_device_handle_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_data_device = type { i32 }
%struct.vo_wayland_state = type { i32, i64, i32*, i32* }

@.str = private unnamed_addr constant [39 x i8] c"Releasing DND offer with mime type %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_data_device*)* @data_device_handle_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_device_handle_leave(i8* %0, %struct.wl_data_device* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wl_data_device*, align 8
  %5 = alloca %struct.vo_wayland_state*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wl_data_device* %1, %struct.wl_data_device** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %7, %struct.vo_wayland_state** %5, align 8
  %8 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %9 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %14 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %39

18:                                               ; preds = %12
  %19 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %20 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @wl_data_offer_destroy(i32* %21)
  %23 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %24 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %27 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %28 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* %29)
  %31 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %32 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @talloc_free(i32* %33)
  %35 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %36 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %38 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %25, %17
  ret void
}

declare dso_local i32 @wl_data_offer_destroy(i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo_wayland_state*, i8*, i32*) #1

declare dso_local i32 @talloc_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
