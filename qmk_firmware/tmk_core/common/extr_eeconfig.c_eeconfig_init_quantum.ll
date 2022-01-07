; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_eeconfig.c_eeconfig_init_quantum.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_eeconfig.c_eeconfig_init_quantum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EECONFIG_MAGIC = common dso_local global i32 0, align 4
@EECONFIG_MAGIC_NUMBER = common dso_local global i32 0, align 4
@EECONFIG_DEBUG = common dso_local global i32 0, align 4
@EECONFIG_DEFAULT_LAYER = common dso_local global i32 0, align 4
@default_layer_state = common dso_local global i64 0, align 8
@EECONFIG_KEYMAP_LOWER_BYTE = common dso_local global i32 0, align 4
@EECONFIG_KEYMAP_UPPER_BYTE = common dso_local global i32 0, align 4
@EECONFIG_MOUSEKEY_ACCEL = common dso_local global i32 0, align 4
@EECONFIG_BACKLIGHT = common dso_local global i32 0, align 4
@EECONFIG_AUDIO = common dso_local global i32 0, align 4
@EECONFIG_RGBLIGHT = common dso_local global i32 0, align 4
@EECONFIG_STENOMODE = common dso_local global i32 0, align 4
@EECONFIG_HAPTIC = common dso_local global i32 0, align 4
@EECONFIG_VELOCIKEY = common dso_local global i32 0, align 4
@EECONFIG_RGB_MATRIX = common dso_local global i32 0, align 4
@EECONFIG_RGB_MATRIX_SPEED = common dso_local global i32 0, align 4
@EECONFIG_HANDEDNESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeconfig_init_quantum() #0 {
  %1 = load i32, i32* @EECONFIG_MAGIC, align 4
  %2 = load i32, i32* @EECONFIG_MAGIC_NUMBER, align 4
  %3 = call i32 @eeprom_update_word(i32 %1, i32 %2)
  %4 = load i32, i32* @EECONFIG_DEBUG, align 4
  %5 = call i32 @eeprom_update_byte(i32 %4, i32 0)
  %6 = load i32, i32* @EECONFIG_DEFAULT_LAYER, align 4
  %7 = call i32 @eeprom_update_byte(i32 %6, i32 0)
  store i64 0, i64* @default_layer_state, align 8
  %8 = load i32, i32* @EECONFIG_KEYMAP_LOWER_BYTE, align 4
  %9 = call i32 @eeprom_update_byte(i32 %8, i32 0)
  %10 = load i32, i32* @EECONFIG_KEYMAP_UPPER_BYTE, align 4
  %11 = call i32 @eeprom_update_byte(i32 %10, i32 0)
  %12 = load i32, i32* @EECONFIG_MOUSEKEY_ACCEL, align 4
  %13 = call i32 @eeprom_update_byte(i32 %12, i32 0)
  %14 = load i32, i32* @EECONFIG_BACKLIGHT, align 4
  %15 = call i32 @eeprom_update_byte(i32 %14, i32 0)
  %16 = load i32, i32* @EECONFIG_AUDIO, align 4
  %17 = call i32 @eeprom_update_byte(i32 %16, i32 255)
  %18 = load i32, i32* @EECONFIG_RGBLIGHT, align 4
  %19 = call i32 @eeprom_update_dword(i32 %18, i32 0)
  %20 = load i32, i32* @EECONFIG_STENOMODE, align 4
  %21 = call i32 @eeprom_update_byte(i32 %20, i32 0)
  %22 = load i32, i32* @EECONFIG_HAPTIC, align 4
  %23 = call i32 @eeprom_update_dword(i32 %22, i32 0)
  %24 = load i32, i32* @EECONFIG_VELOCIKEY, align 4
  %25 = call i32 @eeprom_update_byte(i32 %24, i32 0)
  %26 = load i32, i32* @EECONFIG_RGB_MATRIX, align 4
  %27 = call i32 @eeprom_update_dword(i32 %26, i32 0)
  %28 = load i32, i32* @EECONFIG_RGB_MATRIX_SPEED, align 4
  %29 = call i32 @eeprom_update_byte(i32 %28, i32 0)
  %30 = call i32 (...) @eeconfig_init_kb()
  ret void
}

declare dso_local i32 @eeprom_update_word(i32, i32) #1

declare dso_local i32 @eeprom_update_byte(i32, i32) #1

declare dso_local i32 @eeprom_update_dword(i32, i32) #1

declare dso_local i32 @eeconfig_init_kb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
