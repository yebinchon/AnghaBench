; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23018_status = common dso_local global i64 0, align 8
@mcp23018_reset_loop = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"trying to reset mcp23018\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"left side not responding\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"left side attached\0A\00", align 1
@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix_debouncing = common dso_local global i64* null, align 8
@debouncing = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"bounce!: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DEBOUNCE = common dso_local global i64 0, align 8
@matrix = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @mcp23018_status, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %0
  %7 = load i64, i64* @mcp23018_reset_loop, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* @mcp23018_reset_loop, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = call i64 (...) @init_mcp23018()
  store i64 %12, i64* @mcp23018_status, align 8
  %13 = load i64, i64* @mcp23018_status, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %20

17:                                               ; preds = %10
  %18 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 (...) @frenchdev_blink_all_leds()
  br label %20

20:                                               ; preds = %17, %15
  br label %21

21:                                               ; preds = %20, %6
  br label %22

22:                                               ; preds = %21, %0
  store i64 0, i64* %1, align 8
  br label %23

23:                                               ; preds = %55, %22
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @MATRIX_ROWS, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @select_row(i64 %28)
  %30 = call i32 @wait_us(i32 30)
  %31 = load i64, i64* %1, align 8
  %32 = call i64 @read_cols(i64 %31)
  store i64 %32, i64* %2, align 8
  %33 = load i64*, i64** @matrix_debouncing, align 8
  %34 = load i64, i64* %1, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %2, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %27
  %40 = load i64, i64* %2, align 8
  %41 = load i64*, i64** @matrix_debouncing, align 8
  %42 = load i64, i64* %1, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* @debouncing, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = call i32 @debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i64, i64* @debouncing, align 8
  %49 = call i32 @debug_hex(i64 %48)
  %50 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i64, i64* @DEBOUNCE, align 8
  store i64 %52, i64* @debouncing, align 8
  br label %53

53:                                               ; preds = %51, %27
  %54 = call i32 (...) @unselect_rows()
  br label %55

55:                                               ; preds = %53
  %56 = load i64, i64* %1, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %1, align 8
  br label %23

58:                                               ; preds = %23
  %59 = load i64, i64* @debouncing, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = load i64, i64* @debouncing, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* @debouncing, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @wait_us(i32 1)
  br label %84

67:                                               ; preds = %61
  store i64 0, i64* %3, align 8
  br label %68

68:                                               ; preds = %80, %67
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @MATRIX_ROWS, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i64*, i64** @matrix_debouncing, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** @matrix, align 8
  %78 = load i64, i64* %3, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %76, i64* %79, align 8
  br label %80

80:                                               ; preds = %72
  %81 = load i64, i64* %3, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %3, align 8
  br label %68

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %65
  br label %85

85:                                               ; preds = %84, %58
  %86 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @print(i8*) #1

declare dso_local i64 @init_mcp23018(...) #1

declare dso_local i32 @frenchdev_blink_all_leds(...) #1

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i64 @read_cols(i64) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @debug_hex(i64) #1

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
