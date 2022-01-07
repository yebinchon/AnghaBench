; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction75.c_load_custom_config.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction75.c_load_custom_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@DYNAMIC_KEYMAP_CUSTOM_BACKLIGHT = common dso_local global i64 0, align 8
@kb_backlight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DYNAMIC_KEYMAP_DEFAULT_OLED = common dso_local global i64 0, align 8
@DYNAMIC_KEYMAP_ENABLED_ENCODER_MODES = common dso_local global i64 0, align 8
@enabled_encoder_modes = common dso_local global i8* null, align 8
@oled_mode = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_custom_config() #0 {
  %1 = load i64, i64* @DYNAMIC_KEYMAP_CUSTOM_BACKLIGHT, align 8
  %2 = inttoptr i64 %1 to i32*
  %3 = call i8* @eeprom_read_byte(i32* %2)
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @eeprom_read_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
