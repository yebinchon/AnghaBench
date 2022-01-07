; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb_debug.c_usb_debug_flush_output.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb_debug.c_usb_debug_flush_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SREG = common dso_local global i32 0, align 4
@debug_flush_timer = common dso_local global i64 0, align 8
@DEBUG_TX_ENDPOINT = common dso_local global i32 0, align 4
@UENUM = common dso_local global i32 0, align 4
@UEINTX = common dso_local global i32 0, align 4
@RWAL = common dso_local global i32 0, align 4
@UEDATX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_debug_flush_output() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SREG, align 4
  store i32 %2, i32* %1, align 4
  %3 = call i32 (...) @cli()
  %4 = load i64, i64* @debug_flush_timer, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = load i32, i32* @DEBUG_TX_ENDPOINT, align 4
  store i32 %7, i32* @UENUM, align 4
  br label %8

8:                                                ; preds = %14, %6
  %9 = load i32, i32* @UEINTX, align 4
  %10 = load i32, i32* @RWAL, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i64 0, i64* @UEDATX, align 8
  br label %8

15:                                               ; preds = %8
  store i32 58, i32* @UEINTX, align 4
  store i64 0, i64* @debug_flush_timer, align 8
  br label %16

16:                                               ; preds = %15, %0
  %17 = load i32, i32* %1, align 4
  store i32 %17, i32* @SREG, align 4
  ret void
}

declare dso_local i32 @cli(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
