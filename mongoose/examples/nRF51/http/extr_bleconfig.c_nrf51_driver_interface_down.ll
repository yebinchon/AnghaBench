; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF51/http/extr_bleconfig.c_nrf51_driver_interface_down.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF51/http/extr_bleconfig.c_nrf51_driver_interface_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"[APPL]: IPv6 interface down.\0D\0A\00", align 1
@m_sys_timer_id = common dso_local global i32 0, align 4
@DISPLAY_LED_0 = common dso_local global i32 0, align 4
@DISPLAY_LED_1 = common dso_local global i32 0, align 4
@DISPLAY_LED_2 = common dso_local global i32 0, align 4
@DISPLAY_LED_3 = common dso_local global i32 0, align 4
@ADVERTISING_LED = common dso_local global i32 0, align 4
@TCP_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@m_tcp_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nrf51_driver_interface_down() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @APPL_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @m_sys_timer_id, align 4
  %4 = call i32 @app_timer_stop(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @APP_ERROR_CHECK(i32 %5)
  %7 = load i32, i32* @DISPLAY_LED_0, align 4
  %8 = load i32, i32* @DISPLAY_LED_1, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @DISPLAY_LED_2, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @DISPLAY_LED_3, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @LEDS_OFF(i32 %13)
  %15 = load i32, i32* @ADVERTISING_LED, align 4
  %16 = call i32 @LEDS_ON(i32 %15)
  %17 = load i32, i32* @TCP_STATE_DISCONNECTED, align 4
  store i32 %17, i32* @m_tcp_state, align 4
  ret void
}

declare dso_local i32 @APPL_LOG(i8*) #1

declare dso_local i32 @app_timer_stop(i32) #1

declare dso_local i32 @APP_ERROR_CHECK(i32) #1

declare dso_local i32 @LEDS_OFF(i32) #1

declare dso_local i32 @LEDS_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
