; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_in_sent.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ctrl_in_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 (...)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@udd_ctrl_in_sent.b_shortpacket = internal global i32 0, align 4
@udd_g_ctrlreq = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@udd_ctrl_payload_nb_trans = common dso_local global i64 0, align 8
@udd_ctrl_prev_payload_nb_trans = common dso_local global i64 0, align 8
@UDD_EPCTRL_HANDSHAKE_WAIT_OUT_ZLP = common dso_local global i32 0, align 4
@udd_ep_control_state = common dso_local global i32 0, align 4
@usb_device = common dso_local global i32 0, align 4
@udd_ctrl_buffer = common dso_local global i32 0, align 4
@USB_DEVICE_EP_CTRL_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @udd_ctrl_in_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udd_ctrl_in_sent() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0), align 8
  %3 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  %4 = sub nsw i64 %2, %3
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp eq i64 0, %5
  br i1 %6, label %7, label %32

7:                                                ; preds = %0
  %8 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  %9 = load i64, i64* @udd_ctrl_prev_payload_nb_trans, align 8
  %10 = add nsw i64 %9, %8
  store i64 %10, i64* @udd_ctrl_prev_payload_nb_trans, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 3, i32 0), align 8
  %12 = load i64, i64* @udd_ctrl_prev_payload_nb_trans, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = load i32, i32* @udd_ctrl_in_sent.b_shortpacket, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %7
  %18 = load i32, i32* @UDD_EPCTRL_HANDSHAKE_WAIT_OUT_ZLP, align 4
  store i32 %18, i32* @udd_ep_control_state, align 4
  %19 = load i32, i32* @udd_ctrl_buffer, align 4
  %20 = call i32 @usb_device_endpoint_setup_buffer_job(i32* @usb_device, i32 %19)
  br label %48

21:                                               ; preds = %14
  %22 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 2), align 8
  %23 = icmp ne i32 (...)* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 2), align 8
  %26 = call i32 (...) %25()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %21
  br label %31

29:                                               ; preds = %24
  store i64 0, i64* @udd_ctrl_payload_nb_trans, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0), align 8
  store i64 %30, i64* %1, align 8
  br label %31

31:                                               ; preds = %29, %28
  br label %32

32:                                               ; preds = %31, %0
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @USB_DEVICE_EP_CTRL_SIZE, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @USB_DEVICE_EP_CTRL_SIZE, align 8
  store i64 %37, i64* %1, align 8
  store i32 0, i32* @udd_ctrl_in_sent.b_shortpacket, align 4
  br label %39

38:                                               ; preds = %32
  store i32 1, i32* @udd_ctrl_in_sent.b_shortpacket, align 4
  br label %39

39:                                               ; preds = %38, %36
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 1), align 8
  %41 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* %1, align 8
  %44 = call i32 @usb_device_endpoint_write_buffer_job(i32* @usb_device, i32 0, i64 %42, i64 %43)
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @udd_ctrl_payload_nb_trans, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* @udd_ctrl_payload_nb_trans, align 8
  br label %48

48:                                               ; preds = %39, %17
  ret void
}

declare dso_local i32 @usb_device_endpoint_setup_buffer_job(i32*, i32) #1

declare dso_local i32 @usb_device_endpoint_write_buffer_job(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
