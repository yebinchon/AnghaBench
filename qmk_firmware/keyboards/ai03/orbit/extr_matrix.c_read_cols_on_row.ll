; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ai03/orbit/extr_matrix.c_read_cols_on_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ai03/orbit/extr_matrix.c_read_cols_on_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_COLS = common dso_local global i64 0, align 8
@col_pins = common dso_local global i32* null, align 8
@ROW_SHIFTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @read_cols_on_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cols_on_row(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @select_row(i64 %14)
  %16 = call i32 @wait_us(i32 30)
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %40, %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @MATRIX_COLS, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i32*, i32** @col_pins, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @readPin(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %33

29:                                               ; preds = %21
  %30 = load i64, i64* @ROW_SHIFTER, align 8
  %31 = load i64, i64* %6, align 8
  %32 = shl i64 %30, %31
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i64 [ 0, %28 ], [ %32, %29 ]
  %35 = load i64*, i64** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = or i64 %38, %34
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %17

43:                                               ; preds = %17
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @unselect_row(i64 %44)
  %46 = load i64, i64* %5, align 8
  %47 = load i64*, i64** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %46, %50
  %52 = zext i1 %51 to i32
  ret i32 %52
}

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i64 @readPin(i32) #1

declare dso_local i32 @unselect_row(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
