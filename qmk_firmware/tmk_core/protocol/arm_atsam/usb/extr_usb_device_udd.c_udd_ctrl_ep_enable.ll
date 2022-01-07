; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_ep_enable.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_module = type { i32 }
%struct.usb_device_endpoint_config = type { i32 }

@USB_DEVICE_EP_CTRL_SIZE = common dso_local global i32 0, align 4
@udd_ctrl_buffer = common dso_local global i32 0, align 4
@USB_DEVICE_ENDPOINT_CALLBACK_RXSTP = common dso_local global i32 0, align 4
@_usb_ep0_on_setup = common dso_local global i32 0, align 4
@USB_DEVICE_ENDPOINT_CALLBACK_TRCPT = common dso_local global i32 0, align 4
@_usb_ep0_on_tansfer_ok = common dso_local global i32 0, align 4
@USB_DEVICE_ENDPOINT_CALLBACK_TRFAIL = common dso_local global i32 0, align 4
@_usb_ep0_on_tansfer_fail = common dso_local global i32 0, align 4
@UDD_EPCTRL_SETUP = common dso_local global i32 0, align 4
@udd_ep_control_state = common dso_local global i32 0, align 4
@USB_DEVICE_LPM_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_module*)* @udd_ctrl_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udd_ctrl_ep_enable(%struct.usb_module* %0) #0 {
  %2 = alloca %struct.usb_module*, align 8
  %3 = alloca %struct.usb_device_endpoint_config, align 4
  store %struct.usb_module* %0, %struct.usb_module** %2, align 8
  %4 = call i32 @usb_device_endpoint_get_config_defaults(%struct.usb_device_endpoint_config* %3)
  %5 = load i32, i32* @USB_DEVICE_EP_CTRL_SIZE, align 4
  %6 = call i32 @Max(i32 %5, i32 8)
  %7 = call i64 @Min(i32 %6, i32 1024)
  %8 = trunc i64 %7 to i32
  %9 = shl i32 %8, 1
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @clz(i32 %10)
  %12 = sub nsw i32 32, %11
  %13 = sub nsw i32 %12, 1
  %14 = sub nsw i32 %13, 3
  %15 = getelementptr inbounds %struct.usb_device_endpoint_config, %struct.usb_device_endpoint_config* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %17 = call i32 @usb_device_endpoint_set_config(%struct.usb_module* %16, %struct.usb_device_endpoint_config* %3)
  %18 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %19 = load i32, i32* @udd_ctrl_buffer, align 4
  %20 = call i32 @usb_device_endpoint_setup_buffer_job(%struct.usb_module* %18, i32 %19)
  %21 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %22 = load i32, i32* @USB_DEVICE_ENDPOINT_CALLBACK_RXSTP, align 4
  %23 = load i32, i32* @_usb_ep0_on_setup, align 4
  %24 = call i32 @usb_device_endpoint_register_callback(%struct.usb_module* %21, i32 0, i32 %22, i32 %23)
  %25 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %26 = load i32, i32* @USB_DEVICE_ENDPOINT_CALLBACK_TRCPT, align 4
  %27 = load i32, i32* @_usb_ep0_on_tansfer_ok, align 4
  %28 = call i32 @usb_device_endpoint_register_callback(%struct.usb_module* %25, i32 0, i32 %26, i32 %27)
  %29 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %30 = load i32, i32* @USB_DEVICE_ENDPOINT_CALLBACK_TRFAIL, align 4
  %31 = load i32, i32* @_usb_ep0_on_tansfer_fail, align 4
  %32 = call i32 @usb_device_endpoint_register_callback(%struct.usb_module* %29, i32 0, i32 %30, i32 %31)
  %33 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %34 = load i32, i32* @USB_DEVICE_ENDPOINT_CALLBACK_RXSTP, align 4
  %35 = call i32 @usb_device_endpoint_enable_callback(%struct.usb_module* %33, i32 0, i32 %34)
  %36 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %37 = load i32, i32* @USB_DEVICE_ENDPOINT_CALLBACK_TRCPT, align 4
  %38 = call i32 @usb_device_endpoint_enable_callback(%struct.usb_module* %36, i32 0, i32 %37)
  %39 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %40 = load i32, i32* @USB_DEVICE_ENDPOINT_CALLBACK_TRFAIL, align 4
  %41 = call i32 @usb_device_endpoint_enable_callback(%struct.usb_module* %39, i32 0, i32 %40)
  %42 = load i32, i32* @UDD_EPCTRL_SETUP, align 4
  store i32 %42, i32* @udd_ep_control_state, align 4
  ret void
}

declare dso_local i32 @usb_device_endpoint_get_config_defaults(%struct.usb_device_endpoint_config*) #1

declare dso_local i32 @clz(i32) #1

declare dso_local i64 @Min(i32, i32) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @usb_device_endpoint_set_config(%struct.usb_module*, %struct.usb_device_endpoint_config*) #1

declare dso_local i32 @usb_device_endpoint_setup_buffer_job(%struct.usb_module*, i32) #1

declare dso_local i32 @usb_device_endpoint_register_callback(%struct.usb_module*, i32, i32, i32) #1

declare dso_local i32 @usb_device_endpoint_enable_callback(%struct.usb_module*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
