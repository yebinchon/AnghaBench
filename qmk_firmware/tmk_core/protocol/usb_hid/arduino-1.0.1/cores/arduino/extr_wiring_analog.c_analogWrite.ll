; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring_analog.c_analogWrite.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring_analog.c_analogWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OUTPUT = common dso_local global i32 0, align 4
@LOW = common dso_local global i32 0, align 4
@HIGH = common dso_local global i32 0, align 4
@COM00 = common dso_local global i32 0, align 4
@COM0A1 = common dso_local global i32 0, align 4
@COM0B1 = common dso_local global i32 0, align 4
@COM1A1 = common dso_local global i32 0, align 4
@COM1B1 = common dso_local global i32 0, align 4
@COM21 = common dso_local global i32 0, align 4
@COM2A1 = common dso_local global i32 0, align 4
@COM2B1 = common dso_local global i32 0, align 4
@COM3A1 = common dso_local global i32 0, align 4
@COM3B1 = common dso_local global i32 0, align 4
@COM3C1 = common dso_local global i32 0, align 4
@COM4A0 = common dso_local global i32 0, align 4
@COM4A1 = common dso_local global i32 0, align 4
@COM4B1 = common dso_local global i32 0, align 4
@COM4C1 = common dso_local global i32 0, align 4
@COM4D0 = common dso_local global i32 0, align 4
@COM4D1 = common dso_local global i32 0, align 4
@COM5A1 = common dso_local global i32 0, align 4
@COM5B1 = common dso_local global i32 0, align 4
@COM5C1 = common dso_local global i32 0, align 4
@OCR0 = common dso_local global i32 0, align 4
@OCR0A = common dso_local global i32 0, align 4
@OCR0B = common dso_local global i32 0, align 4
@OCR1A = common dso_local global i32 0, align 4
@OCR1B = common dso_local global i32 0, align 4
@OCR2 = common dso_local global i32 0, align 4
@OCR2A = common dso_local global i32 0, align 4
@OCR2B = common dso_local global i32 0, align 4
@OCR3A = common dso_local global i32 0, align 4
@OCR3B = common dso_local global i32 0, align 4
@OCR3C = common dso_local global i32 0, align 4
@OCR4A = common dso_local global i32 0, align 4
@OCR4B = common dso_local global i32 0, align 4
@OCR4C = common dso_local global i32 0, align 4
@OCR4D = common dso_local global i32 0, align 4
@OCR5A = common dso_local global i32 0, align 4
@OCR5B = common dso_local global i32 0, align 4
@OCR5C = common dso_local global i32 0, align 4
@TCCR0 = common dso_local global i32 0, align 4
@TCCR0A = common dso_local global i32 0, align 4
@TCCR1A = common dso_local global i32 0, align 4
@TCCR2 = common dso_local global i32 0, align 4
@TCCR2A = common dso_local global i32 0, align 4
@TCCR3A = common dso_local global i32 0, align 4
@TCCR4A = common dso_local global i32 0, align 4
@TCCR4C = common dso_local global i32 0, align 4
@TCCR5A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogWrite(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @OUTPUT, align 4
  %7 = call i32 @pinMode(i32 %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @LOW, align 4
  %13 = call i32 @digitalWrite(i32 %11, i32 %12)
  br label %39

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @HIGH, align 4
  %20 = call i32 @digitalWrite(i32 %18, i32 %19)
  br label %38

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @digitalPinToTimer(i32 %22)
  switch i32 %23, label %25 [
    i32 145, label %24
  ]

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %21, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 128
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @LOW, align 4
  %31 = call i32 @digitalWrite(i32 %29, i32 %30)
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @HIGH, align 4
  %35 = call i32 @digitalWrite(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37, %17
  br label %39

39:                                               ; preds = %38, %10
  ret void
}

declare dso_local i32 @pinMode(i32, i32) #1

declare dso_local i32 @digitalWrite(i32, i32) #1

declare dso_local i32 @digitalPinToTimer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
