; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_teensy.c_micros.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_teensy.c_micros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYST_CVR = common dso_local global i32 0, align 4
@systick_millis_count = common dso_local global i32 0, align 4
@SCB_ICSR = common dso_local global i32 0, align 4
@SCB_ICSR_PENDSTSET = common dso_local global i32 0, align 4
@F_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @micros() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @__disable_irq()
  %5 = load i32, i32* @SYST_CVR, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @systick_millis_count, align 4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @SCB_ICSR, align 4
  store i32 %7, i32* %3, align 4
  %8 = call i32 (...) @__enable_irq()
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SCB_ICSR_PENDSTSET, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = icmp sgt i32 %14, 50
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %16, %13, %0
  %20 = load i32, i32* @F_CPU, align 4
  %21 = sdiv i32 %20, 1000
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %2, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %1, align 4
  %26 = mul nsw i32 %25, 1000
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @F_CPU, align 4
  %29 = sdiv i32 %28, 1000000
  %30 = sdiv i32 %27, %29
  %31 = add nsw i32 %26, %30
  ret i32 %31
}

declare dso_local i32 @__disable_irq(...) #1

declare dso_local i32 @__enable_irq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
