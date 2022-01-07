; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_out_received.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_out_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 (...)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.usb_endpoint_callback_parameter = type { i64 }

@udd_g_ctrlreq = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@udd_ctrl_payload_nb_trans = common dso_local global i64 0, align 8
@udd_ctrl_buffer = common dso_local global i32 0, align 4
@USB_DEVICE_EP_CTRL_SIZE = common dso_local global i64 0, align 8
@udd_ctrl_prev_payload_nb_trans = common dso_local global i64 0, align 8
@UDD_EPCTRL_STALL_REQ = common dso_local global i32 0, align 4
@udd_ep_control_state = common dso_local global i32 0, align 4
@usb_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @udd_ctrl_out_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udd_ctrl_out_received(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usb_endpoint_callback_parameter*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.usb_endpoint_callback_parameter*
  store %struct.usb_endpoint_callback_parameter* %6, %struct.usb_endpoint_callback_parameter** %3, align 8
  %7 = load %struct.usb_endpoint_callback_parameter*, %struct.usb_endpoint_callback_parameter** %3, align 8
  %8 = getelementptr inbounds %struct.usb_endpoint_callback_parameter, %struct.usb_endpoint_callback_parameter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0), align 8
  %11 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add nsw i64 %11, %12
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0), align 8
  %17 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  %18 = sub nsw i64 %16, %17
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 1), align 8
  %21 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  %22 = add nsw i64 %20, %21
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* @udd_ctrl_buffer, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @memcpy(i32* %23, i32 %24, i64 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* @udd_ctrl_payload_nb_trans, align 8
  %30 = load i64, i64* @USB_DEVICE_EP_CTRL_SIZE, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %19
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 3, i32 0), align 8
  %35 = load i64, i64* @udd_ctrl_prev_payload_nb_trans, align 8
  %36 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  %37 = add nsw i64 %35, %36
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33, %19
  %40 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0), align 8
  %41 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 2), align 8
  %42 = icmp ne i32 (...)* null, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 2), align 8
  %45 = call i32 (...) %44()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @UDD_EPCTRL_STALL_REQ, align 4
  store i32 %48, i32* @udd_ep_control_state, align 4
  %49 = call i32 @udd_ep_set_halt(i32 0)
  br label %78

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %39
  %52 = call i32 (...) @udd_ctrl_send_zlp_in()
  br label %78

53:                                               ; preds = %33
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0), align 8
  %55 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 2), align 8
  %59 = icmp ne i32 (...)* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @UDD_EPCTRL_STALL_REQ, align 4
  store i32 %61, i32* @udd_ep_control_state, align 4
  %62 = call i32 @udd_ep_set_halt(i32 0)
  br label %78

63:                                               ; preds = %57
  %64 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 2), align 8
  %65 = call i32 (...) %64()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @UDD_EPCTRL_STALL_REQ, align 4
  store i32 %68, i32* @udd_ep_control_state, align 4
  %69 = call i32 @udd_ep_set_halt(i32 0)
  br label %78

70:                                               ; preds = %63
  %71 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  %72 = load i64, i64* @udd_ctrl_prev_payload_nb_trans, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* @udd_ctrl_prev_payload_nb_trans, align 8
  store i64 0, i64* @udd_ctrl_payload_nb_trans, align 8
  br label %74

74:                                               ; preds = %70, %53
  %75 = load i32, i32* @udd_ctrl_buffer, align 4
  %76 = load i64, i64* @USB_DEVICE_EP_CTRL_SIZE, align 8
  %77 = call i32 @usb_device_endpoint_read_buffer_job(i32* @usb_device, i32 0, i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %74, %67, %60, %51, %47
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @udd_ep_set_halt(i32) #1

declare dso_local i32 @udd_ctrl_send_zlp_in(...) #1

declare dso_local i32 @usb_device_endpoint_read_buffer_job(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
