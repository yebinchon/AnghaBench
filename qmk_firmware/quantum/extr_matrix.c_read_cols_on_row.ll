; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_matrix.c_read_cols_on_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_matrix.c_read_cols_on_row.c"
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

18:                                               ; preds = %42, %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @MATRIX_COLS, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i32*, i32** @col_pins, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @readPin(i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %35

31:                                               ; preds = %22
  %32 = load i64, i64* @ROW_SHIFTER, align 8
  %33 = load i64, i64* %6, align 8
  %34 = shl i64 %32, %33
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i64 [ 0, %30 ], [ %34, %31 ]
  %37 = load i64*, i64** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %36
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %18

45:                                               ; preds = %18
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @unselect_row(i64 %46)
  %48 = load i64, i64* %5, align 8
  %49 = load i64*, i64** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %48, %52
  %54 = zext i1 %53 to i32
  ret i32 %54
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
