; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/treadstone48/rev1/extr_matrix.c__matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/treadstone48/rev1/extr_matrix.c__matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isLeftHand = common dso_local global i64 0, align 8
@ROWS_PER_HAND = common dso_local global i64 0, align 8
@matrix_debouncing = common dso_local global i64* null, align 8
@DEBOUNCE = common dso_local global i64 0, align 8
@debouncing = common dso_local global i64 0, align 8
@matrix = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @isLeftHand, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %10

8:                                                ; preds = %0
  %9 = load i64, i64* @ROWS_PER_HAND, align 8
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i64 [ 0, %7 ], [ %9, %8 ]
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %13

13:                                               ; preds = %42, %10
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @ROWS_PER_HAND, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @select_row(i64 %18)
  %20 = call i32 @_delay_us(i32 30)
  %21 = call i64 (...) @read_cols()
  store i64 %21, i64* %3, align 8
  %22 = load i64*, i64** @matrix_debouncing, align 8
  %23 = load i64, i64* %2, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = getelementptr inbounds i64, i64* %22, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %17
  %32 = load i64, i64* %3, align 8
  %33 = load i64*, i64** @matrix_debouncing, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = getelementptr inbounds i64, i64* %33, i64 %37
  store i64 %32, i64* %38, align 8
  %39 = load i64, i64* @DEBOUNCE, align 8
  store i64 %39, i64* @debouncing, align 8
  br label %40

40:                                               ; preds = %31, %17
  %41 = call i32 (...) @unselect_rows()
  br label %42

42:                                               ; preds = %40
  %43 = load i64, i64* %2, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %2, align 8
  br label %13

45:                                               ; preds = %13
  %46 = load i64, i64* @debouncing, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = load i64, i64* @debouncing, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* @debouncing, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @_delay_ms(i32 1)
  br label %77

54:                                               ; preds = %48
  store i64 0, i64* %4, align 8
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @ROWS_PER_HAND, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i64*, i64** @matrix_debouncing, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = getelementptr inbounds i64, i64* %60, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** @matrix, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = getelementptr inbounds i64, i64* %67, i64 %71
  store i64 %66, i64* %72, align 8
  br label %73

73:                                               ; preds = %59
  %74 = load i64, i64* %4, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %4, align 8
  br label %55

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %45
  ret i64 1
}

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i64 @read_cols(...) #1

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @_delay_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
