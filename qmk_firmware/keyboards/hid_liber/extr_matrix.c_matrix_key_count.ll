; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hid_liber/extr_matrix.c_matrix_key_count.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hid_liber/extr_matrix.c_matrix_key_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@MATRIX_COLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_key_count() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @MATRIX_ROWS, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MATRIX_COLS, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @matrix_is_on(i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* %1, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %18, %13
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %3, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %9

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %2, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %2, align 8
  br label %4

29:                                               ; preds = %4
  %30 = load i64, i64* %1, align 8
  ret i64 %30
}

declare dso_local i64 @matrix_is_on(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
