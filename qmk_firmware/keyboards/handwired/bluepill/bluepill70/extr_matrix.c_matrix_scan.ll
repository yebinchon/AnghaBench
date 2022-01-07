; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/bluepill/bluepill70/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/bluepill/bluepill70/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix_debouncing = common dso_local global i64* null, align 8
@debouncing = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"bounce!: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DEBOUNCE = common dso_local global i64 0, align 8
@matrix = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %35, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @MATRIX_ROWS, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %38

8:                                                ; preds = %4
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @select_row(i64 %9)
  %11 = call i32 @wait_us(i32 30)
  %12 = call i64 (...) @read_cols()
  store i64 %12, i64* %2, align 8
  %13 = load i64*, i64** @matrix_debouncing, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %8
  %20 = load i64, i64* %2, align 8
  %21 = load i64*, i64** @matrix_debouncing, align 8
  %22 = load i64, i64* %1, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %20, i64* %23, align 8
  %24 = load i64, i64* @debouncing, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = call i32 @debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @debouncing, align 8
  %29 = call i32 @debug_hex(i64 %28)
  %30 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %19
  %32 = load i64, i64* @DEBOUNCE, align 8
  store i64 %32, i64* @debouncing, align 8
  br label %33

33:                                               ; preds = %31, %8
  %34 = call i32 (...) @unselect_rows()
  br label %35

35:                                               ; preds = %33
  %36 = load i64, i64* %1, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %1, align 8
  br label %4

38:                                               ; preds = %4
  %39 = load i64, i64* @debouncing, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = load i64, i64* @debouncing, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* @debouncing, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @wait_ms(i32 1)
  br label %64

47:                                               ; preds = %41
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @MATRIX_ROWS, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i64*, i64** @matrix_debouncing, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** @matrix, align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %52
  %61 = load i64, i64* %3, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %3, align 8
  br label %48

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %64, %38
  %66 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i64 @read_cols(...) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @debug_hex(i64) #1

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
