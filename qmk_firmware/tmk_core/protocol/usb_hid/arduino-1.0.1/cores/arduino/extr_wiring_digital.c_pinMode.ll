; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring_digital.c_pinMode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring_digital.c_pinMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOT_A_PIN = common dso_local global i64 0, align 8
@INPUT = common dso_local global i64 0, align 8
@SREG = common dso_local global i64 0, align 8
@INPUT_PULLUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pinMode(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @digitalPinToBitMask(i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @digitalPinToPort(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @NOT_A_PIN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %68

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = call i64* @portModeRegister(i64 %21)
  store i64* %22, i64** %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64* @portOutputRegister(i64 %23)
  store i64* %24, i64** %8, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @INPUT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load i64, i64* @SREG, align 8
  store i64 %29, i64* %9, align 8
  %30 = call i32 (...) @cli()
  %31 = load i64, i64* %5, align 8
  %32 = xor i64 %31, -1
  %33 = load i64*, i64** %7, align 8
  %34 = load volatile i64, i64* %33, align 8
  %35 = and i64 %34, %32
  store volatile i64 %35, i64* %33, align 8
  %36 = load i64, i64* %5, align 8
  %37 = xor i64 %36, -1
  %38 = load i64*, i64** %8, align 8
  %39 = load volatile i64, i64* %38, align 8
  %40 = and i64 %39, %37
  store volatile i64 %40, i64* %38, align 8
  %41 = load i64, i64* %9, align 8
  store i64 %41, i64* @SREG, align 8
  br label %68

42:                                               ; preds = %20
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @INPUT_PULLUP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i64, i64* @SREG, align 8
  store i64 %47, i64* %10, align 8
  %48 = call i32 (...) @cli()
  %49 = load i64, i64* %5, align 8
  %50 = xor i64 %49, -1
  %51 = load i64*, i64** %7, align 8
  %52 = load volatile i64, i64* %51, align 8
  %53 = and i64 %52, %50
  store volatile i64 %53, i64* %51, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = load volatile i64, i64* %55, align 8
  %57 = or i64 %56, %54
  store volatile i64 %57, i64* %55, align 8
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* @SREG, align 8
  br label %67

59:                                               ; preds = %42
  %60 = load i64, i64* @SREG, align 8
  store i64 %60, i64* %11, align 8
  %61 = call i32 (...) @cli()
  %62 = load i64, i64* %5, align 8
  %63 = load i64*, i64** %7, align 8
  %64 = load volatile i64, i64* %63, align 8
  %65 = or i64 %64, %62
  store volatile i64 %65, i64* %63, align 8
  %66 = load i64, i64* %11, align 8
  store i64 %66, i64* @SREG, align 8
  br label %67

67:                                               ; preds = %59, %46
  br label %68

68:                                               ; preds = %19, %67, %28
  ret void
}

declare dso_local i64 @digitalPinToBitMask(i64) #1

declare dso_local i64 @digitalPinToPort(i64) #1

declare dso_local i64* @portModeRegister(i64) #1

declare dso_local i64* @portOutputRegister(i64) #1

declare dso_local i32 @cli(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
