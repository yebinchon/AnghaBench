; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_teensy.c_digitalWrite.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_teensy.c_digitalWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CORE_NUM_DIGITAL = common dso_local global i64 0, align 8
@PORT_PCR_PE = common dso_local global i32 0, align 4
@PORT_PCR_PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @digitalWrite(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @CORE_NUM_DIGITAL, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %44

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = call i64* @portModeRegister(i64 %11)
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = call i32* @portSetRegister(i64 %19)
  store i32 1, i32* %20, align 4
  br label %24

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = call i32* @portClearRegister(i64 %22)
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  br label %44

25:                                               ; preds = %10
  %26 = load i64, i64* %3, align 8
  %27 = call i32* @portConfigRegister(i64 %26)
  store i32* %27, i32** %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load volatile i32, i32* @PORT_PCR_PE, align 4
  %32 = load volatile i32, i32* @PORT_PCR_PS, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** %5, align 8
  %35 = load volatile i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store volatile i32 %36, i32* %34, align 4
  br label %43

37:                                               ; preds = %25
  %38 = load volatile i32, i32* @PORT_PCR_PE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32*, i32** %5, align 8
  %41 = load volatile i32, i32* %40, align 4
  %42 = and i32 %41, %39
  store volatile i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %30
  br label %44

44:                                               ; preds = %9, %43, %24
  ret void
}

declare dso_local i64* @portModeRegister(i64) #1

declare dso_local i32* @portSetRegister(i64) #1

declare dso_local i32* @portClearRegister(i64) #1

declare dso_local i32* @portConfigRegister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
