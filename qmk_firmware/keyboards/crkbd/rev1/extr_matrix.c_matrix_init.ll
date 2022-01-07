; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/rev1/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/rev1/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix = common dso_local global i64* null, align 8
@matrix_debouncing = common dso_local global i64* null, align 8
@is_master = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @split_keyboard_setup()
  %3 = call i32 (...) @unselect_rows()
  %4 = call i32 (...) @init_cols()
  %5 = call i32 (...) @tx_rx_leds_init()
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %17, %0
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @MATRIX_ROWS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i64*, i64** @matrix, align 8
  %12 = load i64, i64* %1, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64 0, i64* %13, align 8
  %14 = load i64*, i64** @matrix_debouncing, align 8
  %15 = load i64, i64* %1, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %1, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %1, align 8
  br label %6

20:                                               ; preds = %6
  %21 = call i32 (...) @has_usb()
  store i32 %21, i32* @is_master, align 4
  %22 = call i32 (...) @matrix_init_quantum()
  ret void
}

declare dso_local i32 @split_keyboard_setup(...) #1

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @init_cols(...) #1

declare dso_local i32 @tx_rx_leds_init(...) #1

declare dso_local i32 @has_usb(...) #1

declare dso_local i32 @matrix_init_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
