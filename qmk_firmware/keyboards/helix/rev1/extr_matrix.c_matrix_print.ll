; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev1/extr_matrix.c_matrix_print.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev1/extr_matrix.c_matrix_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"\0Ar/c 0123456789ABCDEF\0A\00", align 1
@MATRIX_ROWS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_print() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %15, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @MATRIX_ROWS, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @phex(i64 %8)
  %10 = call i32 @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @matrix_get_row(i64 %11)
  %13 = call i32 @pbin_reverse16(i32 %12)
  %14 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %15

15:                                               ; preds = %7
  %16 = load i64, i64* %1, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %3

18:                                               ; preds = %3
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @phex(i64) #1

declare dso_local i32 @pbin_reverse16(i32) #1

declare dso_local i32 @matrix_get_row(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
