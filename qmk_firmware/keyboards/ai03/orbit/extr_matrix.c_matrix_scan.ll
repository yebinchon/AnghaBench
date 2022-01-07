; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ai03/orbit/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ai03/orbit/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_scan.error_count = internal global i64 0, align 8
@matrix = common dso_local global i64* null, align 8
@thatHand = common dso_local global i32 0, align 4
@ERROR_DISCONNECT_COUNT = common dso_local global i64 0, align 8
@ROWS_PER_HAND = common dso_local global i32 0, align 4
@thisHand = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i64 (...) @_matrix_scan()
  store i64 %3, i64* %1, align 8
  %4 = call i64 (...) @is_keyboard_master()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %0
  %7 = load i64*, i64** @matrix, align 8
  %8 = load i32, i32* @thatHand, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = call i32 @transport_master(i64* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %6
  %14 = load i64, i64* @matrix_scan.error_count, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* @matrix_scan.error_count, align 8
  %16 = load i64, i64* @matrix_scan.error_count, align 8
  %17 = load i64, i64* @ERROR_DISCONNECT_COUNT, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @ROWS_PER_HAND, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i64*, i64** @matrix, align 8
  %26 = load i32, i32* @thatHand, align 4
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %25, i64 %29
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %20

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %13
  br label %37

36:                                               ; preds = %6
  store i64 0, i64* @matrix_scan.error_count, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = call i32 (...) @matrix_scan_quantum()
  br label %46

39:                                               ; preds = %0
  %40 = load i64*, i64** @matrix, align 8
  %41 = load i32, i32* @thisHand, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = call i32 @transport_slave(i64* %43)
  %45 = call i32 (...) @matrix_slave_scan_user()
  br label %46

46:                                               ; preds = %39, %37
  %47 = load i64, i64* %1, align 8
  ret i64 %47
}

declare dso_local i64 @_matrix_scan(...) #1

declare dso_local i64 @is_keyboard_master(...) #1

declare dso_local i32 @transport_master(i64*) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

declare dso_local i32 @transport_slave(i64*) #1

declare dso_local i32 @matrix_slave_scan_user(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
