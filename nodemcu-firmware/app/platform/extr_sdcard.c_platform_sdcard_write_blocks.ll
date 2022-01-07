; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_platform_sdcard_write_blocks.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_platform_sdcard_write_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACMD23 = common dso_local global i32 0, align 4
@SD_CARD_ERROR_ACMD23 = common dso_local global i32 0, align 4
@m_error = common dso_local global i32 0, align 4
@m_type = common dso_local global i64 0, align 8
@SD_CARD_TYPE_SDHC = common dso_local global i64 0, align 8
@CMD25 = common dso_local global i32 0, align 4
@SD_CARD_ERROR_CMD25 = common dso_local global i32 0, align 4
@WRITE_MULTIPLE_TOKEN = common dso_local global i32 0, align 4
@SD_CARD_ERROR_WRITE_MULTIPLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_sdcard_write_blocks(i32 %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @CHECK_SSPIN(i32 %11)
  %13 = load i32, i32* @ACMD23, align 4
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @sdcard_acmd(i32 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @SD_CARD_ERROR_ACMD23, align 4
  store i32 %18, i32* @m_error, align 4
  br label %61

19:                                               ; preds = %4
  %20 = load i64, i64* @m_type, align 8
  %21 = load i64, i64* @SD_CARD_TYPE_SDHC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 9
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* @CMD25, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @sdcard_command(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @SD_CARD_ERROR_CMD25, align 4
  store i32 %32, i32* @m_error, align 4
  br label %61

33:                                               ; preds = %26
  %34 = call i32 (...) @sdcard_chipselect_high()
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %52, %33
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = call i32 (...) @sdcard_chipselect_low()
  %41 = call i32 @sdcard_wait_not_busy(i32 100000)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %59

44:                                               ; preds = %39
  %45 = load i32, i32* @WRITE_MULTIPLE_TOKEN, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @sdcard_write_data(i32 %45, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %59

50:                                               ; preds = %44
  %51 = call i32 (...) @sdcard_chipselect_high()
  br label %52

52:                                               ; preds = %50
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %10, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 512
  store i32* %56, i32** %9, align 8
  br label %35

57:                                               ; preds = %35
  %58 = call i32 (...) @sdcard_write_stop()
  store i32 %58, i32* %5, align 4
  br label %64

59:                                               ; preds = %49, %43
  %60 = load i32, i32* @SD_CARD_ERROR_WRITE_MULTIPLE, align 4
  store i32 %60, i32* @m_error, align 4
  br label %61

61:                                               ; preds = %59, %31, %17
  %62 = call i32 (...) @sdcard_chipselect_high()
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @CHECK_SSPIN(i32) #1

declare dso_local i64 @sdcard_acmd(i32, i64) #1

declare dso_local i64 @sdcard_command(i32, i32) #1

declare dso_local i32 @sdcard_chipselect_high(...) #1

declare dso_local i32 @sdcard_chipselect_low(...) #1

declare dso_local i32 @sdcard_wait_not_busy(i32) #1

declare dso_local i32 @sdcard_write_data(i32, i32*) #1

declare dso_local i32 @sdcard_write_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
