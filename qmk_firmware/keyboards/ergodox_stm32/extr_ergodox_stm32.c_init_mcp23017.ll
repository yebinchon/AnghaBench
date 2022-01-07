; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_stm32/extr_ergodox_stm32.c_init_mcp23017.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_stm32/extr_ergodox_stm32.c_init_mcp23017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c_initializied = common dso_local global i32 0, align 4
@I2C_ADDR = common dso_local global i32 0, align 4
@I2C_IODIRA = common dso_local global i32 0, align 4
@mcp23017_status = common dso_local global i32 0, align 4
@I2C_GPIOA = common dso_local global i32 0, align 4
@I2C_GPPUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_mcp23017() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = load i32, i32* @i2c_initializied, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @i2c_init()
  store i32 1, i32* @i2c_initializied, align 4
  br label %6

6:                                                ; preds = %4, %0
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 63, i32* %8, align 4
  %9 = load i32, i32* @I2C_ADDR, align 4
  %10 = load i32, i32* @I2C_IODIRA, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %12 = call i32 @i2c_writeReg(i32 %9, i32 %10, i32* %11, i32 2, i32 50000)
  store i32 %12, i32* @mcp23017_status, align 4
  %13 = load i32, i32* @mcp23017_status, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %35

16:                                               ; preds = %6
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 255, i32* %17, align 4
  %18 = load i32, i32* @I2C_ADDR, align 4
  %19 = load i32, i32* @I2C_GPIOA, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %21 = call i32 @i2c_writeReg(i32 %18, i32 %19, i32* %20, i32 1, i32 5000)
  store i32 %21, i32* @mcp23017_status, align 4
  %22 = load i32, i32* @mcp23017_status, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %35

25:                                               ; preds = %16
  %26 = load i32, i32* @I2C_ADDR, align 4
  %27 = load i32, i32* @I2C_GPPUB, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @i2c_writeReg(i32 %26, i32 %27, i32* %29, i32 1, i32 2)
  store i32 %30, i32* @mcp23017_status, align 4
  %31 = load i32, i32* @mcp23017_status, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %33, %24, %15
  %36 = load i32, i32* @mcp23017_status, align 4
  ret i32 %36
}

declare dso_local i32 @i2c_init(...) #1

declare dso_local i32 @i2c_writeReg(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
