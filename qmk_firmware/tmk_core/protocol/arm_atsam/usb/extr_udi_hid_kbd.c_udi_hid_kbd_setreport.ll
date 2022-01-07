; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_udi_hid_kbd.c_udi_hid_kbd_setreport.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_udi_hid_kbd.c_udi_hid_kbd_setreport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@USB_HID_REPORT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@udd_g_ctrlreq = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@udi_hid_kbd_report_set = common dso_local global i32 0, align 4
@udi_hid_kbd_setreport_valid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udi_hid_kbd_setreport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udi_hid_kbd_setreport() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @USB_HID_REPORT_TYPE_OUTPUT, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 3, i32 0), align 8
  %4 = ashr i32 %3, 8
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 3, i32 0), align 8
  %8 = and i32 255, %7
  %9 = icmp eq i32 0, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 3, i32 1), align 4
  %12 = icmp eq i32 1, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  store i32* @udi_hid_kbd_report_set, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 2), align 8
  %14 = load i32, i32* @udi_hid_kbd_setreport_valid, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0), align 8
  store i32 1, i32* %1, align 4
  br label %16

15:                                               ; preds = %10, %6, %0
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %13
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
