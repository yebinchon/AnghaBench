; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb.c_usb_remote_wakeup.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb.c_usb_remote_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RMWKUP = common dso_local global i32 0, align 4
@UDCON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_remote_wakeup() #0 {
  %1 = load i32, i32* @RMWKUP, align 4
  %2 = shl i32 1, %1
  %3 = load i32, i32* @UDCON, align 4
  %4 = or i32 %3, %2
  store i32 %4, i32* @UDCON, align 4
  br label %5

5:                                                ; preds = %11, %0
  %6 = load i32, i32* @UDCON, align 4
  %7 = load i32, i32* @RMWKUP, align 4
  %8 = shl i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %5

12:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
