; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB_set_host_by_voltage.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB_set_host_by_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DC_USB_SET_HOST_BY_VOLTAGE_BEGIN = common dso_local global i32 0, align 4
@USB_HOST_PORT_UNKNOWN = common dso_local global i32 0, align 4
@usb_host_port = common dso_local global i32 0, align 4
@USB_EXTRA_STATE_UNKNOWN = common dso_local global i32 0, align 4
@usb_extra_state = common dso_local global i32 0, align 4
@sr_exp_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ADC_5V = common dso_local global i32 0, align 4
@v_5v = common dso_local global i8* null, align 8
@ADC_5V_START_LEVEL = common dso_local global i8* null, align 8
@DC_USB_SET_HOST_5V_LOW_WAITING = common dso_local global i32 0, align 4
@ADC_CON1 = common dso_local global i32 0, align 4
@v_con_1 = common dso_local global i64 0, align 8
@ADC_CON2 = common dso_local global i32 0, align 4
@v_con_2 = common dso_local global i64 0, align 8
@v_con_1_boot = common dso_local global i64 0, align 8
@v_con_2_boot = common dso_local global i64 0, align 8
@USB_HOST_PORT_1 = common dso_local global i32 0, align 4
@USB_HOST_PORT_2 = common dso_local global i32 0, align 4
@USB_EXTRA_STATE_DISABLED = common dso_local global i32 0, align 4
@DC_USB_SET_HOST_BY_VOLTAGE_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @USB_set_host_by_voltage() #0 {
  %1 = load i32, i32* @DC_USB_SET_HOST_BY_VOLTAGE_BEGIN, align 4
  %2 = call i32 @DBGC(i32 %1)
  %3 = load i32, i32* @USB_HOST_PORT_UNKNOWN, align 4
  store i32 %3, i32* @usb_host_port, align 4
  %4 = load i32, i32* @USB_EXTRA_STATE_UNKNOWN, align 4
  store i32 %4, i32* @usb_extra_state, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 5), align 4
  %5 = call i32 (...) @SR_EXP_WriteData()
  %6 = call i32 @wait_ms(i32 250)
  br label %7

7:                                                ; preds = %12, %0
  %8 = load i32, i32* @ADC_5V, align 4
  %9 = call i8* @adc_get(i32 %8)
  store i8* %9, i8** @v_5v, align 8
  %10 = load i8*, i8** @ADC_5V_START_LEVEL, align 8
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* @DC_USB_SET_HOST_5V_LOW_WAITING, align 4
  %14 = call i32 @DBGC(i32 %13)
  br label %7

15:                                               ; preds = %7
  %16 = load i32, i32* @ADC_CON1, align 4
  %17 = call i8* @adc_get(i32 %16)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* @v_con_1, align 8
  %19 = load i32, i32* @ADC_CON2, align 4
  %20 = call i8* @adc_get(i32 %19)
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* @v_con_2, align 8
  %22 = load i64, i64* @v_con_1, align 8
  store i64 %22, i64* @v_con_1_boot, align 8
  %23 = load i64, i64* @v_con_2, align 8
  store i64 %23, i64* @v_con_2_boot, align 8
  %24 = load i64, i64* @v_con_1, align 8
  %25 = load i64, i64* @v_con_2, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 6), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 7), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 5), align 4
  %28 = call i32 (...) @SR_EXP_WriteData()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 2), align 4
  %29 = call i32 (...) @SR_EXP_WriteData()
  %30 = load i32, i32* @USB_HOST_PORT_1, align 4
  store i32 %30, i32* @usb_host_port, align 4
  br label %35

31:                                               ; preds = %15
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 6), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 7), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 4), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 5), align 4
  %32 = call i32 (...) @SR_EXP_WriteData()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 2), align 4
  %33 = call i32 (...) @SR_EXP_WriteData()
  %34 = load i32, i32* @USB_HOST_PORT_2, align 4
  store i32 %34, i32* @usb_host_port, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @USB_EXTRA_STATE_DISABLED, align 4
  store i32 %36, i32* @usb_extra_state, align 4
  %37 = call i32 (...) @USB_reset()
  %38 = call i32 (...) @USB_configure()
  %39 = load i32, i32* @DC_USB_SET_HOST_BY_VOLTAGE_COMPLETE, align 4
  %40 = call i32 @DBGC(i32 %39)
  ret void
}

declare dso_local i32 @DBGC(i32) #1

declare dso_local i32 @SR_EXP_WriteData(...) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i8* @adc_get(i32) #1

declare dso_local i32 @USB_reset(...) #1

declare dso_local i32 @USB_configure(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
