; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_seat_handle_caps.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_seat_handle_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_seat = type { i32 }
%struct.vo_wayland_state = type { i32*, i32*, i32* }

@WL_SEAT_CAPABILITY_POINTER = common dso_local global i32 0, align 4
@pointer_listener = common dso_local global i32 0, align 4
@WL_SEAT_CAPABILITY_KEYBOARD = common dso_local global i32 0, align 4
@keyboard_listener = common dso_local global i32 0, align 4
@WL_SEAT_CAPABILITY_TOUCH = common dso_local global i32 0, align 4
@touch_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_seat*, i32)* @seat_handle_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_handle_caps(i8* %0, %struct.wl_seat* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_seat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vo_wayland_state*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wl_seat* %1, %struct.wl_seat** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %9, %struct.vo_wayland_state** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @WL_SEAT_CAPABILITY_POINTER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %16 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.wl_seat*, %struct.wl_seat** %5, align 8
  %21 = call i32* @wl_seat_get_pointer(%struct.wl_seat* %20)
  %22 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %23 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %25 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %28 = call i32 @wl_pointer_add_listener(i32* %26, i32* @pointer_listener, %struct.vo_wayland_state* %27)
  br label %47

29:                                               ; preds = %14, %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @WL_SEAT_CAPABILITY_POINTER, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %36 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %41 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @wl_pointer_destroy(i32* %42)
  %44 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %45 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %34, %29
  br label %47

47:                                               ; preds = %46, %19
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @WL_SEAT_CAPABILITY_KEYBOARD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %54 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load %struct.wl_seat*, %struct.wl_seat** %5, align 8
  %59 = call i32* @wl_seat_get_keyboard(%struct.wl_seat* %58)
  %60 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %61 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %63 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %66 = call i32 @wl_keyboard_add_listener(i32* %64, i32* @keyboard_listener, %struct.vo_wayland_state* %65)
  br label %85

67:                                               ; preds = %52, %47
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @WL_SEAT_CAPABILITY_KEYBOARD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %67
  %73 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %74 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %79 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @wl_keyboard_destroy(i32* %80)
  %82 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %83 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %77, %72, %67
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @WL_SEAT_CAPABILITY_TOUCH, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %85
  %91 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %92 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %110, label %95

95:                                               ; preds = %90
  %96 = load %struct.wl_seat*, %struct.wl_seat** %5, align 8
  %97 = call i32* @wl_seat_get_touch(%struct.wl_seat* %96)
  %98 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %99 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %98, i32 0, i32 0
  store i32* %97, i32** %99, align 8
  %100 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %101 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %104 = call i32 @wl_touch_set_user_data(i32* %102, %struct.vo_wayland_state* %103)
  %105 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %106 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %109 = call i32 @wl_touch_add_listener(i32* %107, i32* @touch_listener, %struct.vo_wayland_state* %108)
  br label %128

110:                                              ; preds = %90, %85
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @WL_SEAT_CAPABILITY_TOUCH, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %110
  %116 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %117 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %122 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @wl_touch_destroy(i32* %123)
  %125 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %126 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %125, i32 0, i32 0
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %120, %115, %110
  br label %128

128:                                              ; preds = %127, %95
  ret void
}

declare dso_local i32* @wl_seat_get_pointer(%struct.wl_seat*) #1

declare dso_local i32 @wl_pointer_add_listener(i32*, i32*, %struct.vo_wayland_state*) #1

declare dso_local i32 @wl_pointer_destroy(i32*) #1

declare dso_local i32* @wl_seat_get_keyboard(%struct.wl_seat*) #1

declare dso_local i32 @wl_keyboard_add_listener(i32*, i32*, %struct.vo_wayland_state*) #1

declare dso_local i32 @wl_keyboard_destroy(i32*) #1

declare dso_local i32* @wl_seat_get_touch(%struct.wl_seat*) #1

declare dso_local i32 @wl_touch_set_user_data(i32*, %struct.vo_wayland_state*) #1

declare dso_local i32 @wl_touch_add_listener(i32*, i32*, %struct.vo_wayland_state*) #1

declare dso_local i32 @wl_touch_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
