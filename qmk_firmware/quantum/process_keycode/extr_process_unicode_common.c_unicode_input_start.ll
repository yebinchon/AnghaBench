; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicode_common.c_unicode_input_start.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicode_common.c_unicode_input_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@unicode_saved_mods = common dso_local global i32 0, align 4
@unicode_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@UNICODE_KEY_OSX = common dso_local global i32 0, align 4
@UNICODE_KEY_LNX = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@KC_PPLS = common dso_local global i32 0, align 4
@UNICODE_KEY_WINC = common dso_local global i32 0, align 4
@KC_U = common dso_local global i32 0, align 4
@UNICODE_TYPE_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @unicode_input_start() #0 {
  %1 = call i32 (...) @get_mods()
  store i32 %1, i32* @unicode_saved_mods, align 4
  %2 = call i32 (...) @clear_mods()
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @unicode_config, i32 0, i32 0), align 4
  switch i32 %3, label %20 [
    i32 130, label %4
    i32 131, label %7
    i32 129, label %10
    i32 128, label %15
  ]

4:                                                ; preds = %0
  %5 = load i32, i32* @UNICODE_KEY_OSX, align 4
  %6 = call i32 @register_code(i32 %5)
  br label %20

7:                                                ; preds = %0
  %8 = load i32, i32* @UNICODE_KEY_LNX, align 4
  %9 = call i32 @tap_code16(i32 %8)
  br label %20

10:                                               ; preds = %0
  %11 = load i32, i32* @KC_LALT, align 4
  %12 = call i32 @register_code(i32 %11)
  %13 = load i32, i32* @KC_PPLS, align 4
  %14 = call i32 @tap_code(i32 %13)
  br label %20

15:                                               ; preds = %0
  %16 = load i32, i32* @UNICODE_KEY_WINC, align 4
  %17 = call i32 @tap_code(i32 %16)
  %18 = load i32, i32* @KC_U, align 4
  %19 = call i32 @tap_code(i32 %18)
  br label %20

20:                                               ; preds = %0, %15, %10, %7, %4
  %21 = load i32, i32* @UNICODE_TYPE_DELAY, align 4
  %22 = call i32 @wait_ms(i32 %21)
  ret void
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @clear_mods(...) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @tap_code16(i32) #1

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @wait_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
