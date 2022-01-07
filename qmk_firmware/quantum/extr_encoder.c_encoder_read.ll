; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_encoder.c_encoder_read.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_encoder.c_encoder_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMBER_OF_ENCODERS = common dso_local global i32 0, align 4
@encoder_state = common dso_local global i32* null, align 8
@encoders_pad_a = common dso_local global i32* null, align 8
@encoders_pad_b = common dso_local global i32* null, align 8
@thisHand = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_read() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %41, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @NUMBER_OF_ENCODERS, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %44

6:                                                ; preds = %2
  %7 = load i32*, i32** @encoder_state, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 2
  store i32 %12, i32* %10, align 4
  %13 = load i32*, i32** @encoders_pad_a, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @readPin(i32 %17)
  %19 = shl i32 %18, 0
  %20 = load i32*, i32** @encoders_pad_b, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @readPin(i32 %24)
  %26 = shl i32 %25, 1
  %27 = or i32 %19, %26
  %28 = load i32*, i32** @encoder_state, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32*, i32** @encoder_state, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @encoder_update(i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %6
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %2

44:                                               ; preds = %2
  ret void
}

declare dso_local i32 @readPin(i32) #1

declare dso_local i32 @encoder_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
