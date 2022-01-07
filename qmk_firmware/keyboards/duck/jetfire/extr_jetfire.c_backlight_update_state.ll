; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/jetfire/extr_jetfire.c_backlight_update_state.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/jetfire/extr_jetfire.c_backlight_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@backlight_state_led = common dso_local global i32 0, align 4
@STATE_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@STATE_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@STATE_LED_NUM_LOCK = common dso_local global i32 0, align 4
@Device_STATUSLED = common dso_local global i32 0, align 4
@STATE_LED_LAYER_1 = common dso_local global i32 0, align 4
@STATE_LED_LAYER_2 = common dso_local global i32 0, align 4
@STATE_LED_LAYER_0 = common dso_local global i32 0, align 4
@STATE_LED_LAYER_4 = common dso_local global i32 0, align 4
@STATE_LED_LAYER_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_update_state() #0 {
  %1 = call i32 (...) @cli()
  %2 = load i32, i32* @backlight_state_led, align 4
  %3 = load i32, i32* @STATE_LED_SCROLL_LOCK, align 4
  %4 = shl i32 1, %3
  %5 = and i32 %2, %4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 255, i32 0
  %9 = load i32, i32* @backlight_state_led, align 4
  %10 = load i32, i32* @STATE_LED_CAPS_LOCK, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 255, i32 0
  %16 = load i32, i32* @backlight_state_led, align 4
  %17 = load i32, i32* @STATE_LED_NUM_LOCK, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 255, i32 0
  %23 = load i32, i32* @Device_STATUSLED, align 4
  %24 = call i32 @send_color(i32 %8, i32 %15, i32 %22, i32 %23)
  %25 = load i32, i32* @backlight_state_led, align 4
  %26 = load i32, i32* @STATE_LED_LAYER_1, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 255, i32 0
  %32 = load i32, i32* @backlight_state_led, align 4
  %33 = load i32, i32* @STATE_LED_LAYER_2, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 255, i32 0
  %39 = load i32, i32* @backlight_state_led, align 4
  %40 = load i32, i32* @STATE_LED_LAYER_0, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 255, i32 0
  %46 = load i32, i32* @Device_STATUSLED, align 4
  %47 = call i32 @send_color(i32 %31, i32 %38, i32 %45, i32 %46)
  %48 = load i32, i32* @backlight_state_led, align 4
  %49 = load i32, i32* @STATE_LED_LAYER_4, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 255, i32 0
  %55 = load i32, i32* @backlight_state_led, align 4
  %56 = load i32, i32* @STATE_LED_LAYER_3, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 255, i32 0
  %62 = load i32, i32* @Device_STATUSLED, align 4
  %63 = call i32 @send_color(i32 %54, i32 %61, i32 0, i32 %62)
  %64 = call i32 (...) @sei()
  %65 = call i32 (...) @show()
  ret void
}

declare dso_local i32 @cli(...) #1

declare dso_local i32 @send_color(i32, i32, i32, i32) #1

declare dso_local i32 @sei(...) #1

declare dso_local i32 @show(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
