; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_analog.c_adc_read.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_analog.c_adc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADEN = common dso_local global i32 0, align 4
@ADC_PRESCALER = common dso_local global i32 0, align 4
@ADCSRA = common dso_local global i32 0, align 4
@ADHSM = common dso_local global i32 0, align 4
@ADCSRB = common dso_local global i32 0, align 4
@aref = common dso_local global i32 0, align 4
@ADMUX = common dso_local global i32 0, align 4
@ADSC = common dso_local global i32 0, align 4
@ADCL = common dso_local global i32 0, align 4
@ADCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adc_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @ADEN, align 4
  %5 = shl i32 1, %4
  %6 = load i32, i32* @ADC_PRESCALER, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* @ADCSRA, align 4
  %8 = load i32, i32* @ADHSM, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 32
  %12 = or i32 %9, %11
  store i32 %12, i32* @ADCSRB, align 4
  %13 = load i32, i32* @aref, align 4
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 31
  %16 = or i32 %13, %15
  store i32 %16, i32* @ADMUX, align 4
  %17 = load i32, i32* @ADEN, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* @ADC_PRESCALER, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ADSC, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  store i32 %23, i32* @ADCSRA, align 4
  br label %24

24:                                               ; preds = %30, %1
  %25 = load i32, i32* @ADCSRA, align 4
  %26 = load i32, i32* @ADSC, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %24

31:                                               ; preds = %24
  %32 = load i32, i32* @ADCL, align 4
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @ADCH, align 4
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %34, %35
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
