; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergotaco/extr_matrix.c_debounce_mask.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergotaco/extr_matrix.c_debounce_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@raw_matrix = common dso_local global i32* null, align 8
@MATRIX_COLS = common dso_local global i64 0, align 8
@debounce_matrix = common dso_local global i64* null, align 8
@DEBOUNCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debounce_mask(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32*, i32** @raw_matrix, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %8, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32*, i32** @raw_matrix, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %14, i32* %17, align 4
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %65, %2
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @MATRIX_COLS, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %18
  %23 = load i64*, i64** @debounce_matrix, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @MATRIX_COLS, align 8
  %26 = mul i64 %24, %25
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %26, %27
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load i64*, i64** @debounce_matrix, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @MATRIX_COLS, align 8
  %36 = mul i64 %34, %35
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %36, %37
  %39 = getelementptr inbounds i64, i64* %33, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  br label %48

42:                                               ; preds = %22
  %43 = load i64, i64* %7, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 1, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %42, %32
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 1, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load i64, i64* @DEBOUNCE, align 8
  %57 = load i64*, i64** @debounce_matrix, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @MATRIX_COLS, align 8
  %60 = mul i64 %58, %59
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %60, %61
  %63 = getelementptr inbounds i64, i64* %57, i64 %62
  store i64 %56, i64* %63, align 8
  br label %64

64:                                               ; preds = %55, %48
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %18

68:                                               ; preds = %18
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
