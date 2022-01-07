; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring_pulse.c_pulseIn.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring_pulse.c_pulseIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pulseIn(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @digitalPinToBitMask(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @digitalPinToPort(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @microsecondsToClockCycles(i64 %25)
  %27 = sdiv i32 %26, 16
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %13, align 8
  br label %29

29:                                               ; preds = %43, %23
  %30 = load i32, i32* %9, align 4
  %31 = call i32* @portInputRegister(i32 %30)
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i64 0, i64* %4, align 8
  br label %83

43:                                               ; preds = %37
  br label %29

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %59, %44
  %46 = load i32, i32* %9, align 4
  %47 = call i32* @portInputRegister(i32 %46)
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i64 0, i64* %4, align 8
  br label %83

59:                                               ; preds = %53
  br label %45

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i32, i32* %9, align 4
  %63 = call i32* @portInputRegister(i32 %62)
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i64 0, i64* %4, align 8
  br label %83

75:                                               ; preds = %69
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %11, align 8
  br label %61

78:                                               ; preds = %61
  %79 = load i64, i64* %11, align 8
  %80 = mul i64 %79, 21
  %81 = add i64 %80, 16
  %82 = call i64 @clockCyclesToMicroseconds(i64 %81)
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %78, %74, %58, %42
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local i32 @digitalPinToBitMask(i32) #1

declare dso_local i32 @digitalPinToPort(i32) #1

declare dso_local i32 @microsecondsToClockCycles(i64) #1

declare dso_local i32* @portInputRegister(i32) #1

declare dso_local i64 @clockCyclesToMicroseconds(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
