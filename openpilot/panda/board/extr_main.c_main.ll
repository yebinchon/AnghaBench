; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 (i32, i32)*, i32 (i32)*, i32 (...)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c"\0A\0A\0A************************ MAIN START ************************\0A\00", align 1
@hw_type = common dso_local global i64 0, align 8
@HW_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported board type\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Config:\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"  Board type: \00", align 1
@current_board = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@has_external_debug_serial = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"  Real serial\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"  USB serial\0A\00", align 1
@is_entering_bootmode = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"  ESP wants bootmode\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"  No bootmode\0A\00", align 1
@uart_ring_debug = common dso_local global i32 0, align 4
@uart_ring_esp_gps = common dso_local global i32 0, align 4
@uart_ring_lin1 = common dso_local global i32 0, align 4
@USART_CR2_LINEN = common dso_local global i32 0, align 4
@UART5 = common dso_local global %struct.TYPE_7__* null, align 8
@uart_ring_lin2 = common dso_local global i32 0, align 4
@USART3 = common dso_local global %struct.TYPE_6__* null, align 8
@TIM2 = common dso_local global %struct.TYPE_8__* null, align 8
@TIM_CR1_CEN = common dso_local global i32 0, align 4
@TIM_EGR_UG = common dso_local global i32 0, align 4
@SAFETY_NOOUTPUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to set safety mode\0A\00", align 1
@ALL_CAN_SILENT = common dso_local global i32 0, align 4
@can_silent = common dso_local global i32 0, align 4
@TIM9 = common dso_local global i32 0, align 4
@TIM1_BRK_TIM9_IRQn = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"**** INTERRUPTS ON ****\0A\00", align 1
@power_save_status = common dso_local global i64 0, align 8
@POWER_SAVE_STATUS_DISABLED = common dso_local global i64 0, align 8
@usb_power_mode = common dso_local global i64 0, align 8
@USB_POWER_DCP = common dso_local global i64 0, align 8
@LED_RED = common dso_local global i32 0, align 4
@ESP_GPS_DISABLED = common dso_local global i32 0, align 4
@HW_TYPE_WHITE_PANDA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = call i32 (...) @disable_interrupts()
  %9 = call i32 (...) @clock_init()
  %10 = call i32 (...) @peripherals_init()
  %11 = call i32 (...) @detect_configuration()
  %12 = call i32 (...) @detect_board_type()
  %13 = call i32 (...) @adc_init()
  %14 = call i32 @puts(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @hw_type, align 8
  %16 = load i64, i64* @HW_TYPE_UNKNOWN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %20
  br label %20

21:                                               ; preds = %0
  %22 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_board, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @puts(i8* %26)
  %28 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i64, i64* @has_external_debug_serial, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)
  %33 = call i32 @puts(i8* %32)
  %34 = load i64, i64* @is_entering_bootmode, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)
  %38 = call i32 @puts(i8* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_board, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i32 (...)*, i32 (...)** %40, align 8
  %42 = call i32 (...) %41()
  %43 = call i32 (...) @enable_fpu()
  %44 = load i64, i64* @has_external_debug_serial, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %21
  %47 = call i32 @uart_init(i32* @uart_ring_debug, i32 115200)
  br label %48

48:                                               ; preds = %46, %21
  %49 = call i64 (...) @board_has_gps()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @uart_init(i32* @uart_ring_esp_gps, i32 9600)
  br label %55

53:                                               ; preds = %48
  %54 = call i32 @uart_init(i32* @uart_ring_esp_gps, i32 115200)
  br label %55

55:                                               ; preds = %53, %51
  %56 = call i64 (...) @board_has_lin()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = call i32 @uart_init(i32* @uart_ring_lin1, i32 10400)
  %60 = load i32, i32* @USART_CR2_LINEN, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @UART5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = call i32 @uart_init(i32* @uart_ring_lin2, i32 10400)
  %66 = load i32, i32* @USART_CR2_LINEN, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @USART3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %58, %55
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TIM2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 47, i32* %73, align 4
  %74 = load i32, i32* @TIM_CR1_CEN, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TIM2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @TIM_EGR_UG, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TIM2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @SAFETY_NOOUTPUT, align 4
  %81 = call i32 @safety_set_mode(i32 %80, i32 0)
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* %2, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %86
  br label %86

87:                                               ; preds = %71
  %88 = load i32, i32* @ALL_CAN_SILENT, align 4
  store i32 %88, i32* @can_silent, align 4
  %89 = call i32 (...) @can_init_all()
  %90 = call i32 (...) @spi_init()
  %91 = load i32, i32* @TIM9, align 4
  %92 = call i32 @timer_init(i32 %91, i32 1464)
  %93 = load i32, i32* @TIM1_BRK_TIM9_IRQn, align 4
  %94 = call i32 @NVIC_EnableIRQ(i32 %93)
  %95 = call i32 (...) @usb_init()
  %96 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %97 = call i32 (...) @enable_interrupts()
  store i64 0, i64* %3, align 8
  store i64 0, i64* %3, align 8
  br label %98

98:                                               ; preds = %169, %87
  %99 = load i64, i64* @power_save_status, align 8
  %100 = load i64, i64* @POWER_SAVE_STATUS_DISABLED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %166

102:                                              ; preds = %98
  %103 = load i64, i64* @usb_power_mode, align 8
  %104 = load i64, i64* @USB_POWER_DCP, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 4, i32 1
  store i32 %107, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %162, %102
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %165

112:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %158, %112
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 1024
  br i1 %115, label %116, label %161

116:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %154, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %4, align 4
  %120 = sdiv i32 128, %119
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %157

122:                                              ; preds = %117
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_board, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32 (i32, i32)*, i32 (i32, i32)** %124, align 8
  %126 = load i32, i32* @LED_RED, align 4
  %127 = call i32 %125(i32 %126, i32 1)
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %128, 512
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @delay(i32 %131)
  br label %137

133:                                              ; preds = %122
  %134 = load i32, i32* %6, align 4
  %135 = sub nsw i32 1024, %134
  %136 = call i32 @delay(i32 %135)
  br label %137

137:                                              ; preds = %133, %130
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_board, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32 (i32, i32)*, i32 (i32, i32)** %139, align 8
  %141 = load i32, i32* @LED_RED, align 4
  %142 = call i32 %140(i32 %141, i32 0)
  %143 = load i32, i32* %6, align 4
  %144 = icmp slt i32 %143, 512
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load i32, i32* %6, align 4
  %147 = sub nsw i32 512, %146
  %148 = call i32 @delay(i32 %147)
  br label %153

149:                                              ; preds = %137
  %150 = load i32, i32* %6, align 4
  %151 = sub nsw i32 %150, 512
  %152 = call i32 @delay(i32 %151)
  br label %153

153:                                              ; preds = %149, %145
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %117

157:                                              ; preds = %117
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 8
  store i32 %160, i32* %6, align 4
  br label %113

161:                                              ; preds = %113
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %5, align 4
  br label %108

165:                                              ; preds = %108
  br label %168

166:                                              ; preds = %98
  %167 = call i32 (...) @__WFI()
  br label %168

168:                                              ; preds = %166, %165
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %3, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %3, align 8
  br label %98
}

declare dso_local i32 @disable_interrupts(...) #1

declare dso_local i32 @clock_init(...) #1

declare dso_local i32 @peripherals_init(...) #1

declare dso_local i32 @detect_configuration(...) #1

declare dso_local i32 @detect_board_type(...) #1

declare dso_local i32 @adc_init(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @enable_fpu(...) #1

declare dso_local i32 @uart_init(i32*, i32) #1

declare dso_local i64 @board_has_gps(...) #1

declare dso_local i64 @board_has_lin(...) #1

declare dso_local i32 @safety_set_mode(i32, i32) #1

declare dso_local i32 @can_init_all(...) #1

declare dso_local i32 @spi_init(...) #1

declare dso_local i32 @timer_init(i32, i32) #1

declare dso_local i32 @NVIC_EnableIRQ(i32) #1

declare dso_local i32 @usb_init(...) #1

declare dso_local i32 @enable_interrupts(...) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @__WFI(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
