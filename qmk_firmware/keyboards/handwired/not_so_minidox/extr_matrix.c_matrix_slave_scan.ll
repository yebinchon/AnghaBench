; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/not_so_minidox/extr_matrix.c_matrix_slave_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/not_so_minidox/extr_matrix.c_matrix_slave_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isLeftHand = common dso_local global i64 0, align 8
@MATRIX_ROWS = common dso_local global i32 0, align 4
@ROWS_PER_HAND = common dso_local global i32 0, align 4
@matrix = common dso_local global i8** null, align 8
@serial_slave_buffer = common dso_local global i8** null, align 8
@i2c_slave_buffer = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_slave_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @_matrix_scan()
  %4 = load i64, i64* @isLeftHand, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @MATRIX_ROWS, align 4
  %9 = sdiv i32 %8, 2
  br label %10

10:                                               ; preds = %7, %6
  %11 = phi i32 [ 0, %6 ], [ %9, %7 ]
  store i32 %11, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %28, %10
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @ROWS_PER_HAND, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i8**, i8*** @matrix, align 8
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %17, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** @serial_slave_buffer, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* %23, i8** %27, align 8
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %12

31:                                               ; preds = %12
  ret void
}

declare dso_local i32 @_matrix_scan(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
