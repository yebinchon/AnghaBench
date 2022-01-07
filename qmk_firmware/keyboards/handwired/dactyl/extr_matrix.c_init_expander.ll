; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/dactyl/extr_matrix.c_init_expander.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/dactyl/extr_matrix.c_init_expander.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c_initialized = common dso_local global i32 0, align 4
@expander_input_pin_mask = common dso_local global i32 0, align 4
@MATRIX_COLS = common dso_local global i32 0, align 4
@col_expanded = common dso_local global i64* null, align 8
@expander_col_pins = common dso_local global i32* null, align 8
@I2C_ADDR_WRITE = common dso_local global i32 0, align 4
@expander_status = common dso_local global i64 0, align 8
@IODIRA = common dso_local global i32 0, align 4
@GPPUA = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i32 0, align 4
@expander_row_pins = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_expander() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @i2c_initialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @i2c_init()
  %6 = call i32 @wait_us(i32 1000000)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @expander_input_pin_mask, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @MATRIX_COLS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i64*, i64** @col_expanded, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load i32*, i32** @expander_col_pins, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* @expander_input_pin_mask, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* @expander_input_pin_mask, align 4
  br label %31

31:                                               ; preds = %22, %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %11

35:                                               ; preds = %11
  br label %36

36:                                               ; preds = %35, %7
  %37 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %38 = call i64 @i2c_start(i32 %37)
  store i64 %38, i64* @expander_status, align 8
  %39 = load i64, i64* @expander_status, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %84

42:                                               ; preds = %36
  %43 = load i32, i32* @IODIRA, align 4
  %44 = call i64 @i2c_write(i32 %43)
  store i64 %44, i64* @expander_status, align 8
  %45 = load i64, i64* @expander_status, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %84

48:                                               ; preds = %42
  %49 = load i32, i32* @expander_input_pin_mask, align 4
  %50 = call i64 @i2c_write(i32 %49)
  store i64 %50, i64* @expander_status, align 8
  %51 = load i64, i64* @expander_status, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %84

54:                                               ; preds = %48
  %55 = call i64 @i2c_write(i32 0)
  store i64 %55, i64* @expander_status, align 8
  %56 = load i64, i64* @expander_status, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %84

59:                                               ; preds = %54
  %60 = call i32 (...) @i2c_stop()
  %61 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %62 = call i64 @i2c_start(i32 %61)
  store i64 %62, i64* @expander_status, align 8
  %63 = load i64, i64* @expander_status, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %84

66:                                               ; preds = %59
  %67 = load i32, i32* @GPPUA, align 4
  %68 = call i64 @i2c_write(i32 %67)
  store i64 %68, i64* @expander_status, align 8
  %69 = load i64, i64* @expander_status, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %84

72:                                               ; preds = %66
  %73 = load i32, i32* @expander_input_pin_mask, align 4
  %74 = call i64 @i2c_write(i32 %73)
  store i64 %74, i64* @expander_status, align 8
  %75 = load i64, i64* @expander_status, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %84

78:                                               ; preds = %72
  %79 = call i64 @i2c_write(i32 0)
  store i64 %79, i64* @expander_status, align 8
  %80 = load i64, i64* @expander_status, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %84

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %82, %77, %71, %65, %58, %53, %47, %41
  %85 = call i32 (...) @i2c_stop()
  ret void
}

declare dso_local i32 @i2c_init(...) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i64 @i2c_start(i32) #1

declare dso_local i64 @i2c_write(i32) #1

declare dso_local i32 @i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
