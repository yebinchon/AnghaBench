; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB_HandleExtraDevice.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB_HandleExtraDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usb_host_port = common dso_local global i64 0, align 8
@USB_HOST_PORT_1 = common dso_local global i64 0, align 8
@ADC_CON2 = common dso_local global i32 0, align 4
@USB_HOST_PORT_2 = common dso_local global i64 0, align 8
@ADC_CON1 = common dso_local global i32 0, align 4
@adc_extra = common dso_local global double 0.000000e+00, align 8
@usb_extra_state = common dso_local global i64 0, align 8
@USB_EXTRA_STATE_DISABLED_UNTIL_REPLUG = common dso_local global i64 0, align 8
@USB_EXTRA_ADC_THRESHOLD = common dso_local global double 0.000000e+00, align 8
@USB_EXTRA_STATE_DISABLED = common dso_local global i64 0, align 8
@usb_extra_manual = common dso_local global i64 0, align 8
@USB_EXTRA_STATE_ENABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @USB_HandleExtraDevice() #0 {
  %1 = alloca double, align 8
  %2 = load i64, i64* @usb_host_port, align 8
  %3 = load i64, i64* @USB_HOST_PORT_1, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @ADC_CON2, align 4
  %7 = call double @adc_get(i32 %6)
  store double %7, double* %1, align 8
  br label %17

8:                                                ; preds = %0
  %9 = load i64, i64* @usb_host_port, align 8
  %10 = load i64, i64* @USB_HOST_PORT_2, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @ADC_CON1, align 4
  %14 = call double @adc_get(i32 %13)
  store double %14, double* %1, align 8
  br label %16

15:                                               ; preds = %8
  br label %67

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %5
  %18 = load double, double* @adc_extra, align 8
  %19 = fmul double %18, 9.000000e-01
  %20 = load double, double* %1, align 8
  %21 = fmul double %20, 1.000000e-01
  %22 = fadd double %19, %21
  store double %22, double* @adc_extra, align 8
  %23 = load i64, i64* @usb_extra_state, align 8
  %24 = load i64, i64* @USB_EXTRA_STATE_DISABLED_UNTIL_REPLUG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load double, double* @adc_extra, align 8
  %28 = load double, double* @USB_EXTRA_ADC_THRESHOLD, align 8
  %29 = fcmp ogt double %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @USB_EXTRA_STATE_DISABLED, align 8
  store i64 %31, i64* @usb_extra_state, align 8
  br label %32

32:                                               ; preds = %30, %26
  br label %67

33:                                               ; preds = %17
  %34 = load i64, i64* @usb_extra_manual, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i64, i64* @usb_extra_state, align 8
  %38 = load i64, i64* @USB_EXTRA_STATE_DISABLED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @USB_EXTRA_STATE_ENABLED, align 8
  %42 = call i32 @USB_ExtraSetState(i64 %41)
  br label %43

43:                                               ; preds = %40, %36
  br label %67

44:                                               ; preds = %33
  %45 = load i64, i64* @usb_extra_state, align 8
  %46 = load i64, i64* @USB_EXTRA_STATE_DISABLED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load double, double* @adc_extra, align 8
  %50 = load double, double* @USB_EXTRA_ADC_THRESHOLD, align 8
  %51 = fcmp olt double %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* @USB_EXTRA_STATE_ENABLED, align 8
  %54 = call i32 @USB_ExtraSetState(i64 %53)
  br label %67

55:                                               ; preds = %48, %44
  %56 = load i64, i64* @usb_extra_state, align 8
  %57 = load i64, i64* @USB_EXTRA_STATE_ENABLED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load double, double* @adc_extra, align 8
  %61 = load double, double* @USB_EXTRA_ADC_THRESHOLD, align 8
  %62 = fcmp ogt double %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* @USB_EXTRA_STATE_DISABLED, align 8
  %65 = call i32 @USB_ExtraSetState(i64 %64)
  br label %66

66:                                               ; preds = %63, %59, %55
  br label %67

67:                                               ; preds = %15, %32, %43, %66, %52
  ret void
}

declare dso_local double @adc_get(i32) #1

declare dso_local i32 @USB_ExtraSetState(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
