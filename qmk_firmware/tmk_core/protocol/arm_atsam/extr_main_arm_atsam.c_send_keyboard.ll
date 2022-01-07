; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_main_arm_atsam.c_send_keyboard.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_main_arm_atsam.c_send_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@udi_hid_kbd_b_report_trans_ongoing = common dso_local global i64 0, align 8
@udi_hid_kbd_report = common dso_local global i32 0, align 4
@UDI_HID_KBD_REPORT_SIZE = common dso_local global i32 0, align 4
@udi_hid_kbd_b_report_valid = common dso_local global i32 0, align 4
@UDI_HID_NKRO_REPORT_SIZE = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@udi_hid_nkro_b_report_trans_ongoing = common dso_local global i64 0, align 8
@udi_hid_nkro_b_report_valid = common dso_local global i32 0, align 4
@udi_hid_nkro_report = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_keyboard(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load i64, i64* @udi_hid_kbd_b_report_trans_ongoing, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 (...) @main_subtasks()
  br label %4

9:                                                ; preds = %4
  %10 = call i32 (...) @__get_PRIMASK()
  store i32 %10, i32* %3, align 4
  %11 = call i32 (...) @__disable_irq()
  %12 = call i32 (...) @__DMB()
  %13 = load i32, i32* @udi_hid_kbd_report, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @UDI_HID_KBD_REPORT_SIZE, align 4
  %18 = call i32 @memcpy(i32 %13, i32 %16, i32 %17)
  store i32 1, i32* @udi_hid_kbd_b_report_valid, align 4
  %19 = call i32 (...) @udi_hid_kbd_send_report()
  %20 = call i32 (...) @__DMB()
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @__set_PRIMASK(i32 %21)
  ret void
}

declare dso_local i32 @main_subtasks(...) #1

declare dso_local i32 @__get_PRIMASK(...) #1

declare dso_local i32 @__disable_irq(...) #1

declare dso_local i32 @__DMB(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @udi_hid_kbd_send_report(...) #1

declare dso_local i32 @__set_PRIMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
