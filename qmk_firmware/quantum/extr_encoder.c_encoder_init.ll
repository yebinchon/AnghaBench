; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_encoder.c_encoder_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_encoder.c_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMBER_OF_ENCODERS = common dso_local global i64 0, align 8
@encoders_pad_a = common dso_local global i32* null, align 8
@encoders_pad_b = common dso_local global i32* null, align 8
@encoder_state = common dso_local global i32* null, align 8
@ENCODERS_PAD_A_RIGHT = common dso_local global i32* null, align 8
@ENCODERS_PAD_B_RIGHT = common dso_local global i32* null, align 8
@isLeftHand = common dso_local global i64 0, align 8
@thatHand = common dso_local global i64 0, align 8
@thisHand = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %39, %0
  %3 = load i32, i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = load i64, i64* @NUMBER_OF_ENCODERS, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %42

7:                                                ; preds = %2
  %8 = load i32*, i32** @encoders_pad_a, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @setPinInputHigh(i32 %12)
  %14 = load i32*, i32** @encoders_pad_b, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @setPinInputHigh(i32 %18)
  %20 = load i32*, i32** @encoders_pad_a, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @readPin(i32 %24)
  %26 = shl i32 %25, 0
  %27 = load i32*, i32** @encoders_pad_b, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @readPin(i32 %31)
  %33 = shl i32 %32, 1
  %34 = or i32 %26, %33
  %35 = load i32*, i32** @encoder_state, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %7
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %2

42:                                               ; preds = %2
  ret void
}

declare dso_local i32 @setPinInputHigh(i32) #1

declare dso_local i32 @readPin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
