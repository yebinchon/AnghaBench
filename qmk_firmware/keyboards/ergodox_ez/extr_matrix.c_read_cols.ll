; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/extr_matrix.c_read_cols.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/extr_matrix.c_read_cols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23018_status = common dso_local global i64 0, align 8
@I2C_ADDR_WRITE = common dso_local global i32 0, align 4
@ERGODOX_EZ_I2C_TIMEOUT = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4
@I2C_ADDR_READ = common dso_local global i32 0, align 4
@I2C_STATUS_SUCCESS = common dso_local global i64 0, align 8
@PINF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_cols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cols(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 7
  br i1 %6, label %7, label %46

7:                                                ; preds = %1
  %8 = load i64, i64* @mcp23018_status, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %54

11:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %13 = load i32, i32* @ERGODOX_EZ_I2C_TIMEOUT, align 4
  %14 = call i64 @i2c_start(i32 %12, i32 %13)
  store i64 %14, i64* @mcp23018_status, align 8
  %15 = load i64, i64* @mcp23018_status, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %43

18:                                               ; preds = %11
  %19 = load i32, i32* @GPIOB, align 4
  %20 = load i32, i32* @ERGODOX_EZ_I2C_TIMEOUT, align 4
  %21 = call i64 @i2c_write(i32 %19, i32 %20)
  store i64 %21, i64* @mcp23018_status, align 8
  %22 = load i64, i64* @mcp23018_status, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %43

25:                                               ; preds = %18
  %26 = load i32, i32* @I2C_ADDR_READ, align 4
  %27 = load i32, i32* @ERGODOX_EZ_I2C_TIMEOUT, align 4
  %28 = call i64 @i2c_start(i32 %26, i32 %27)
  store i64 %28, i64* @mcp23018_status, align 8
  %29 = load i64, i64* @mcp23018_status, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %43

32:                                               ; preds = %25
  %33 = load i32, i32* @ERGODOX_EZ_I2C_TIMEOUT, align 4
  %34 = call i64 @i2c_read_nack(i32 %33)
  store i64 %34, i64* @mcp23018_status, align 8
  %35 = load i64, i64* @mcp23018_status, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %43

38:                                               ; preds = %32
  %39 = load i64, i64* @mcp23018_status, align 8
  %40 = trunc i64 %39 to i32
  %41 = xor i32 %40, -1
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* @I2C_STATUS_SUCCESS, align 8
  store i64 %42, i64* @mcp23018_status, align 8
  br label %43

43:                                               ; preds = %38, %37, %31, %24, %17
  %44 = call i32 (...) @i2c_stop()
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %1
  %47 = load i32, i32* @PINF, align 4
  %48 = and i32 %47, 3
  %49 = load i32, i32* @PINF, align 4
  %50 = and i32 %49, 240
  %51 = ashr i32 %50, 2
  %52 = or i32 %48, %51
  %53 = xor i32 %52, -1
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %46, %43, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @i2c_start(i32, i32) #1

declare dso_local i64 @i2c_write(i32, i32) #1

declare dso_local i64 @i2c_read_nack(i32) #1

declare dso_local i32 @i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
