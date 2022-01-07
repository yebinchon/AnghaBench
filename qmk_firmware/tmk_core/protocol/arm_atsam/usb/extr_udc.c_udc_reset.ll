; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_udc.c_udc_reset.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_udc.c_udc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@udc_num_configuration = common dso_local global i64 0, align 8
@udc_ptr_conf = common dso_local global %struct.TYPE_4__* null, align 8
@USB_DEV_STATUS_REMOTEWAKEUP = common dso_local global i32 0, align 4
@udc_device_status = common dso_local global i32 0, align 4
@USB_DEV_STATUS_BUS_POWERED = common dso_local global i32 0, align 4
@USB_DEV_STATUS_SELF_POWERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udc_reset() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @udc_num_configuration, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %16, %4
  %6 = load i64, i64* %1, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_ptr_conf, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %6, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @udc_iface_disable(i64 %14)
  br label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %1, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %1, align 8
  br label %5

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %19, %0
  store i64 0, i64* @udc_num_configuration, align 8
  %21 = load i32, i32* @USB_DEV_STATUS_REMOTEWAKEUP, align 4
  %22 = call i32 @CPU_TO_LE16(i32 %21)
  %23 = load i32, i32* @udc_device_status, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (...) @UDC_REMOTEWAKEUP_DISABLE()
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i32, i32* @USB_DEV_STATUS_BUS_POWERED, align 4
  %30 = call i32 @CPU_TO_LE16(i32 %29)
  store i32 %30, i32* @udc_device_status, align 4
  ret void
}

declare dso_local i32 @udc_iface_disable(i64) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @UDC_REMOTEWAKEUP_DISABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
