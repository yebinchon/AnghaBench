; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB_reset.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb2422.c_USB_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DC_USB_RESET_BEGIN = common dso_local global i32 0, align 4
@sr_exp_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DC_USB_RESET_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @USB_reset() #0 {
  %1 = load i32, i32* @DC_USB_RESET_BEGIN, align 4
  %2 = call i32 @DBGC(i32 %1)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 0), align 4
  %3 = call i32 (...) @SR_EXP_WriteData()
  %4 = call i32 @wait_us(i32 2)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sr_exp_data, i32 0, i32 0, i32 0), align 4
  %5 = call i32 (...) @SR_EXP_WriteData()
  %6 = load i32, i32* @DC_USB_RESET_COMPLETE, align 4
  %7 = call i32 @DBGC(i32 %6)
  ret void
}

declare dso_local i32 @DBGC(i32) #1

declare dso_local i32 @SR_EXP_WriteData(...) #1

declare dso_local i32 @wait_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
