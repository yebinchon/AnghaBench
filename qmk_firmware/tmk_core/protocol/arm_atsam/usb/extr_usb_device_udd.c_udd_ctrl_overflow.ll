; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_overflow.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint_callback_parameter = type { i32 }

@UDD_EPCTRL_DATA_IN = common dso_local global i64 0, align 8
@udd_ep_control_state = common dso_local global i64 0, align 8
@UDD_EPCTRL_HANDSHAKE_WAIT_OUT_ZLP = common dso_local global i64 0, align 8
@UDD_EPCTRL_HANDSHAKE_WAIT_IN_ZLP = common dso_local global i64 0, align 8
@usb_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @udd_ctrl_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udd_ctrl_overflow(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usb_endpoint_callback_parameter*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.usb_endpoint_callback_parameter*
  store %struct.usb_endpoint_callback_parameter* %5, %struct.usb_endpoint_callback_parameter** %3, align 8
  %6 = load i64, i64* @UDD_EPCTRL_DATA_IN, align 8
  %7 = load i64, i64* @udd_ep_control_state, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @UDD_EPCTRL_HANDSHAKE_WAIT_OUT_ZLP, align 8
  store i64 %10, i64* @udd_ep_control_state, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load i64, i64* @UDD_EPCTRL_HANDSHAKE_WAIT_IN_ZLP, align 8
  %13 = load i64, i64* @udd_ep_control_state, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.usb_endpoint_callback_parameter*, %struct.usb_endpoint_callback_parameter** %3, align 8
  %17 = getelementptr inbounds %struct.usb_endpoint_callback_parameter, %struct.usb_endpoint_callback_parameter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_device_endpoint_set_halt(i32* @usb_device, i32 %18)
  br label %20

20:                                               ; preds = %15, %11
  br label %21

21:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @usb_device_endpoint_set_halt(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
