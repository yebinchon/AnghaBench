; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_update_window_title.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_update_window_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i32, i32 }

@XA_WM_NAME = common dso_local global i32 0, align 4
@XA_WM_ICON_NAME = common dso_local global i32 0, align 4
@_NET_WM_NAME = common dso_local global i32 0, align 4
@_NET_WM_ICON_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @vo_x11_update_window_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_update_window_title(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_x11_state*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 0
  %6 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  store %struct.vo_x11_state* %6, %struct.vo_x11_state** %3, align 8
  %7 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %8 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %13 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  br label %46

17:                                               ; preds = %11
  %18 = load %struct.vo*, %struct.vo** %2, align 8
  %19 = load i32, i32* @XA_WM_NAME, align 4
  %20 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %21 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vo_x11_set_property_string(%struct.vo* %18, i32 %19, i32 %22)
  %24 = load %struct.vo*, %struct.vo** %2, align 8
  %25 = load i32, i32* @XA_WM_ICON_NAME, align 4
  %26 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %27 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vo_x11_set_property_string(%struct.vo* %24, i32 %25, i32 %28)
  %30 = load %struct.vo*, %struct.vo** %2, align 8
  %31 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %32 = load i32, i32* @_NET_WM_NAME, align 4
  %33 = call i32 @XA(%struct.vo_x11_state* %31, i32 %32)
  %34 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %35 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vo_x11_set_property_utf8(%struct.vo* %30, i32 %33, i32 %36)
  %38 = load %struct.vo*, %struct.vo** %2, align 8
  %39 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %40 = load i32, i32* @_NET_WM_ICON_NAME, align 4
  %41 = call i32 @XA(%struct.vo_x11_state* %39, i32 %40)
  %42 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %43 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vo_x11_set_property_utf8(%struct.vo* %38, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @vo_x11_set_property_string(%struct.vo*, i32, i32) #1

declare dso_local i32 @vo_x11_set_property_utf8(%struct.vo*, i32, i32) #1

declare dso_local i32 @XA(%struct.vo_x11_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
