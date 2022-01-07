; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/gpio/extr_pca9555.c_pca9555_readPins.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/gpio/extr_pca9555.c_pca9555_readPins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMD_INPUT_1 = common dso_local global i64 0, align 8
@CMD_INPUT_0 = common dso_local global i64 0, align 8
@TIMEOUT = common dso_local global i32 0, align 4
@I2C_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"pca9555_readPins::FAILED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pca9555_readPins(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @SLAVE_TO_ADDR(i64 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @CMD_INPUT_1, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @CMD_INPUT_0, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  store i64 %18, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @TIMEOUT, align 4
  %22 = call i64 @i2c_readReg(i64 %19, i64 %20, i64* %7, i32 8, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @I2C_STATUS_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i64, i64* %7, align 8
  ret i64 %29
}

declare dso_local i64 @SLAVE_TO_ADDR(i64) #1

declare dso_local i64 @i2c_readReg(i64, i64, i64*, i32, i32) #1

declare dso_local i32 @print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
