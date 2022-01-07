; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicode_common.c_unicode_input_cancel.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicode_common.c_unicode_input_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@unicode_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@UNICODE_KEY_OSX = common dso_local global i32 0, align 4
@KC_ESC = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@unicode_saved_mods = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @unicode_input_cancel() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @unicode_config, i32 0, i32 0), align 4
  switch i32 %1, label %11 [
    i32 130, label %2
    i32 131, label %5
    i32 128, label %5
    i32 129, label %8
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @UNICODE_KEY_OSX, align 4
  %4 = call i32 @unregister_code(i32 %3)
  br label %11

5:                                                ; preds = %0, %0
  %6 = load i32, i32* @KC_ESC, align 4
  %7 = call i32 @tap_code(i32 %6)
  br label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @KC_LALT, align 4
  %10 = call i32 @unregister_code(i32 %9)
  br label %11

11:                                               ; preds = %0, %8, %5, %2
  %12 = load i32, i32* @unicode_saved_mods, align 4
  %13 = call i32 @set_mods(i32 %12)
  ret void
}

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @set_mods(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
