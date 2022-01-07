; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/zinc/rev1/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/zinc/rev1/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_enable = common dso_local global i32 0, align 4
@debug_matrix = common dso_local global i32 0, align 4
@debug_mouse = common dso_local global i32 0, align 4
@TX_RX_LED_INIT = common dso_local global i32 0, align 4
@TXLED0 = common dso_local global i32 0, align 4
@RXLED0 = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix = common dso_local global i64* null, align 8
@matrix_debouncing = common dso_local global i64* null, align 8
@is_master = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = alloca i64, align 8
  store i32 1, i32* @debug_enable, align 4
  store i32 1, i32* @debug_matrix, align 4
  store i32 1, i32* @debug_mouse, align 4
  %2 = call i32 (...) @unselect_rows()
  %3 = call i32 (...) @init_cols()
  %4 = load i32, i32* @TX_RX_LED_INIT, align 4
  %5 = load i32, i32* @TXLED0, align 4
  %6 = load i32, i32* @RXLED0, align 4
  store i64 0, i64* %1, align 8
  br label %7

7:                                                ; preds = %18, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @MATRIX_ROWS, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load i64*, i64** @matrix, align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  store i64 0, i64* %14, align 8
  %15 = load i64*, i64** @matrix_debouncing, align 8
  %16 = load i64, i64* %1, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %11
  %19 = load i64, i64* %1, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %1, align 8
  br label %7

21:                                               ; preds = %7
  %22 = call i32 (...) @has_usb()
  store i32 %22, i32* @is_master, align 4
  %23 = call i32 (...) @matrix_init_quantum()
  ret void
}

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @init_cols(...) #1

declare dso_local i32 @has_usb(...) #1

declare dso_local i32 @matrix_init_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
