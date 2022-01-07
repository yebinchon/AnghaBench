; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hotdox/extr_matrix.c_debounce_mask.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hotdox/extr_matrix.c_debounce_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_COLS = common dso_local global i64 0, align 8
@debounce_matrix = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debounce_mask(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @MATRIX_COLS, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = load i64*, i64** @debounce_matrix, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @MATRIX_COLS, align 8
  %13 = mul i64 %11, %12
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %13, %14
  %16 = getelementptr inbounds i64, i64* %10, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %9
  %20 = load i64*, i64** @debounce_matrix, align 8
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @MATRIX_COLS, align 8
  %23 = mul i64 %21, %22
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds i64, i64* %20, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  br label %35

29:                                               ; preds = %9
  %30 = load i64, i64* %4, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %19
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  br label %5

39:                                               ; preds = %5
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
