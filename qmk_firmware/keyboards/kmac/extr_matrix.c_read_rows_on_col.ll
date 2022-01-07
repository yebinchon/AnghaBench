; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kmac/extr_matrix.c_read_rows_on_col.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kmac/extr_matrix.c_read_rows_on_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@E2 = common dso_local global i32 0, align 4
@ROW_SHIFTER = common dso_local global i64 0, align 8
@row_pins = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @read_rows_on_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rows_on_col(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @select_col(i64 %8)
  %10 = call i32 @wait_us(i32 30)
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %88, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @MATRIX_ROWS, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %91

15:                                               ; preds = %11
  %16 = load i64*, i64** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %22, label %49

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = load i32, i32* @E2, align 4
  %27 = call i64 @readPin(i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i64, i64* @ROW_SHIFTER, align 8
  %31 = load i64, i64* %4, align 8
  %32 = shl i64 %30, %31
  %33 = load i64*, i64** %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %36, %32
  store i64 %37, i64* %35, align 8
  br label %48

38:                                               ; preds = %25
  %39 = load i64, i64* @ROW_SHIFTER, align 8
  %40 = load i64, i64* %4, align 8
  %41 = shl i64 %39, %40
  %42 = xor i64 %41, -1
  %43 = load i64*, i64** %3, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %46, %42
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %38, %29
  br label %76

49:                                               ; preds = %22, %15
  %50 = load i32*, i32** @row_pins, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @readPin(i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load i64, i64* @ROW_SHIFTER, align 8
  %58 = load i64, i64* %4, align 8
  %59 = shl i64 %57, %58
  %60 = xor i64 %59, -1
  %61 = load i64*, i64** %3, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, %60
  store i64 %65, i64* %63, align 8
  br label %75

66:                                               ; preds = %49
  %67 = load i64, i64* @ROW_SHIFTER, align 8
  %68 = load i64, i64* %4, align 8
  %69 = shl i64 %67, %68
  %70 = load i64*, i64** %3, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = or i64 %73, %69
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %66, %56
  br label %76

76:                                               ; preds = %75, %48
  %77 = load i64, i64* %7, align 8
  %78 = load i64*, i64** %3, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %77, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %83, %76
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %6, align 8
  br label %11

91:                                               ; preds = %11
  %92 = call i32 (...) @unselect_cols()
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @select_col(i64) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i64 @readPin(i32) #1

declare dso_local i32 @unselect_cols(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
