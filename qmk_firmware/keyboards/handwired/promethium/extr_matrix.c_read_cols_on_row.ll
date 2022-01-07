; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/promethium/extr_matrix.c_read_cols_on_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/promethium/extr_matrix.c_read_cols_on_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tp_pins = common dso_local global i64* null, align 8
@ROW_SHIFTER = common dso_local global i64 0, align 8
@MATRIX_COLS = common dso_local global i64 0, align 8
@col_pins = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @read_cols_on_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cols_on_row(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 8
  br i1 %21, label %22, label %63

22:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %52, %22
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  %27 = load i64*, i64** @tp_pins, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = lshr i64 %31, 4
  %33 = call i64 @_SFR_IO8(i64 %32)
  %34 = load i64, i64* %8, align 8
  %35 = and i64 %34, 15
  %36 = call i64 @_BV(i64 %35)
  %37 = and i64 %33, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %45

41:                                               ; preds = %26
  %42 = load i64, i64* @ROW_SHIFTER, align 8
  %43 = load i64, i64* %7, align 8
  %44 = shl i64 %42, %43
  br label %45

45:                                               ; preds = %41, %40
  %46 = phi i64 [ 0, %40 ], [ %44, %41 ]
  %47 = load i64*, i64** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %50, %46
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %23

55:                                               ; preds = %23
  %56 = load i64, i64* %6, align 8
  %57 = load i64*, i64** %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %110

63:                                               ; preds = %2
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @select_row(i64 %64)
  %66 = call i32 @_delay_us(i32 5)
  store i64 0, i64* %10, align 8
  br label %67

67:                                               ; preds = %97, %63
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @MATRIX_COLS, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load i64*, i64** @col_pins, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = lshr i64 %76, 4
  %78 = call i64 @_SFR_IO8(i64 %77)
  %79 = load i64, i64* %11, align 8
  %80 = and i64 %79, 15
  %81 = call i64 @_BV(i64 %80)
  %82 = and i64 %78, %81
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %90

86:                                               ; preds = %71
  %87 = load i64, i64* @ROW_SHIFTER, align 8
  %88 = load i64, i64* %10, align 8
  %89 = shl i64 %87, %88
  br label %90

90:                                               ; preds = %86, %85
  %91 = phi i64 [ 0, %85 ], [ %89, %86 ]
  %92 = load i64*, i64** %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = or i64 %95, %91
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %90
  %98 = load i64, i64* %10, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %10, align 8
  br label %67

100:                                              ; preds = %67
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @unselect_row(i64 %101)
  %103 = load i64, i64* %6, align 8
  %104 = load i64*, i64** %4, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %103, %107
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %100, %55
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @_SFR_IO8(i64) #1

declare dso_local i64 @_BV(i64) #1

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i32 @unselect_row(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
