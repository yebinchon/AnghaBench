; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_stm32/extr_matrix.c_read_cols.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_stm32/extr_matrix.c_read_cols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MATRIX_ROWS_PER_SIDE = common dso_local global i64 0, align 8
@mcp23017_status = common dso_local global i64 0, align 8
@I2C_GPIOB = common dso_local global i64 0, align 8
@I2C_ADDR = common dso_local global i32 0, align 4
@GPIOB = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @read_cols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_cols(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @MATRIX_ROWS_PER_SIDE, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  store i64 255, i64* %4, align 8
  %12 = load i64, i64* @mcp23017_status, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @I2C_GPIOB, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* @I2C_ADDR, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @i2c_readReg(i32 %16, i64 %17, i64* %4, i32 1, i32 10)
  store i64 %18, i64* @mcp23017_status, align 8
  br label %19

19:                                               ; preds = %14, %11
  %20 = load i64, i64* @mcp23017_status, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i64 0, i64* %2, align 8
  br label %35

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = xor i64 %24, -1
  %26 = and i64 %25, 63
  store i64 %26, i64* %2, align 8
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GPIOB, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = xor i64 %32, -1
  %34 = and i64 %33, 63
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %27, %23, %22
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i64 @i2c_readReg(i32, i64, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
