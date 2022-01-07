; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/left/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/left/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8
@SLAVE_I2C_ADDRESS_RIGHT = common dso_local global i32 0, align 4
@error_count_right = common dso_local global i64 0, align 8
@ERROR_DISCONNECT_COUNT = common dso_local global i64 0, align 8
@SLAVE_I2C_ADDRESS_ARROW = common dso_local global i32 0, align 4
@error_count_arrow = common dso_local global i64 0, align 8
@SLAVE_I2C_ADDRESS_NUMPAD = common dso_local global i32 0, align 4
@error_count_numpad = common dso_local global i64 0, align 8
@DEBOUNCE = common dso_local global i64 0, align 8
@MATRIX_COLS = common dso_local global i64 0, align 8
@debouncing = common dso_local global i32 0, align 4
@debouncing_time = common dso_local global i32 0, align 4
@matrix_debouncing = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %13, %0
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @MATRIX_ROWS, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32*, i32** @matrix, align 8
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @read_cols_on_row(i32* %10, i64 %11)
  br label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %1, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %1, align 8
  br label %5

16:                                               ; preds = %5
  %17 = load i32, i32* @SLAVE_I2C_ADDRESS_RIGHT, align 4
  %18 = call i64 @i2c_transaction(i32 %17, i32 63, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i64, i64* @error_count_right, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @error_count_right, align 8
  %23 = load i64, i64* @error_count_right, align 8
  %24 = load i64, i64* @ERROR_DISCONNECT_COUNT, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  store i64 0, i64* %2, align 8
  br label %27

27:                                               ; preds = %37, %26
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @MATRIX_ROWS, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32*, i32** @matrix, align 8
  %33 = load i64, i64* %2, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 63
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %2, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %2, align 8
  br label %27

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %20
  br label %43

42:                                               ; preds = %16
  store i64 0, i64* @error_count_right, align 8
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* @SLAVE_I2C_ADDRESS_ARROW, align 4
  %45 = call i64 @i2c_transaction(i32 %44, i32 16383, i32 8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load i64, i64* @error_count_arrow, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* @error_count_arrow, align 8
  %50 = load i64, i64* @error_count_arrow, align 8
  %51 = load i64, i64* @ERROR_DISCONNECT_COUNT, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  store i64 0, i64* %3, align 8
  br label %54

54:                                               ; preds = %64, %53
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @MATRIX_ROWS, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32*, i32** @matrix, align 8
  %60 = load i64, i64* %3, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 16383
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58
  %65 = load i64, i64* %3, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %3, align 8
  br label %54

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %47
  br label %70

69:                                               ; preds = %43
  store i64 0, i64* @error_count_arrow, align 8
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i32, i32* @SLAVE_I2C_ADDRESS_NUMPAD, align 4
  %72 = call i64 @i2c_transaction(i32 %71, i32 131071, i32 11)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load i64, i64* @error_count_numpad, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* @error_count_numpad, align 8
  %77 = load i64, i64* @error_count_numpad, align 8
  %78 = load i64, i64* @ERROR_DISCONNECT_COUNT, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  store i64 0, i64* %4, align 8
  br label %81

81:                                               ; preds = %91, %80
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @MATRIX_ROWS, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32*, i32** @matrix, align 8
  %87 = load i64, i64* %4, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 131071
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %4, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %4, align 8
  br label %81

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %74
  br label %97

96:                                               ; preds = %70
  store i64 0, i64* @error_count_numpad, align 8
  br label %97

97:                                               ; preds = %96, %95
  %98 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @read_cols_on_row(i32*, i64) #1

declare dso_local i64 @i2c_transaction(i32, i32, i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
