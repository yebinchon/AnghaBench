; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_stm32/extr_matrix.c_select_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_stm32/extr_matrix.c_select_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MATRIX_ROWS_PER_SIDE = common dso_local global i32 0, align 4
@mcp23017_status = common dso_local global i64 0, align 8
@I2C_ADDR = common dso_local global i32 0, align 4
@I2C_GPIOA = common dso_local global i32 0, align 4
@GPIOB = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_row(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MATRIX_ROWS_PER_SIDE, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i64, i64* @mcp23017_status, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 1, %11
  %13 = xor i32 %12, -1
  %14 = and i32 255, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @I2C_ADDR, align 4
  %16 = load i32, i32* @I2C_GPIOA, align 4
  %17 = call i64 @i2c_writeReg(i32 %15, i32 %16, i32* %3, i32 1, i32 10)
  store i64 %17, i64* @mcp23017_status, align 8
  br label %18

18:                                               ; preds = %10, %7
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  %22 = shl i32 1, %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GPIOB, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %18
  ret void
}

declare dso_local i64 @i2c_writeReg(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
