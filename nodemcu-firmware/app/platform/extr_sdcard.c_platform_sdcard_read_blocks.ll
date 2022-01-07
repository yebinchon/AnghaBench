; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_platform_sdcard_read_blocks.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_platform_sdcard_read_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@m_type = common dso_local global i64 0, align 8
@SD_CARD_TYPE_SDHC = common dso_local global i64 0, align 8
@CMD18 = common dso_local global i32 0, align 4
@SD_CARD_ERROR_CMD18 = common dso_local global i32 0, align 4
@m_error = common dso_local global i32 0, align 4
@CMD12 = common dso_local global i32 0, align 4
@SD_CARD_ERROR_CMD12 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_sdcard_read_blocks(i32 %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @CHECK_SSPIN(i32 %10)
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %5, align 4
  br label %66

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @platform_sdcard_read_block(i32 %20, i32 %21, i32* %22)
  store i32 %23, i32* %5, align 4
  br label %66

24:                                               ; preds = %16
  %25 = load i64, i64* @m_type, align 8
  %26 = load i64, i64* @SD_CARD_TYPE_SDHC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 9
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* @CMD18, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @sdcard_command(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @SD_CARD_ERROR_CMD18, align 4
  store i32 %37, i32* @m_error, align 4
  br label %63

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %53, %38
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = call i32 (...) @sdcard_chipselect_low()
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @sdcard_read_data(i32* %44, i32 512)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 512
  store i32* %51, i32** %9, align 8
  br label %53

52:                                               ; preds = %42
  br label %54

53:                                               ; preds = %47
  br label %39

54:                                               ; preds = %52, %39
  %55 = load i32, i32* @CMD12, align 4
  %56 = call i64 @sdcard_command(i32 %55, i32 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @SD_CARD_ERROR_CMD12, align 4
  store i32 %59, i32* @m_error, align 4
  br label %63

60:                                               ; preds = %54
  %61 = call i32 (...) @sdcard_chipselect_high()
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %5, align 4
  br label %66

63:                                               ; preds = %58, %36
  %64 = call i32 (...) @sdcard_chipselect_high()
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %60, %19, %14
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @CHECK_SSPIN(i32) #1

declare dso_local i32 @platform_sdcard_read_block(i32, i32, i32*) #1

declare dso_local i64 @sdcard_command(i32, i32) #1

declare dso_local i32 @sdcard_chipselect_low(...) #1

declare dso_local i64 @sdcard_read_data(i32*, i32) #1

declare dso_local i32 @sdcard_chipselect_high(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
