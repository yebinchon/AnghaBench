; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_hd44780.c_lcd_putc.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_hd44780.c_lcd_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCD_DDRAM = common dso_local global i32 0, align 4
@LCD_DISP_LENGTH = common dso_local global i64 0, align 8
@LCD_START_LINE1 = common dso_local global i64 0, align 8
@LCD_START_LINE2 = common dso_local global i64 0, align 8
@LCD_START_LINE3 = common dso_local global i64 0, align 8
@LCD_START_LINE4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lcd_putc(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i8 %0, i8* %2, align 1
  %4 = call i64 (...) @lcd_waitbusy()
  store i64 %4, i64* %3, align 8
  %5 = load i8, i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @lcd_newline(i64 %9)
  br label %14

11:                                               ; preds = %1
  %12 = load i8, i8* %2, align 1
  %13 = call i32 @lcd_write(i8 signext %12, i32 1)
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

declare dso_local i64 @lcd_waitbusy(...) #1

declare dso_local i32 @lcd_newline(i64) #1

declare dso_local i32 @lcd_write(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
