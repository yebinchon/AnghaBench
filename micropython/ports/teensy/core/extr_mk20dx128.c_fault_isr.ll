; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_mk20dx128.c_fault_isr.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_mk20dx128.c_fault_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIM_SCGC4 = common dso_local global i32 0, align 4
@SIM_SCGC4_USBOTG = common dso_local global i32 0, align 4
@SIM_SCGC4_UART0 = common dso_local global i32 0, align 4
@SIM_SCGC4_UART1 = common dso_local global i32 0, align 4
@SIM_SCGC4_UART2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fault_isr() #0 {
  br label %1

1:                                                ; preds = %0, %29
  %2 = load i32, i32* @SIM_SCGC4, align 4
  %3 = load i32, i32* @SIM_SCGC4_USBOTG, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @usb_isr()
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* @SIM_SCGC4, align 4
  %10 = load i32, i32* @SIM_SCGC4_UART0, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @uart0_status_isr()
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32, i32* @SIM_SCGC4, align 4
  %17 = load i32, i32* @SIM_SCGC4_UART1, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 (...) @uart1_status_isr()
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32, i32* @SIM_SCGC4, align 4
  %24 = load i32, i32* @SIM_SCGC4_UART2, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (...) @uart2_status_isr()
  br label %29

29:                                               ; preds = %27, %22
  br label %1
}

declare dso_local i32 @usb_isr(...) #1

declare dso_local i32 @uart0_status_isr(...) #1

declare dso_local i32 @uart1_status_isr(...) #1

declare dso_local i32 @uart2_status_isr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
