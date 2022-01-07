; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergoinu/extr_matrix.c_matrix_master_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergoinu/extr_matrix.c_matrix_master_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isLeftHand = common dso_local global i64 0, align 8
@ROWS_PER_HAND = common dso_local global i32 0, align 4
@matrix = common dso_local global i64* null, align 8
@serial_master_buffer = common dso_local global i64* null, align 8
@TXLED1 = common dso_local global i32 0, align 4
@error_count = common dso_local global i64 0, align 8
@ERROR_DISCONNECT_COUNT = common dso_local global i64 0, align 8
@TXLED0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_master_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @_matrix_scan()
  store i32 %6, i32* %1, align 4
  %7 = load i64, i64* @isLeftHand, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @ROWS_PER_HAND, align 4
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ 0, %9 ], [ %11, %10 ]
  store i32 %13, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %30, %12
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ROWS_PER_HAND, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i64*, i64** @matrix, align 8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %19, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** @serial_master_buffer, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 %25, i64* %29, align 8
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %14

33:                                               ; preds = %14
  %34 = call i64 (...) @serial_transaction()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load i32, i32* @TXLED1, align 4
  %38 = load i64, i64* @error_count, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* @error_count, align 8
  %40 = load i64, i64* @error_count, align 8
  %41 = load i64, i64* @ERROR_DISCONNECT_COUNT, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load i64, i64* @isLeftHand, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @ROWS_PER_HAND, align 4
  br label %49

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  store i32 %50, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %62, %49
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ROWS_PER_HAND, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i64*, i64** @matrix, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %56, i64 %60
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %51

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %36
  br label %69

67:                                               ; preds = %33
  %68 = load i32, i32* @TXLED0, align 4
  store i64 0, i64* @error_count, align 8
  br label %69

69:                                               ; preds = %67, %66
  %70 = call i32 (...) @matrix_scan_quantum()
  %71 = load i32, i32* %1, align 4
  ret i32 %71
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
