; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/extr_matrix.c_matrix_key_count.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/extr_matrix.c_matrix_key_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_key_count() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = load i64, i64* @MATRIX_ROWS, align 8
  %4 = sub nsw i64 %3, 1
  store i64 %4, i64* %2, align 8
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i64, i64* %2, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @matrix_get_row(i64 %9)
  %11 = call i64 @bitpop16(i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %8
  %17 = load i64, i64* %2, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %2, align 8
  br label %5

19:                                               ; preds = %5
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @bitpop16(i32) #1

declare dso_local i32 @matrix_get_row(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
