; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @expander_scan()
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %40, %0
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @MATRIX_ROWS, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %5
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @select_row(i64 %10)
  %12 = call i32 @wait_us(i32 30)
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @debounce_mask(i64 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @read_cols(i64 %15)
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %16, %17
  %19 = load i32*, i32** @matrix, align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %2, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = or i32 %18, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32*, i32** @matrix, align 8
  %29 = load i64, i64* %1, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %27, %31
  %33 = load i64, i64* %1, align 8
  %34 = call i32 @debounce_report(i32 %32, i64 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32*, i32** @matrix, align 8
  %37 = load i64, i64* %1, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = call i32 (...) @unselect_rows()
  br label %40

40:                                               ; preds = %9
  %41 = load i64, i64* %1, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %1, align 8
  br label %5

43:                                               ; preds = %5
  %44 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @expander_scan(...) #1

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i32 @debounce_mask(i64) #1

declare dso_local i32 @read_cols(i64) #1

declare dso_local i32 @debounce_report(i32, i64) #1

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
