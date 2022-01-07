; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/stm32f072/extr_keyboard.c_eeprom_set_valid.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/stm32f072/extr_keyboard.c_eeprom_set_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EEPROM_MAGIC_ADDR = common dso_local global i64 0, align 8
@EEPROM_MAGIC = common dso_local global i32 0, align 4
@EEPROM_VERSION_ADDR = common dso_local global i64 0, align 8
@EEPROM_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeprom_set_valid(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @EEPROM_MAGIC_ADDR, align 8
  %4 = inttoptr i64 %3 to i8*
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EEPROM_MAGIC, align 4
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 65535, %9 ]
  %12 = call i32 @eeprom_update_word(i8* %4, i32 %11)
  %13 = load i64, i64* @EEPROM_VERSION_ADDR, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @EEPROM_VERSION, align 4
  br label %20

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 255, %19 ]
  %22 = call i32 @eeprom_update_byte(i8* %14, i32 %21)
  ret void
}

declare dso_local i32 @eeprom_update_word(i8*, i32) #1

declare dso_local i32 @eeprom_update_byte(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
