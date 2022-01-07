; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_pointer_handle_button.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_pointer_handle_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_pointer = type { i32 }
%struct.vo_wayland_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WL_POINTER_BUTTON_STATE_PRESSED = common dso_local global i32 0, align 4
@MP_KEY_STATE_DOWN = common dso_local global i32 0, align 4
@MP_KEY_STATE_UP = common dso_local global i32 0, align 4
@MP_MBTN_LEFT = common dso_local global i32 0, align 4
@MP_MBTN_MID = common dso_local global i32 0, align 4
@MP_MBTN_RIGHT = common dso_local global i32 0, align 4
@MP_MBTN_BACK = common dso_local global i32 0, align 4
@MP_MBTN_FORWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i32, i32, i32, i32)* @pointer_handle_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointer_handle_button(i8* %0, %struct.wl_pointer* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_pointer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vo_wayland_state*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %15, %struct.vo_wayland_state** %13, align 8
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @WL_POINTER_BUTTON_STATE_PRESSED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @MP_KEY_STATE_DOWN, align 4
  br label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @MP_KEY_STATE_UP, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %36 [
    i32 131, label %26
    i32 130, label %28
    i32 129, label %30
    i32 128, label %32
    i32 132, label %34
  ]

26:                                               ; preds = %23
  %27 = load i32, i32* @MP_MBTN_LEFT, align 4
  store i32 %27, i32* %11, align 4
  br label %37

28:                                               ; preds = %23
  %29 = load i32, i32* @MP_MBTN_MID, align 4
  store i32 %29, i32* %11, align 4
  br label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @MP_MBTN_RIGHT, align 4
  store i32 %31, i32* %11, align 4
  br label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @MP_MBTN_BACK, align 4
  store i32 %33, i32* %11, align 4
  br label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @MP_MBTN_FORWARD, align 4
  store i32 %35, i32* %11, align 4
  br label %37

36:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %36, %34, %32, %30, %28, %26
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  %42 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @mp_input_put_key(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %40, %37
  %51 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  %52 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  %57 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  %60 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @mp_input_test_dragging(i32 %55, i32 %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @MP_MBTN_LEFT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @MP_KEY_STATE_DOWN, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @window_move(%struct.vo_wayland_state* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68, %64, %50
  ret void
}

declare dso_local i32 @mp_input_put_key(i32, i32) #1

declare dso_local i32 @mp_input_test_dragging(i32, i32, i32) #1

declare dso_local i32 @window_move(%struct.vo_wayland_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
