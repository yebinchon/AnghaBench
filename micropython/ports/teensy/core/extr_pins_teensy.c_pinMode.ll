; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_teensy.c_pinMode.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_teensy.c_pinMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CORE_NUM_DIGITAL = common dso_local global i64 0, align 8
@OUTPUT = common dso_local global i64 0, align 8
@PORT_PCR_SRE = common dso_local global i32 0, align 4
@PORT_PCR_DSE = common dso_local global i32 0, align 4
@INPUT = common dso_local global i64 0, align 8
@PORT_PCR_PE = common dso_local global i32 0, align 4
@PORT_PCR_PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pinMode(i64 %0, i64 %1) #0 {
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
  br label %42

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = call i32* @portConfigRegister(i64 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @OUTPUT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i64, i64* %3, align 8
  %18 = call i32* @portModeRegister(i64 %17)
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @PORT_PCR_SRE, align 4
  %20 = load i32, i32* @PORT_PCR_DSE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @PORT_PCR_MUX(i32 1)
  %23 = or i32 %21, %22
  %24 = load i32*, i32** %5, align 8
  store volatile i32 %23, i32* %24, align 4
  br label %42

25:                                               ; preds = %10
  %26 = load i64, i64* %3, align 8
  %27 = call i32* @portModeRegister(i64 %26)
  store i32 0, i32* %27, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @INPUT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = call i32 @PORT_PCR_MUX(i32 1)
  %33 = load i32*, i32** %5, align 8
  store volatile i32 %32, i32* %33, align 4
  br label %41

34:                                               ; preds = %25
  %35 = call i32 @PORT_PCR_MUX(i32 1)
  %36 = load i32, i32* @PORT_PCR_PE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PORT_PCR_PS, align 4
  %39 = or i32 %37, %38
  %40 = load i32*, i32** %5, align 8
  store volatile i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %31
  br label %42

42:                                               ; preds = %9, %41, %16
  ret void
}

declare dso_local i32* @portConfigRegister(i64) #1

declare dso_local i32* @portModeRegister(i64) #1

declare dso_local i32 @PORT_PCR_MUX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
