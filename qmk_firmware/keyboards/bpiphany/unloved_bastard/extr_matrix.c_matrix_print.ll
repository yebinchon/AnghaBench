; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/unloved_bastard/extr_matrix.c_matrix_print.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/unloved_bastard/extr_matrix.c_matrix_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"\0Ar\\c ABCDEFGHIJKLMNOPQR\0A\00", align 1
@MATRIX_ROWS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%02X: \00", align 1
@MATRIX_COLS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_print() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %37, %0
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @MATRIX_ROWS, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @matrix_get_row(i64 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i64, i64* %1, align 8
  %14 = trunc i64 %13 to i8
  %15 = call i32 @xprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8 signext %14)
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %32, %10
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @MATRIX_COLS, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = load i64, i64* %3, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 1, %23
  %25 = and i32 %21, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 42, i32 46
  %30 = trunc i32 %29 to i8
  %31 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8 signext %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i64, i64* %3, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %16

35:                                               ; preds = %16
  %36 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35
  %38 = load i64, i64* %1, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %1, align 8
  br label %6

40:                                               ; preds = %6
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @matrix_get_row(i64) #1

declare dso_local i32 @xprintf(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
