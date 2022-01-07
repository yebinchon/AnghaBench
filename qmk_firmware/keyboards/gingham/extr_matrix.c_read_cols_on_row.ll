; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gingham/extr_matrix.c_read_cols_on_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gingham/extr_matrix.c_read_cols_on_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_COLS = common dso_local global i64 0, align 8
@PORT_EXPANDER_ADDRESS = common dso_local global i32 0, align 4
@col_pins = common dso_local global i32* null, align 8
@ROW_SHIFTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @read_cols_on_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cols_on_row(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @select_row(i64 %15)
  %17 = call i32 @wait_us(i32 30)
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %63, %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @MATRIX_COLS, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  switch i64 %23, label %42 [
    i64 0, label %24
    i64 12, label %30
    i64 13, label %36
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @PORT_EXPANDER_ADDRESS, align 4
  %26 = shl i32 %25, 1
  %27 = call i32 @i2c_readReg(i32 %26, i32 9, i64* %7, i32 1, i32 20)
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %28, 1
  store i64 %29, i64* %7, align 8
  br label %48

30:                                               ; preds = %22
  %31 = load i32, i32* @PORT_EXPANDER_ADDRESS, align 4
  %32 = shl i32 %31, 1
  %33 = call i32 @i2c_readReg(i32 %32, i32 9, i64* %7, i32 1, i32 20)
  %34 = load i64, i64* %7, align 8
  %35 = and i64 %34, 4
  store i64 %35, i64* %7, align 8
  br label %48

36:                                               ; preds = %22
  %37 = load i32, i32* @PORT_EXPANDER_ADDRESS, align 4
  %38 = shl i32 %37, 1
  %39 = call i32 @i2c_readReg(i32 %38, i32 9, i64* %7, i32 1, i32 20)
  %40 = load i64, i64* %7, align 8
  %41 = and i64 %40, 2
  store i64 %41, i64* %7, align 8
  br label %48

42:                                               ; preds = %22
  %43 = load i32*, i32** @col_pins, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @readPin(i32 %46)
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %42, %36, %30, %24
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %56

52:                                               ; preds = %48
  %53 = load i64, i64* @ROW_SHIFTER, align 8
  %54 = load i64, i64* %6, align 8
  %55 = shl i64 %53, %54
  br label %56

56:                                               ; preds = %52, %51
  %57 = phi i64 [ 0, %51 ], [ %55, %52 ]
  %58 = load i64*, i64** %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = or i64 %61, %57
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %56
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %18

66:                                               ; preds = %18
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @unselect_row(i64 %67)
  %69 = load i64, i64* %5, align 8
  %70 = load i64*, i64** %3, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  %75 = zext i1 %74 to i32
  ret i32 %75
}

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i32 @i2c_readReg(i32, i32, i64*, i32, i32) #1

declare dso_local i64 @readPin(i32) #1

declare dso_local i32 @unselect_row(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
