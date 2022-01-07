; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_offer_action.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_data_offer_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_data_offer = type { i32 }
%struct.vo_wayland_state = type { i64 }

@WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY = common dso_local global i32 0, align 4
@DND_REPLACE = common dso_local global i64 0, align 8
@DND_APPEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"DND action is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"DND_REPLACE\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DND_APPEND\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_data_offer*, i32)* @data_offer_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_offer_action(i8* %0, %struct.wl_data_offer* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_data_offer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vo_wayland_state*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wl_data_offer* %1, %struct.wl_data_offer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %9, %struct.vo_wayland_state** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @DND_REPLACE, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @DND_APPEND, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %21 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %23 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %24 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DND_REPLACE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %29)
  ret void
}

declare dso_local i32 @MP_VERBOSE(%struct.vo_wayland_state*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
