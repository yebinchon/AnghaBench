; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_teensy.c_pulseIn_low.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_teensy.c_pulseIn_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PULSEIN_LOOPS_PER_USEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pulseIn_low(i64* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @PULSEIN_LOOPS_PER_USEC, align 8
  %11 = mul nsw i64 %9, %10
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %22, %2
  %13 = load i64*, i64** %4, align 8
  %14 = load volatile i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i64, i64* %6, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %52

22:                                               ; preds = %17
  br label %12

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %33, %23
  %25 = load i64*, i64** %4, align 8
  %26 = load volatile i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %6, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i64 0, i64* %3, align 8
  br label %52

33:                                               ; preds = %28
  br label %24

34:                                               ; preds = %24
  %35 = call i64 (...) @micros()
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %46, %34
  %37 = load i64*, i64** %4, align 8
  %38 = load volatile i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %6, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i64 0, i64* %3, align 8
  br label %52

46:                                               ; preds = %41
  br label %36

47:                                               ; preds = %36
  %48 = call i64 (...) @micros()
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %47, %45, %32, %21
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i64 @micros(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
