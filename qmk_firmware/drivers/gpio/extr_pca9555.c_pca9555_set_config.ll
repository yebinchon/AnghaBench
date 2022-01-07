; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/gpio/extr_pca9555.c_pca9555_set_config.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/gpio/extr_pca9555.c_pca9555_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMD_CONFIG_1 = common dso_local global i64 0, align 8
@CMD_CONFIG_0 = common dso_local global i64 0, align 8
@TIMEOUT = common dso_local global i32 0, align 4
@I2C_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"pca9555_set_config::FAILED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pca9555_set_config(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @SLAVE_TO_ADDR(i64 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @CMD_CONFIG_1, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @CMD_CONFIG_0, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @TIMEOUT, align 4
  %23 = call i64 @i2c_writeReg(i64 %20, i64 %21, i64* %6, i32 8, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @I2C_STATUS_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 @print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %18
  ret void
}

declare dso_local i64 @SLAVE_TO_ADDR(i64) #1

declare dso_local i64 @i2c_writeReg(i64, i64, i64*, i32, i32) #1

declare dso_local i32 @print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
