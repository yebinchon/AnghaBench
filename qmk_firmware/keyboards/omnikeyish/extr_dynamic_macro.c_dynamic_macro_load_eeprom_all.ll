; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/omnikeyish/extr_dynamic_macro.c_dynamic_macro_load_eeprom_all.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/omnikeyish/extr_dynamic_macro.c_dynamic_macro_load_eeprom_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [63 x i8] c"dynamic_macro: eeprom header not valid, not restoring macros.\0A\00", align 1
@DYNAMIC_MACRO_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dynamic_macro_load_eeprom_all() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @dynamic_macro_header_correct()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @dprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %17

6:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %7

7:                                                ; preds = %14, %6
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @DYNAMIC_MACRO_COUNT, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @dynamic_macro_load_eeprom(i64 %12)
  br label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %1, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %1, align 8
  br label %7

17:                                               ; preds = %4, %7
  ret void
}

declare dso_local i32 @dynamic_macro_header_correct(...) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @dynamic_macro_load_eeprom(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
