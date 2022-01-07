; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_adc.c_ADCIntUnregister.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_adc.c_ADCIntUnregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADC_CH_0 = common dso_local global i64 0, align 8
@INT_ADCCH0 = common dso_local global i64 0, align 8
@ADC_CH_1 = common dso_local global i64 0, align 8
@INT_ADCCH1 = common dso_local global i64 0, align 8
@ADC_CH_2 = common dso_local global i64 0, align 8
@INT_ADCCH2 = common dso_local global i64 0, align 8
@INT_ADCCH3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ADCIntUnregister(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @ADC_CH_0, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @INT_ADCCH0, align 8
  br label %29

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @ADC_CH_1, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i64, i64* @INT_ADCCH1, align 8
  br label %27

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ADC_CH_2, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @INT_ADCCH2, align 8
  br label %25

23:                                               ; preds = %17
  %24 = load i64, i64* @INT_ADCCH3, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi i64 [ %16, %15 ], [ %26, %25 ]
  br label %29

29:                                               ; preds = %27, %9
  %30 = phi i64 [ %10, %9 ], [ %28, %27 ]
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @IntDisable(i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @IntUnregister(i64 %33)
  ret void
}

declare dso_local i32 @IntDisable(i64) #1

declare dso_local i32 @IntUnregister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
