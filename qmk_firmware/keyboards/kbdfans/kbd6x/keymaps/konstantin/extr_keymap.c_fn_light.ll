; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kbdfans/kbd6x/keymaps/konstantin/extr_keymap.c_fn_light.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kbdfans/kbd6x/keymaps/konstantin/extr_keymap.c_fn_light.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@RGBLIGHT_MODE_STATIC_LIGHT = common dso_local global i32 0, align 4
@modern_dolch_red = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fn_light to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_light() #0 {
  %1 = load i32, i32* @RGBLIGHT_MODE_STATIC_LIGHT, align 4
  %2 = call i32 @rgblight_mode_noeeprom(i32 %1)
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modern_dolch_red, i32 0, i32 1), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modern_dolch_red, i32 0, i32 0), align 4
  %5 = call i32 (...) @rgblight_get_val()
  %6 = call i32 @rgblight_sethsv_noeeprom(i32 %3, i32 %4, i32 %5)
  ret void
}

declare dso_local i32 @rgblight_mode_noeeprom(i32) #1

declare dso_local i32 @rgblight_sethsv_noeeprom(i32, i32, i32) #1

declare dso_local i32 @rgblight_get_val(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
