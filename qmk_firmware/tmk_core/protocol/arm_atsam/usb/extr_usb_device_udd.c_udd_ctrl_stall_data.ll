; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_stall_data.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_stall_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UDD_EPCTRL_STALL_REQ = common dso_local global i32 0, align 4
@udd_ep_control_state = common dso_local global i32 0, align 4
@usb_device = common dso_local global i32 0, align 4
@USB_EP_DIR_IN = common dso_local global i32 0, align 4
@USB_EP_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @udd_ctrl_stall_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udd_ctrl_stall_data() #0 {
  %1 = load i32, i32* @UDD_EPCTRL_STALL_REQ, align 4
  store i32 %1, i32* @udd_ep_control_state, align 4
  %2 = load i32, i32* @USB_EP_DIR_IN, align 4
  %3 = call i32 @usb_device_endpoint_set_halt(i32* @usb_device, i32 %2)
  %4 = load i32, i32* @USB_EP_DIR_OUT, align 4
  %5 = call i32 @usb_device_endpoint_clear_halt(i32* @usb_device, i32 %4)
  ret void
}

declare dso_local i32 @usb_device_endpoint_set_halt(i32*, i32) #1

declare dso_local i32 @usb_device_endpoint_clear_halt(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
