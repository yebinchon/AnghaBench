; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ep_transfer_process.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ep_transfer_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_module = type { i32 }
%struct.usb_endpoint_callback_parameter = type { i32 }

@USB_EP_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_module*, i8*)* @udd_ep_transfer_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udd_ep_transfer_process(%struct.usb_module* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_module*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_endpoint_callback_parameter*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_module* %0, %struct.usb_module** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.usb_endpoint_callback_parameter*
  store %struct.usb_endpoint_callback_parameter* %8, %struct.usb_endpoint_callback_parameter** %5, align 8
  %9 = load %struct.usb_endpoint_callback_parameter*, %struct.usb_endpoint_callback_parameter** %5, align 8
  %10 = getelementptr inbounds %struct.usb_endpoint_callback_parameter, %struct.usb_endpoint_callback_parameter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @USB_EP_DIR_IN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @udd_ep_trans_in_next(i8* %17)
  br label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @udd_ep_trans_out_next(i8* %20)
  br label %22

22:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @udd_ep_trans_in_next(i8*) #1

declare dso_local i32 @udd_ep_trans_out_next(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
