; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_device_handle_drop.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_device_handle_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_data_device = type { i32 }
%struct.vo_wayland_state = type { i32, i32, i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to create dnd pipe!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Receiving DND offer with mime %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_data_device*)* @data_device_handle_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_device_handle_drop(i8* %0, %struct.wl_data_device* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wl_data_device*, align 8
  %5 = alloca %struct.vo_wayland_state*, align 8
  %6 = alloca [2 x i32], align 4
  store i8* %0, i8** %3, align 8
  store %struct.wl_data_device* %1, %struct.wl_data_device** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %8, %struct.vo_wayland_state** %5, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %10 = load i32, i32* @O_CLOEXEC, align 4
  %11 = call i32 @pipe2(i32* %9, i32 %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %15 = call i32 @MP_ERR(%struct.vo_wayland_state* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %18 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %19 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %23 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %26 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wl_data_offer_receive(i32 %24, i32 %27, i32 %29)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @close(i32 %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %37 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @pipe2(i32*, i32) #1

declare dso_local i32 @MP_ERR(%struct.vo_wayland_state*, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo_wayland_state*, i8*, i32) #1

declare dso_local i32 @wl_data_offer_receive(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
