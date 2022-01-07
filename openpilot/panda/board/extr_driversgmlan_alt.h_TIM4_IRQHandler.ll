; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversgmlan_alt.h_TIM4_IRQHandler.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversgmlan_alt.h_TIM4_IRQHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@gmlan_alt_mode = common dso_local global i64 0, align 8
@BITBANG = common dso_local global i64 0, align 8
@TIM4 = common dso_local global %struct.TYPE_2__* null, align 8
@TIM_SR_UIF = common dso_local global i32 0, align 4
@gmlan_sendmax = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4
@gmlan_silent_count = common dso_local global i64 0, align 8
@REQUIRED_SILENT_TIME = common dso_local global i64 0, align 8
@gmlan_sending = common dso_local global i32 0, align 4
@pkt_stuffed = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"GMLAN ERR: bus driven at \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GMLAN ERR: didn't recv ACK\0A\00", align 1
@gmlan_fail_count = common dso_local global i64 0, align 8
@MAX_FAIL_COUNT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"GMLAN ERR: giving up send\0A\00", align 1
@gmlan_send_ok = common dso_local global i32 0, align 4
@MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_SWITCH = common dso_local global i64 0, align 8
@gmlan_switch_below_timeout = common dso_local global i32 0, align 4
@can_timeout_counter = common dso_local global i64 0, align 8
@gmlan_switch_timeout_enable = common dso_local global i64 0, align 8
@GMLAN_LOW = common dso_local global i32 0, align 4
@GMLAN_TICKS_PER_TIMEOUT_TICKLE = common dso_local global i64 0, align 8
@gmlan_timeout_counter = common dso_local global i64 0, align 8
@DISABLED = common dso_local global i64 0, align 8
@inverted_bit_to_send = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid gmlan_alt_mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM4_IRQHandler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @gmlan_alt_mode, align 8
  %4 = load i64, i64* @BITBANG, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %110

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM4, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TIM_SR_UIF, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %107

13:                                               ; preds = %6
  %14 = load i32, i32* @gmlan_sendmax, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %107

16:                                               ; preds = %13
  %17 = load i32, i32* @GPIOB, align 4
  %18 = call i32 @get_gpio_input(i32 %17, i32 12)
  store i32 %18, i32* %1, align 4
  %19 = load i64, i64* @gmlan_silent_count, align 8
  %20 = load i64, i64* @REQUIRED_SILENT_TIME, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i32, i32* %1, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 0, i64* @gmlan_silent_count, align 8
  br label %29

26:                                               ; preds = %22
  %27 = load i64, i64* @gmlan_silent_count, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* @gmlan_silent_count, align 8
  br label %29

29:                                               ; preds = %26, %25
  br label %89

30:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  %31 = load i32, i32* @gmlan_sending, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i32, i32* %1, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i32*, i32** @pkt_stuffed, align 8
  %38 = load i32, i32* @gmlan_sending, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load i32, i32* @gmlan_sending, align 4
  %46 = load i32, i32* @gmlan_sendmax, align 4
  %47 = sub nsw i32 %46, 11
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @gmlan_sending, align 4
  %52 = call i32 @puth(i32 %51)
  %53 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %66

54:                                               ; preds = %44, %36, %33, %30
  %55 = load i32, i32* %1, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* @gmlan_sending, align 4
  %59 = load i32, i32* @gmlan_sendmax, align 4
  %60 = sub nsw i32 %59, 11
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %65

64:                                               ; preds = %57, %54
  br label %65

65:                                               ; preds = %64, %62
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* %2, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = call i32 @set_bitbanged_gmlan(i32 1)
  store i64 0, i64* @gmlan_silent_count, align 8
  store i32 0, i32* @gmlan_sending, align 4
  %71 = load i64, i64* @gmlan_fail_count, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* @gmlan_fail_count, align 8
  %73 = load i64, i64* @gmlan_fail_count, align 8
  %74 = load i64, i64* @MAX_FAIL_COUNT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* @gmlan_send_ok, align 4
  br label %78

78:                                               ; preds = %76, %69
  br label %88

79:                                               ; preds = %66
  %80 = load i32*, i32** @pkt_stuffed, align 8
  %81 = load i32, i32* @gmlan_sending, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @set_bitbanged_gmlan(i32 %84)
  %86 = load i32, i32* @gmlan_sending, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @gmlan_sending, align 4
  br label %88

88:                                               ; preds = %79, %78
  br label %89

89:                                               ; preds = %88, %29
  %90 = load i32, i32* @gmlan_sending, align 4
  %91 = load i32, i32* @gmlan_sendmax, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* @gmlan_fail_count, align 8
  %95 = load i64, i64* @MAX_FAIL_COUNT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93, %89
  %98 = call i32 @set_bitbanged_gmlan(i32 1)
  %99 = load i32, i32* @GPIOB, align 4
  %100 = load i32, i32* @MODE_INPUT, align 4
  %101 = call i32 @set_gpio_mode(i32 %99, i32 13, i32 %100)
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM4, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM4, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  store i32 -1, i32* @gmlan_sendmax, align 4
  br label %106

106:                                              ; preds = %97, %93
  br label %107

107:                                              ; preds = %106, %13, %6
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM4, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  br label %160

110:                                              ; preds = %0
  %111 = load i64, i64* @gmlan_alt_mode, align 8
  %112 = load i64, i64* @GPIO_SWITCH, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %157

114:                                              ; preds = %110
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM4, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @TIM_SR_UIF, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %154

121:                                              ; preds = %114
  %122 = load i32, i32* @gmlan_switch_below_timeout, align 4
  %123 = icmp ne i32 %122, -1
  br i1 %123, label %124, label %154

124:                                              ; preds = %121
  %125 = load i64, i64* @can_timeout_counter, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i64, i64* @gmlan_switch_timeout_enable, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i32, i32* @GPIOB, align 4
  %132 = load i32, i32* @GMLAN_LOW, align 4
  %133 = call i32 @set_gpio_output(i32 %131, i32 13, i32 %132)
  store i32 -1, i32* @gmlan_switch_below_timeout, align 4
  %134 = load i64, i64* @GMLAN_TICKS_PER_TIMEOUT_TICKLE, align 8
  store i64 %134, i64* @gmlan_timeout_counter, align 8
  %135 = load i64, i64* @DISABLED, align 8
  store i64 %135, i64* @gmlan_alt_mode, align 8
  br label %153

136:                                              ; preds = %127, %124
  %137 = load i64, i64* @can_timeout_counter, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* @can_timeout_counter, align 8
  %139 = load i64, i64* @gmlan_timeout_counter, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i64, i64* @GMLAN_TICKS_PER_TIMEOUT_TICKLE, align 8
  store i64 %142, i64* @gmlan_timeout_counter, align 8
  %143 = load i32, i32* @GPIOB, align 4
  %144 = load i32, i32* @GMLAN_LOW, align 4
  %145 = call i32 @set_gpio_output(i32 %143, i32 13, i32 %144)
  br label %152

146:                                              ; preds = %136
  %147 = load i32, i32* @GPIOB, align 4
  %148 = load i32, i32* @inverted_bit_to_send, align 4
  %149 = call i32 @set_gpio_output(i32 %147, i32 13, i32 %148)
  %150 = load i64, i64* @gmlan_timeout_counter, align 8
  %151 = add nsw i64 %150, -1
  store i64 %151, i64* @gmlan_timeout_counter, align 8
  br label %152

152:                                              ; preds = %146, %141
  br label %153

153:                                              ; preds = %152, %130
  br label %154

154:                                              ; preds = %153, %121, %114
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM4, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  br label %159

157:                                              ; preds = %110
  %158 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %154
  br label %160

160:                                              ; preds = %159, %107
  ret void
}

declare dso_local i32 @get_gpio_input(i32, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @puth(i32) #1

declare dso_local i32 @set_bitbanged_gmlan(i32) #1

declare dso_local i32 @set_gpio_mode(i32, i32, i32) #1

declare dso_local i32 @set_gpio_output(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
