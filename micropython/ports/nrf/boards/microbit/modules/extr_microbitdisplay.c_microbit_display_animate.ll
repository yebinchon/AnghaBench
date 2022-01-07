; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitdisplay.c_microbit_display_animate.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitdisplay.c_microbit_display_animate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@async_data = common dso_local global i32 0, align 4
@async_iterator = common dso_local global i32* null, align 8
@async_delay = common dso_local global i32 0, align 4
@async_clear = common dso_local global i32 0, align 4
@wakeup_event = common dso_local global i32 0, align 4
@async_tick = common dso_local global i64 0, align 8
@ASYNC_MODE_ANIMATION = common dso_local global i32 0, align 4
@async_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @microbit_display_animate(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @async_data, align 4
  %13 = call i32** @MP_STATE_PORT(i32 %12)
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @async_data, align 4
  %16 = call i32** @MP_STATE_PORT(i32 %15)
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @mp_getiter(i32 %18, i32* null)
  store i32* %19, i32** @async_iterator, align 8
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* @async_delay, align 4
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* @async_clear, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @async_data, align 4
  %24 = call i32** @MP_STATE_PORT(i32 %23)
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  store i32* %22, i32** %25, align 8
  %26 = load i32*, i32** @async_iterator, align 8
  %27 = load i32, i32* @async_data, align 4
  %28 = call i32** @MP_STATE_PORT(i32 %27)
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  store i32* %26, i32** %29, align 8
  store i32 0, i32* @wakeup_event, align 4
  %30 = load i32*, i32** @async_iterator, align 8
  %31 = call i32 @mp_iternext_allow_raise(i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @draw_object(i32 %32)
  store i64 0, i64* @async_tick, align 8
  %34 = load i32, i32* @ASYNC_MODE_ANIMATION, align 4
  store i32 %34, i32* @async_mode, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = call i32 (...) @wait_for_event()
  br label %39

39:                                               ; preds = %37, %5
  ret void
}

declare dso_local i32** @MP_STATE_PORT(i32) #1

declare dso_local i32* @mp_getiter(i32, i32*) #1

declare dso_local i32 @mp_iternext_allow_raise(i32*) #1

declare dso_local i32 @draw_object(i32) #1

declare dso_local i32 @wait_for_event(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
