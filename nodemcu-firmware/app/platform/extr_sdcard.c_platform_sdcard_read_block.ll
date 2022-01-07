; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_platform_sdcard_read_block.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_platform_sdcard_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@m_type = common dso_local global i64 0, align 8
@SD_CARD_TYPE_SDHC = common dso_local global i64 0, align 8
@CMD17 = common dso_local global i32 0, align 4
@SD_CARD_ERROR_CMD17 = common dso_local global i32 0, align 4
@m_error = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_sdcard_read_block(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @CHECK_SSPIN(i32 %8)
  %10 = load i64, i64* @m_type, align 8
  %11 = load i64, i64* @SD_CARD_TYPE_SDHC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 9
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @CMD17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @sdcard_command(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @SD_CARD_ERROR_CMD17, align 4
  store i32 %22, i32* @m_error, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @sdcard_read_data(i32* %24, i32 512)
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %21
  %27 = call i32 (...) @sdcard_chipselect_high()
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @CHECK_SSPIN(i32) #1

declare dso_local i64 @sdcard_command(i32, i32) #1

declare dso_local i32 @sdcard_read_data(i32*, i32) #1

declare dso_local i32 @sdcard_chipselect_high(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
