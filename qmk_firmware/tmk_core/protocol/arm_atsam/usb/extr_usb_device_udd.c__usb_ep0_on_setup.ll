; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c__usb_ep0_on_setup.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c__usb_ep0_on_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 (...)* }
%struct.TYPE_3__ = type { i64 }
%struct.usb_module = type { i32 }
%struct.usb_endpoint_callback_parameter = type { i32 }

@UDD_EPCTRL_SETUP = common dso_local global i64 0, align 8
@udd_ep_control_state = common dso_local global i64 0, align 8
@udd_g_ctrlreq = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@udd_ctrl_prev_payload_nb_trans = common dso_local global i64 0, align 8
@udd_ctrl_payload_nb_trans = common dso_local global i64 0, align 8
@UDD_EPCTRL_DATA_IN = common dso_local global i64 0, align 8
@usb_device = common dso_local global i32 0, align 4
@udd_ctrl_buffer = common dso_local global i32 0, align 4
@USB_DEVICE_EP_CTRL_SIZE = common dso_local global i32 0, align 4
@UDD_EPCTRL_DATA_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_module*, i8*)* @_usb_ep0_on_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_usb_ep0_on_setup(%struct.usb_module* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_module*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_endpoint_callback_parameter*, align 8
  store %struct.usb_module* %0, %struct.usb_module** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.usb_endpoint_callback_parameter*
  store %struct.usb_endpoint_callback_parameter* %7, %struct.usb_endpoint_callback_parameter** %5, align 8
  %8 = load i64, i64* @UDD_EPCTRL_SETUP, align 8
  %9 = load i64, i64* @udd_ep_control_state, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 1), align 8
  %13 = icmp ne i32 (...)* null, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 1), align 8
  %16 = call i32 (...) %15()
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i64, i64* @UDD_EPCTRL_SETUP, align 8
  store i64 %18, i64* @udd_ep_control_state, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.usb_endpoint_callback_parameter*, %struct.usb_endpoint_callback_parameter** %5, align 8
  %21 = getelementptr inbounds %struct.usb_endpoint_callback_parameter, %struct.usb_endpoint_callback_parameter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 8, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (...) @udd_ctrl_stall_data()
  br label %54

26:                                               ; preds = %19
  %27 = call i32 (...) @udd_ctrl_fetch_ram()
  %28 = call i32 (...) @udc_process_setup()
  %29 = icmp eq i32 0, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @udd_ctrl_stall_data()
  br label %54

32:                                               ; preds = %26
  %33 = call i64 (...) @Udd_setup_is_in()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  store i64 0, i64* @udd_ctrl_prev_payload_nb_trans, align 8
  store i64 0, i64* @udd_ctrl_payload_nb_trans, align 8
  %36 = load i64, i64* @UDD_EPCTRL_DATA_IN, align 8
  store i64 %36, i64* @udd_ep_control_state, align 8
  %37 = load i32, i32* @udd_ctrl_buffer, align 4
  %38 = load i32, i32* @USB_DEVICE_EP_CTRL_SIZE, align 4
  %39 = call i32 @usb_device_endpoint_read_buffer_job(i32* @usb_device, i32 0, i32 %37, i32 %38)
  %40 = call i32 (...) @udd_ctrl_in_sent()
  br label %52

41:                                               ; preds = %32
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0, i32 0), align 8
  %43 = icmp eq i64 0, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (...) @udd_ctrl_send_zlp_in()
  br label %54

46:                                               ; preds = %41
  store i64 0, i64* @udd_ctrl_prev_payload_nb_trans, align 8
  store i64 0, i64* @udd_ctrl_payload_nb_trans, align 8
  %47 = load i64, i64* @UDD_EPCTRL_DATA_OUT, align 8
  store i64 %47, i64* @udd_ep_control_state, align 8
  %48 = load i32, i32* @udd_ctrl_buffer, align 4
  %49 = load i32, i32* @USB_DEVICE_EP_CTRL_SIZE, align 4
  %50 = call i32 @usb_device_endpoint_read_buffer_job(i32* @usb_device, i32 0, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %24, %30, %44, %53
  ret void
}

declare dso_local i32 @udd_ctrl_stall_data(...) #1

declare dso_local i32 @udd_ctrl_fetch_ram(...) #1

declare dso_local i32 @udc_process_setup(...) #1

declare dso_local i64 @Udd_setup_is_in(...) #1

declare dso_local i32 @usb_device_endpoint_read_buffer_job(i32*, i32, i32, i32) #1

declare dso_local i32 @udd_ctrl_in_sent(...) #1

declare dso_local i32 @udd_ctrl_send_zlp_in(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
