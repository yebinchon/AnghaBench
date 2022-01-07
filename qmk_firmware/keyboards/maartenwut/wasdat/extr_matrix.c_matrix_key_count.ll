; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/maartenwut/wasdat/extr_matrix.c_matrix_key_count.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/maartenwut/wasdat/extr_matrix.c_matrix_key_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_key_count() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %12, %0
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @MATRIX_ROWS, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @matrix_bitpop(i64 %8)
  %10 = load i64, i64* %1, align 8
  %11 = add nsw i64 %10, %9
  store i64 %11, i64* %1, align 8
  br label %12

12:                                               ; preds = %7
  %13 = load i64, i64* %2, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %2, align 8
  br label %3

15:                                               ; preds = %3
  %16 = load i64, i64* %1, align 8
  ret i64 %16
}

declare dso_local i64 @matrix_bitpop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
