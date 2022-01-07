; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/deltasplit75/extr_matrix.c__matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/deltasplit75/extr_matrix.c__matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isLeftHand = common dso_local global i64 0, align 8
@ROWS_PER_HAND = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8
@DEBOUNCE = common dso_local global i64 0, align 8
@MATRIX_COLS = common dso_local global i64 0, align 8
@debouncing = common dso_local global i32 0, align 4
@debouncing_time = common dso_local global i32 0, align 4
@matrix_debouncing = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* @isLeftHand, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %8

6:                                                ; preds = %0
  %7 = load i64, i64* @ROWS_PER_HAND, align 8
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i64 [ 0, %5 ], [ %7, %6 ]
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %11

11:                                               ; preds = %22, %8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @ROWS_PER_HAND, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32*, i32** @matrix, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @read_cols_on_row(i32* %19, i64 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load i64, i64* %2, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %2, align 8
  br label %11

25:                                               ; preds = %11
  ret i64 1
}

declare dso_local i32 @read_cols_on_row(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
