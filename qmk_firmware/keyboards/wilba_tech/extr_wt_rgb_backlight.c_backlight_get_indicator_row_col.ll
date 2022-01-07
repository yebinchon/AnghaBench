; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_get_indicator_row_col.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_rgb_backlight.c_backlight_get_indicator_row_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i32 0, align 4
@MATRIX_COLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_get_indicator_row_col(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 254
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %3
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  br label %49

19:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %46, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MATRIX_ROWS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MATRIX_COLS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  store i32 255, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @map_row_column_to_led(i32 %30, i32 %31, i32* %9)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %49

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %25

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %20

49:                                               ; preds = %15, %36, %20
  ret void
}

declare dso_local i32 @map_row_column_to_led(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
