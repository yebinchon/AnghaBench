; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_analog.c_analogRead.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_analog.c_analogRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@channel2sc1a = common dso_local global i32* null, align 8
@calibrating = common dso_local global i64 0, align 8
@ADC0_SC1A = common dso_local global i32 0, align 4
@analogReadBusyADC0 = common dso_local global i32 0, align 4
@ADC_SC1_COCO = common dso_local global i32 0, align 4
@ADC0_RA = common dso_local global i32 0, align 4
@analog_right_shift = common dso_local global i32 0, align 4
@ADC1_CFG2 = common dso_local global i32 0, align 4
@ADC1_RA = common dso_local global i32 0, align 4
@ADC1_SC1A = common dso_local global i32 0, align 4
@ADC_CFG2_MUXSEL = common dso_local global i32 0, align 4
@analogReadBusyADC1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @analogRead(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 13
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %5, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 %12, 23
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 14
  store i32 %16, i32* %5, align 4
  br label %28

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = icmp sge i32 %18, 34
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, 40
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, 24
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %20, %17
  store i32 0, i32* %2, align 4
  br label %64

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %14
  br label %29

29:                                               ; preds = %28, %9
  %30 = load i32*, i32** @channel2sc1a, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i64, i64* @calibrating, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 (...) @wait_for_cal()
  br label %39

39:                                               ; preds = %37, %29
  %40 = call i32 (...) @__disable_irq()
  br label %41

41:                                               ; preds = %60, %39
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* @ADC0_SC1A, align 4
  store i32 1, i32* @analogReadBusyADC0, align 4
  %43 = call i32 (...) @__enable_irq()
  br label %44

44:                                               ; preds = %41, %61
  %45 = call i32 (...) @__disable_irq()
  %46 = load i32, i32* @ADC0_SC1A, align 4
  %47 = load i32, i32* @ADC_SC1_COCO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32, i32* @ADC0_RA, align 4
  store i32 %51, i32* %4, align 4
  store i32 0, i32* @analogReadBusyADC0, align 4
  %52 = call i32 (...) @__enable_irq()
  %53 = load i32, i32* @analog_right_shift, align 4
  %54 = load i32, i32* %4, align 4
  %55 = ashr i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %64

57:                                               ; preds = %44
  %58 = load i32, i32* @analogReadBusyADC0, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %41

61:                                               ; preds = %57
  %62 = call i32 (...) @__enable_irq()
  %63 = call i32 (...) @yield()
  br label %44

64:                                               ; preds = %50, %26
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @wait_for_cal(...) #1

declare dso_local i32 @__disable_irq(...) #1

declare dso_local i32 @__enable_irq(...) #1

declare dso_local i32 @yield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
