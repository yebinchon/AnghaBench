; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/winkeyless/bminiex/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/winkeyless/bminiex/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@PINA = common dso_local global i32 0, align 4
@PINC = common dso_local global i32 0, align 4
@PIND = common dso_local global i32 0, align 4
@PIND7 = common dso_local global i32 0, align 4
@matrix_debouncing = common dso_local global i64* null, align 8
@DEBOUNCE = common dso_local global i64 0, align 8
@debouncing = common dso_local global i64 0, align 8
@matrix = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %42, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @MATRIX_ROWS, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @matrix_set_row_status(i64 %9)
  %11 = call i32 @_delay_us(i32 5)
  %12 = load i32, i32* @PINA, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %13, 255
  %15 = load i32, i32* @PINC, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %16, 255
  %18 = call i32 @bit_reverse(i32 %17)
  %19 = shl i32 %18, 8
  %20 = or i32 %14, %19
  %21 = load i32, i32* @PIND, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @PIND7, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = shl i32 %25, 7
  %27 = or i32 %20, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %2, align 8
  %29 = load i64*, i64** @matrix_debouncing, align 8
  %30 = load i64, i64* %1, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %2, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %8
  %36 = load i64, i64* %2, align 8
  %37 = load i64*, i64** @matrix_debouncing, align 8
  %38 = load i64, i64* %1, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %36, i64* %39, align 8
  %40 = load i64, i64* @DEBOUNCE, align 8
  store i64 %40, i64* @debouncing, align 8
  br label %41

41:                                               ; preds = %35, %8
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %1, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %1, align 8
  br label %4

45:                                               ; preds = %4
  %46 = load i64, i64* @debouncing, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = load i64, i64* @debouncing, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* @debouncing, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @_delay_ms(i32 1)
  br label %71

54:                                               ; preds = %48
  store i64 0, i64* %3, align 8
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @MATRIX_ROWS, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i64*, i64** @matrix_debouncing, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** @matrix, align 8
  %65 = load i64, i64* %3, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %59
  %68 = load i64, i64* %3, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %3, align 8
  br label %55

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %52
  br label %72

72:                                               ; preds = %71, %45
  %73 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @matrix_set_row_status(i64) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i32 @bit_reverse(i32) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
