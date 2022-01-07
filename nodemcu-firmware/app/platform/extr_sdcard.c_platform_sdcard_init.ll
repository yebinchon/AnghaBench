; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_platform_sdcard_init.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_platform_sdcard_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_CARD_TYPE_INVALID = common dso_local global i64 0, align 8
@m_type = common dso_local global i64 0, align 8
@m_error = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@m_spi_no = common dso_local global i32 0, align 4
@m_ss_pin = common dso_local global i32 0, align 4
@PLATFORM_GPIO_HIGH = common dso_local global i32 0, align 4
@PLATFORM_GPIO_OUTPUT = common dso_local global i32 0, align 4
@PLATFORM_GPIO_FLOAT = common dso_local global i32 0, align 4
@CMD0 = common dso_local global i32 0, align 4
@R1_IDLE_STATE = common dso_local global i32 0, align 4
@CMD8 = common dso_local global i32 0, align 4
@R1_ILLEGAL_COMMAND = common dso_local global i32 0, align 4
@SD_CARD_TYPE_SD1 = common dso_local global i64 0, align 8
@m_status = common dso_local global i32 0, align 4
@SD_CARD_TYPE_SD2 = common dso_local global i64 0, align 8
@ACMD41 = common dso_local global i32 0, align 4
@R1_READY_STATE = common dso_local global i64 0, align 8
@CMD58 = common dso_local global i32 0, align 4
@SD_CARD_ERROR_CMD58 = common dso_local global i64 0, align 8
@SD_CARD_TYPE_SDHC = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_sdcard_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* @SD_CARD_TYPE_INVALID, align 8
  store i64 %12, i64* @m_type, align 8
  store i64 0, i64* @m_error, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %137

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* @m_spi_no, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @CHECK_SSPIN(i32 %19)
  %21 = load i32, i32* @m_ss_pin, align 4
  %22 = load i32, i32* @PLATFORM_GPIO_HIGH, align 4
  %23 = call i32 @platform_gpio_write(i32 %21, i32 %22)
  %24 = load i32, i32* @m_ss_pin, align 4
  %25 = load i32, i32* @PLATFORM_GPIO_OUTPUT, align 4
  %26 = load i32, i32* @PLATFORM_GPIO_FLOAT, align 4
  %27 = call i32 @platform_gpio_mode(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @m_spi_no, align 4
  %29 = call i32 @spi_set_clkdiv(i32 %28, i32 200)
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %36, %17
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* @m_spi_no, align 4
  %35 = call i32 @platform_spi_transaction(i32 %34, i32 0, i32 0, i32 0, i32 0, i32 0, i32 200, i32 0)
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %30

39:                                               ; preds = %30
  %40 = call i32 @set_timeout(i32* %8, i32 500000)
  br label %41

41:                                               ; preds = %50, %39
  %42 = load i32, i32* @CMD0, align 4
  %43 = call i32 @sdcard_command(i32 %42, i32 0)
  %44 = load i32, i32* @R1_IDLE_STATE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = call i64 @timed_out(i32* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %134

50:                                               ; preds = %46
  br label %41

51:                                               ; preds = %41
  %52 = call i32 @set_timeout(i32* %8, i32 500000)
  br label %53

53:                                               ; preds = %51, %81
  %54 = load i32, i32* @CMD8, align 4
  %55 = call i32 @sdcard_command(i32 %54, i32 426)
  %56 = load i32, i32* @R1_ILLEGAL_COMMAND, align 4
  %57 = load i32, i32* @R1_IDLE_STATE, align 4
  %58 = or i32 %56, %57
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, i64* @SD_CARD_TYPE_SD1, align 8
  store i64 %61, i64* @m_type, align 8
  br label %82

62:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %69, %62
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* @m_spi_no, align 4
  %68 = call i32 @platform_spi_send_recv(i32 %67, i32 8, i32 255)
  store i32 %68, i32* @m_status, align 4
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %63

72:                                               ; preds = %63
  %73 = load i32, i32* @m_status, align 4
  %74 = icmp eq i32 %73, 170
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i64, i64* @SD_CARD_TYPE_SD2, align 8
  store i64 %76, i64* @m_type, align 8
  br label %82

77:                                               ; preds = %72
  %78 = call i64 @timed_out(i32* %8)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %134

81:                                               ; preds = %77
  br label %53

82:                                               ; preds = %75, %60
  %83 = load i64, i64* @m_type, align 8
  %84 = load i64, i64* @SD_CARD_TYPE_SD2, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1073741824, i32 0
  store i32 %87, i32* %6, align 4
  %88 = call i32 @set_timeout(i32* %8, i32 500000)
  br label %89

89:                                               ; preds = %99, %82
  %90 = load i32, i32* @ACMD41, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @sdcard_acmd(i32 %90, i32 %91)
  %93 = load i64, i64* @R1_READY_STATE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = call i64 @timed_out(i32* %8)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %134

99:                                               ; preds = %95
  br label %89

100:                                              ; preds = %89
  %101 = load i64, i64* @m_type, align 8
  %102 = load i64, i64* @SD_CARD_TYPE_SD2, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %100
  %105 = load i32, i32* @CMD58, align 4
  %106 = call i32 @sdcard_command(i32 %105, i32 0)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i64, i64* @SD_CARD_ERROR_CMD58, align 8
  store i64 %109, i64* @m_error, align 8
  br label %134

110:                                              ; preds = %104
  %111 = load i32, i32* @m_spi_no, align 4
  %112 = call i32 @platform_spi_send_recv(i32 %111, i32 8, i32 255)
  %113 = and i32 %112, 192
  %114 = icmp eq i32 %113, 192
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i64, i64* @SD_CARD_TYPE_SDHC, align 8
  store i64 %116, i64* @m_type, align 8
  br label %117

117:                                              ; preds = %115, %110
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %124, %117
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %119, 3
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* @m_spi_no, align 4
  %123 = call i32 @platform_spi_send_recv(i32 %122, i32 8, i32 255)
  br label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %118

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %100
  %129 = call i32 (...) @sdcard_chipselect_high()
  %130 = load i32, i32* @m_spi_no, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @spi_set_clkdiv(i32 %130, i32 %131)
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %3, align 4
  br label %137

134:                                              ; preds = %108, %98, %80, %49
  %135 = call i32 (...) @sdcard_chipselect_high()
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %134, %128, %15
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @CHECK_SSPIN(i32) #1

declare dso_local i32 @platform_gpio_write(i32, i32) #1

declare dso_local i32 @platform_gpio_mode(i32, i32, i32) #1

declare dso_local i32 @spi_set_clkdiv(i32, i32) #1

declare dso_local i32 @platform_spi_transaction(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_timeout(i32*, i32) #1

declare dso_local i32 @sdcard_command(i32, i32) #1

declare dso_local i64 @timed_out(i32*) #1

declare dso_local i32 @platform_spi_send_recv(i32, i32, i32) #1

declare dso_local i64 @sdcard_acmd(i32, i32) #1

declare dso_local i32 @sdcard_chipselect_high(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
