; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_analog.c_wait_for_cal.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_analog.c_wait_for_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@calibrating = common dso_local global i64 0, align 8
@ADC0_CLPS = common dso_local global i32 0, align 4
@ADC0_CLP4 = common dso_local global i32 0, align 4
@ADC0_CLP3 = common dso_local global i32 0, align 4
@ADC0_CLP2 = common dso_local global i32 0, align 4
@ADC0_CLP1 = common dso_local global i32 0, align 4
@ADC0_CLP0 = common dso_local global i32 0, align 4
@ADC0_PG = common dso_local global i32 0, align 4
@ADC0_CLMS = common dso_local global i32 0, align 4
@ADC0_CLM4 = common dso_local global i32 0, align 4
@ADC0_CLM3 = common dso_local global i32 0, align 4
@ADC0_CLM2 = common dso_local global i32 0, align 4
@ADC0_CLM1 = common dso_local global i32 0, align 4
@ADC0_CLM0 = common dso_local global i32 0, align 4
@ADC0_MG = common dso_local global i32 0, align 4
@ADC0_SC3 = common dso_local global i32 0, align 4
@ADC1_CLM0 = common dso_local global i32 0, align 4
@ADC1_CLM1 = common dso_local global i32 0, align 4
@ADC1_CLM2 = common dso_local global i32 0, align 4
@ADC1_CLM3 = common dso_local global i32 0, align 4
@ADC1_CLM4 = common dso_local global i32 0, align 4
@ADC1_CLMS = common dso_local global i32 0, align 4
@ADC1_CLP0 = common dso_local global i32 0, align 4
@ADC1_CLP1 = common dso_local global i32 0, align 4
@ADC1_CLP2 = common dso_local global i32 0, align 4
@ADC1_CLP3 = common dso_local global i32 0, align 4
@ADC1_CLP4 = common dso_local global i32 0, align 4
@ADC1_CLPS = common dso_local global i32 0, align 4
@ADC1_MG = common dso_local global i32 0, align 4
@ADC1_PG = common dso_local global i32 0, align 4
@ADC1_SC3 = common dso_local global i32 0, align 4
@ADC_SC3_CAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wait_for_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_cal() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @__disable_irq()
  %3 = load i64, i64* @calibrating, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %36

5:                                                ; preds = %0
  %6 = load i32, i32* @ADC0_CLPS, align 4
  %7 = load i32, i32* @ADC0_CLP4, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32, i32* @ADC0_CLP3, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @ADC0_CLP2, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i32, i32* @ADC0_CLP1, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @ADC0_CLP0, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = sdiv i32 %17, 2
  %19 = or i32 %18, 32768
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  store i32 %20, i32* @ADC0_PG, align 4
  %21 = load i32, i32* @ADC0_CLMS, align 4
  %22 = load i32, i32* @ADC0_CLM4, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @ADC0_CLM3, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @ADC0_CLM2, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @ADC0_CLM1, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @ADC0_CLM0, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = sdiv i32 %32, 2
  %34 = or i32 %33, 32768
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  store i32 %35, i32* @ADC0_MG, align 4
  store i64 0, i64* @calibrating, align 8
  br label %36

36:                                               ; preds = %5, %0
  %37 = call i32 (...) @__enable_irq()
  ret void
}

declare dso_local i32 @__disable_irq(...) #1

declare dso_local i32 @__enable_irq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
