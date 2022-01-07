; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/fortitude60/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/fortitude60/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TXLED1 = common dso_local global i32 0, align 4
@error_count = common dso_local global i64 0, align 8
@ERROR_DISCONNECT_COUNT = common dso_local global i64 0, align 8
@isLeftHand = common dso_local global i64 0, align 8
@ROWS_PER_HAND = common dso_local global i32 0, align 4
@matrix = common dso_local global i64* null, align 8
@TXLED0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @_matrix_scan()
  store i32 %4, i32* %1, align 4
  %5 = call i64 (...) @serial_transaction()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %0
  %8 = load i32, i32* @TXLED1, align 4
  %9 = load i64, i64* @error_count, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* @error_count, align 8
  %11 = load i64, i64* @error_count, align 8
  %12 = load i64, i64* @ERROR_DISCONNECT_COUNT, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %7
  %15 = load i64, i64* @isLeftHand, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @ROWS_PER_HAND, align 4
  br label %20

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  store i32 %21, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %33, %20
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ROWS_PER_HAND, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i64*, i64** @matrix, align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %27, i64 %31
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %22

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %7
  br label %40

38:                                               ; preds = %0
  %39 = load i32, i32* @TXLED0, align 4
  store i64 0, i64* @error_count, align 8
  br label %40

40:                                               ; preds = %38, %37
  %41 = call i32 (...) @matrix_scan_quantum()
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @_matrix_scan(...) #1

declare dso_local i64 @serial_transaction(...) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
