; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_main_arm_atsam.c_main.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_main_arm_atsam.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_LED_ENA = common dso_local global i32 0, align 4
@DBG_1_ENA = common dso_local global i32 0, align 4
@DBG_1_OFF = common dso_local global i32 0, align 4
@DBG_2_ENA = common dso_local global i32 0, align 4
@DBG_2_OFF = common dso_local global i32 0, align 4
@DBG_3_ENA = common dso_local global i32 0, align 4
@DBG_3_OFF = common dso_local global i32 0, align 4
@DC_MAIN_UDC_START_BEGIN = common dso_local global i32 0, align 4
@DC_MAIN_UDC_START_COMPLETE = common dso_local global i32 0, align 4
@DC_MAIN_CDC_INIT_BEGIN = common dso_local global i32 0, align 4
@DC_MAIN_CDC_INIT_COMPLETE = common dso_local global i32 0, align 4
@DBG_LED_OFF = common dso_local global i32 0, align 4
@arm_atsam_driver = common dso_local global i32 0, align 4
@ADC_5V = common dso_local global i32 0, align 4
@v_5v_avg = common dso_local global i32 0, align 4
@g_usb_state = common dso_local global i64 0, align 8
@USB_FSMSTATUS_FSMSTATE_SUSPEND_Val = common dso_local global i64 0, align 8
@USB_FSMSTATUS_FSMSTATE_SLEEP_Val = common dso_local global i64 0, align 8
@ISSI3733_DRIVER_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @DBG_LED_ENA, align 4
  %3 = load i32, i32* @DBG_1_ENA, align 4
  %4 = load i32, i32* @DBG_1_OFF, align 4
  %5 = load i32, i32* @DBG_2_ENA, align 4
  %6 = load i32, i32* @DBG_2_OFF, align 4
  %7 = load i32, i32* @DBG_3_ENA, align 4
  %8 = load i32, i32* @DBG_3_OFF, align 4
  %9 = call i32 (...) @debug_code_init()
  %10 = call i32 (...) @CLK_init()
  %11 = call i32 (...) @ADC0_init()
  %12 = call i32 (...) @SR_EXP_Init()
  %13 = call i32 (...) @matrix_init()
  %14 = call i32 (...) @USB2422_init()
  %15 = load i32, i32* @DC_MAIN_UDC_START_BEGIN, align 4
  %16 = call i32 @DBGC(i32 %15)
  %17 = call i32 (...) @udc_start()
  %18 = load i32, i32* @DC_MAIN_UDC_START_COMPLETE, align 4
  %19 = call i32 @DBGC(i32 %18)
  %20 = load i32, i32* @DC_MAIN_CDC_INIT_BEGIN, align 4
  %21 = call i32 @DBGC(i32 %20)
  %22 = call i32 (...) @CDC_init()
  %23 = load i32, i32* @DC_MAIN_CDC_INIT_COMPLETE, align 4
  %24 = call i32 @DBGC(i32 %23)
  br label %25

25:                                               ; preds = %28, %0
  %26 = call i64 (...) @USB2422_Port_Detect_Init()
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %25

29:                                               ; preds = %25
  %30 = load i32, i32* @DBG_LED_OFF, align 4
  %31 = call i32 (...) @keyboard_setup()
  %32 = call i32 (...) @keyboard_init()
  %33 = call i32 @host_set_driver(i32* @arm_atsam_driver)
  %34 = load i32, i32* @ADC_5V, align 4
  %35 = call i32 @adc_get(i32 %34)
  store i32 %35, i32* @v_5v_avg, align 4
  %36 = call i32 (...) @debug_code_disable()
  br label %37

37:                                               ; preds = %29, %52, %53
  %38 = call i32 (...) @main_subtasks()
  %39 = load i64, i64* @g_usb_state, align 8
  %40 = load i64, i64* @USB_FSMSTATUS_FSMSTATE_SUSPEND_Val, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* @g_usb_state, align 8
  %44 = load i64, i64* @USB_FSMSTATUS_FSMSTATE_SLEEP_Val, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42, %37
  %47 = call i64 (...) @suspend_wakeup_condition()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = call i32 (...) @udc_remotewakeup()
  %51 = call i32 @wait_ms(i32 50)
  br label %52

52:                                               ; preds = %49, %46
  br label %37

53:                                               ; preds = %42
  %54 = call i32 (...) @keyboard_task()
  br label %37
}

declare dso_local i32 @debug_code_init(...) #1

declare dso_local i32 @CLK_init(...) #1

declare dso_local i32 @ADC0_init(...) #1

declare dso_local i32 @SR_EXP_Init(...) #1

declare dso_local i32 @matrix_init(...) #1

declare dso_local i32 @USB2422_init(...) #1

declare dso_local i32 @DBGC(i32) #1

declare dso_local i32 @udc_start(...) #1

declare dso_local i32 @CDC_init(...) #1

declare dso_local i64 @USB2422_Port_Detect_Init(...) #1

declare dso_local i32 @keyboard_setup(...) #1

declare dso_local i32 @keyboard_init(...) #1

declare dso_local i32 @host_set_driver(i32*) #1

declare dso_local i32 @adc_get(i32) #1

declare dso_local i32 @debug_code_disable(...) #1

declare dso_local i32 @main_subtasks(...) #1

declare dso_local i64 @suspend_wakeup_condition(...) #1

declare dso_local i32 @udc_remotewakeup(...) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @keyboard_task(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
