; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/pegasushoof/2015/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/pegasushoof/2015/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_COLS = common dso_local global i64 0, align 8
@matrix_debouncing = common dso_local global i64* null, align 8
@matrix = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %7

7:                                                ; preds = %56, %0
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @MATRIX_COLS, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %59

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @select_row(i64 %12)
  %14 = call i32 @wait_us(i32 30)
  %15 = call i64 (...) @read_cols()
  store i64 %15, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %52, %11
  %17 = load i64, i64* %4, align 8
  %18 = call i64 (...) @matrix_rows()
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load i64*, i64** @matrix_debouncing, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %2, align 8
  %26 = shl i64 1, %25
  %27 = and i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = and i64 %29, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %1, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %1, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %20
  %44 = load i64, i64* %2, align 8
  %45 = shl i64 1, %44
  %46 = load i64*, i64** @matrix_debouncing, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = xor i64 %49, %45
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %43, %20
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %4, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %16

55:                                               ; preds = %16
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %2, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %2, align 8
  br label %7

59:                                               ; preds = %7
  %60 = load i64*, i64** @matrix_debouncing, align 8
  %61 = load i32, i32* @matrix, align 4
  %62 = call i64 (...) @matrix_rows()
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @debounce(i64* %60, i32 %61, i64 %62, i32 %63)
  %65 = call i32 (...) @matrix_scan_quantum()
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  ret i64 %67
}

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i64 @read_cols(...) #1

declare dso_local i64 @matrix_rows(...) #1

declare dso_local i32 @debounce(i64*, i32, i64, i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
