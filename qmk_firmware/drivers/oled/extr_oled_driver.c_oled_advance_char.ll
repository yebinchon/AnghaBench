; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/oled/extr_oled_driver.c_oled_advance_char.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/oled/extr_oled_driver.c_oled_advance_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@oled_cursor = common dso_local global i32* null, align 8
@oled_buffer = common dso_local global i32* null, align 8
@OLED_FONT_WIDTH = common dso_local global i32 0, align 4
@oled_rotation_width = common dso_local global i64 0, align 8
@OLED_MATRIX_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oled_advance_char() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @oled_cursor, align 8
  %4 = load i32*, i32** @oled_buffer, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = ptrtoint i32* %3 to i64
  %7 = ptrtoint i32* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 4
  %10 = load i32, i32* @OLED_FONT_WIDTH, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %9, %11
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* @oled_rotation_width, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @oled_rotation_width, align 8
  %16 = urem i64 %14, %15
  %17 = sub i64 %13, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @OLED_FONT_WIDTH, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %0
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %1, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %1, align 8
  br label %27

27:                                               ; preds = %22, %0
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @OLED_MATRIX_SIZE, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i64 0, i64* %1, align 8
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32*, i32** @oled_buffer, align 8
  %34 = load i64, i64* %1, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** @oled_cursor, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
