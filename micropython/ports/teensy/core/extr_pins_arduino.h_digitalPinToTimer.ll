; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_arduino.h_digitalPinToTimer.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_arduino.h_digitalPinToTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOT_ON_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @digitalPinToTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitalPinToTimer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sge i32 %4, 3
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 6
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 %10, 2
  store i32 %11, i32* %2, align 4
  br label %32

12:                                               ; preds = %6, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 9
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 10
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 4
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %3, align 4
  %23 = icmp sge i32 %22, 20
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = icmp sle i32 %25, 23
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %28, 13
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %24, %21
  %31 = load i32, i32* @NOT_ON_TIMER, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %27, %18, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
