; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/sx60/extr_matrix.c_read_cols_on_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/sx60/extr_matrix.c_read_cols_on_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23018_status = common dso_local global i64 0, align 8
@I2C_ADDR_WRITE = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4
@I2C_ADDR_READ = common dso_local global i32 0, align 4
@ATMEGA_COLS = common dso_local global i64 0, align 8
@col_pins = common dso_local global i64* null, align 8
@ROW_SHIFTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @read_cols_on_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cols_on_row(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 0, i32* %17, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @select_row(i64 %18)
  %20 = call i32 @wait_us(i32 30)
  %21 = load i64, i64* @mcp23018_status, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %100

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %25 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %26 = call i64 @i2c_start(i32 %25)
  store i64 %26, i64* @mcp23018_status, align 8
  %27 = load i64, i64* @mcp23018_status, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %46

30:                                               ; preds = %24
  %31 = load i32, i32* @GPIOA, align 4
  %32 = call i64 @i2c_write(i32 %31)
  store i64 %32, i64* @mcp23018_status, align 8
  %33 = load i64, i64* @mcp23018_status, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %46

36:                                               ; preds = %30
  %37 = load i32, i32* @I2C_ADDR_READ, align 4
  %38 = call i64 @i2c_start(i32 %37)
  store i64 %38, i64* @mcp23018_status, align 8
  %39 = load i64, i64* @mcp23018_status, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %36
  %43 = call i32 (...) @i2c_readNak()
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = xor i32 %44, -1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %41, %35, %29
  %47 = call i32 (...) @i2c_stop()
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %46
  store i64 0, i64* %8, align 8
  br label %56

56:                                               ; preds = %88, %55
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @ATMEGA_COLS, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = load i64*, i64** @col_pins, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = lshr i64 %65, 4
  %67 = call i64 @_SFR_IO8(i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = and i64 %68, 15
  %70 = call i64 @_BV(i64 %69)
  %71 = and i64 %67, %70
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  br label %79

75:                                               ; preds = %60
  %76 = load i64, i64* @ROW_SHIFTER, align 8
  %77 = load i64, i64* %8, align 8
  %78 = shl i64 %76, %77
  br label %79

79:                                               ; preds = %75, %74
  %80 = phi i64 [ 0, %74 ], [ %78, %75 ]
  %81 = load i32*, i32** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = or i64 %85, %80
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  br label %88

88:                                               ; preds = %79
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %56

91:                                               ; preds = %56
  %92 = call i32 (...) @unselect_rows()
  %93 = load i32, i32* %6, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %93, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %91, %23
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i64 @i2c_start(i32) #1

declare dso_local i64 @i2c_write(i32) #1

declare dso_local i32 @i2c_readNak(...) #1

declare dso_local i32 @i2c_stop(...) #1

declare dso_local i64 @_SFR_IO8(i64) #1

declare dso_local i64 @_BV(i64) #1

declare dso_local i32 @unselect_rows(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
