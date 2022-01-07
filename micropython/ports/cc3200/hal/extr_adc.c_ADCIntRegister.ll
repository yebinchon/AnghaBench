; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_adc.c_ADCIntRegister.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_adc.c_ADCIntRegister.c"
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
define dso_local void @ADCIntRegister(i64 %0, i64 %1, void ()* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca void ()*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store void ()* %2, void ()** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @ADC_CH_0, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i64, i64* @INT_ADCCH0, align 8
  br label %31

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ADC_CH_1, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i64, i64* @INT_ADCCH1, align 8
  br label %29

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @ADC_CH_2, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @INT_ADCCH2, align 8
  br label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @INT_ADCCH3, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi i64 [ %18, %17 ], [ %28, %27 ]
  br label %31

31:                                               ; preds = %29, %11
  %32 = phi i64 [ %12, %11 ], [ %30, %29 ]
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load void ()*, void ()** %6, align 8
  %35 = bitcast void ()* %34 to void (...)*
  %36 = call i32 @IntRegister(i64 %33, void (...)* %35)
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @IntEnable(i64 %37)
  ret void
}

declare dso_local i32 @IntRegister(i64, void (...)*) #1

declare dso_local i32 @IntEnable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
