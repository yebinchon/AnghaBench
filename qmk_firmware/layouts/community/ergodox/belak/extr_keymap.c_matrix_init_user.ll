; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/belak/extr_keymap.c_matrix_init_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/belak/extr_keymap.c_matrix_init_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EECONFIG_BELAK = common dso_local global i32 0, align 4
@EECONFIG_BELAK_MAGIC = common dso_local global i64 0, align 8
@EECONFIG_BELAK_SWAP_GUI_CTRL = common dso_local global i32 0, align 4
@SWPH = common dso_local global i32 0, align 4
@swap_gui_ctrl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init_user() #0 {
  %1 = load i32, i32* @EECONFIG_BELAK, align 4
  %2 = call i64 @eeprom_read_word(i32 %1)
  %3 = load i64, i64* @EECONFIG_BELAK_MAGIC, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* @EECONFIG_BELAK, align 4
  %7 = load i64, i64* @EECONFIG_BELAK_MAGIC, align 8
  %8 = call i32 @eeprom_update_word(i32 %6, i64 %7)
  %9 = load i32, i32* @EECONFIG_BELAK_SWAP_GUI_CTRL, align 4
  %10 = call i32 @eeprom_update_byte(i32 %9, i32 0)
  br label %11

11:                                               ; preds = %5, %0
  %12 = load i32, i32* @EECONFIG_BELAK_SWAP_GUI_CTRL, align 4
  %13 = call i64 @eeprom_read_byte(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @SWPH, align 4
  %17 = call i32 @layer_on(i32 %16)
  store i32 1, i32* @swap_gui_ctrl, align 4
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

declare dso_local i64 @eeprom_read_word(i32) #1

declare dso_local i32 @eeprom_update_word(i32, i64) #1

declare dso_local i32 @eeprom_update_byte(i32, i32) #1

declare dso_local i64 @eeprom_read_byte(i32) #1

declare dso_local i32 @layer_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
