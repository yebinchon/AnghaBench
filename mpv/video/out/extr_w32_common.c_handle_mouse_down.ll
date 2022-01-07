; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_handle_mouse_down.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_handle_mouse_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_w32_state = type { i32, i32, i32 }

@MP_KEY_STATE_DOWN = common dso_local global i32 0, align 4
@MP_MBTN_LEFT = common dso_local global i32 0, align 4
@WM_NCLBUTTONDOWN = common dso_local global i32 0, align 4
@HTCAPTION = common dso_local global i32 0, align 4
@MP_KEY_STATE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_w32_state*, i32, i32, i32)* @handle_mouse_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_mouse_down(%struct.vo_w32_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vo_w32_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vo_w32_state* %0, %struct.vo_w32_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.vo_w32_state*, %struct.vo_w32_state** %6, align 8
  %11 = call i32 @mod_state(%struct.vo_w32_state* %10)
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %7, align 4
  %14 = load %struct.vo_w32_state*, %struct.vo_w32_state** %6, align 8
  %15 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MP_KEY_STATE_DOWN, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @mp_input_put_key(i32 %16, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MP_MBTN_LEFT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %4
  %25 = load %struct.vo_w32_state*, %struct.vo_w32_state** %6, align 8
  %26 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %24
  %30 = load %struct.vo_w32_state*, %struct.vo_w32_state** %6, align 8
  %31 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @mp_input_test_dragging(i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %29
  %38 = call i32 (...) @ReleaseCapture()
  %39 = load %struct.vo_w32_state*, %struct.vo_w32_state** %6, align 8
  %40 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WM_NCLBUTTONDOWN, align 4
  %43 = load i32, i32* @HTCAPTION, align 4
  %44 = call i32 @SendMessage(i32 %41, i32 %42, i32 %43, i32 0)
  %45 = load %struct.vo_w32_state*, %struct.vo_w32_state** %6, align 8
  %46 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MP_MBTN_LEFT, align 4
  %49 = load i32, i32* @MP_KEY_STATE_UP, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @mp_input_put_key(i32 %47, i32 %50)
  store i32 1, i32* %5, align 4
  br label %57

52:                                               ; preds = %29, %24, %4
  %53 = load %struct.vo_w32_state*, %struct.vo_w32_state** %6, align 8
  %54 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @SetCapture(i32 %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %37
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @mod_state(%struct.vo_w32_state*) #1

declare dso_local i32 @mp_input_put_key(i32, i32) #1

declare dso_local i32 @mp_input_test_dragging(i32, i32, i32) #1

declare dso_local i32 @ReleaseCapture(...) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @SetCapture(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
