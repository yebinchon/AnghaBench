; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_main.c_eeprom_is_valid.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_main.c_eeprom_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EEPROM_MAGIC_ADDR = common dso_local global i64 0, align 8
@EEPROM_MAGIC = common dso_local global i64 0, align 8
@EEPROM_VERSION_ADDR = common dso_local global i64 0, align 8
@EEPROM_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eeprom_is_valid() #0 {
  %1 = load i64, i64* @EEPROM_MAGIC_ADDR, align 8
  %2 = inttoptr i64 %1 to i8*
  %3 = call i64 @eeprom_read_word(i8* %2)
  %4 = load i64, i64* @EEPROM_MAGIC, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i64, i64* @EEPROM_VERSION_ADDR, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i64 @eeprom_read_byte(i8* %8)
  %10 = load i64, i64* @EEPROM_VERSION, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %6, %0
  %13 = phi i1 [ false, %0 ], [ %11, %6 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i64 @eeprom_read_word(i8*) #1

declare dso_local i64 @eeprom_read_byte(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
