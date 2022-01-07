; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_sdcard_write_stop.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_sdcard_write_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@m_spi_no = common dso_local global i32 0, align 4
@STOP_TRAN_TOKEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SD_CARD_ERROR_STOP_TRAN = common dso_local global i32 0, align 4
@m_error = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sdcard_write_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdcard_write_stop() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @sdcard_chipselect_low()
  %3 = call i32 @sdcard_wait_not_busy(i32 100000)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %16

6:                                                ; preds = %0
  %7 = load i32, i32* @m_spi_no, align 4
  %8 = load i32, i32* @STOP_TRAN_TOKEN, align 4
  %9 = call i32 @platform_spi_transaction(i32 %7, i32 8, i32 %8, i32 0, i32 0, i32 0, i32 0, i32 0)
  %10 = call i32 @sdcard_wait_not_busy(i32 100000)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  br label %16

13:                                               ; preds = %6
  %14 = call i32 (...) @sdcard_chipselect_high()
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %1, align 4
  br label %20

16:                                               ; preds = %12, %5
  %17 = load i32, i32* @SD_CARD_ERROR_STOP_TRAN, align 4
  store i32 %17, i32* @m_error, align 4
  %18 = call i32 (...) @sdcard_chipselect_high()
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @sdcard_chipselect_low(...) #1

declare dso_local i32 @sdcard_wait_not_busy(i32) #1

declare dso_local i32 @platform_spi_transaction(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sdcard_chipselect_high(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
