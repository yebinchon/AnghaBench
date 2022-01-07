; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/oled/extr_oled_driver.c_oled_advance_page.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/oled/extr_oled_driver.c_oled_advance_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@oled_cursor = common dso_local global i32* null, align 8
@oled_buffer = common dso_local global i32* null, align 8
@oled_rotation_width = common dso_local global i64 0, align 8
@OLED_FONT_WIDTH = common dso_local global i64 0, align 8
@OLED_MATRIX_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oled_advance_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32*, i32** @oled_cursor, align 8
  %6 = load i32*, i32** @oled_buffer, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = ptrtoint i32* %5 to i64
  %9 = ptrtoint i32* %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 4
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* @oled_rotation_width, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @oled_rotation_width, align 8
  %15 = urem i64 %13, %14
  %16 = sub i64 %12, %15
  store i64 %16, i64* %4, align 8
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @OLED_FONT_WIDTH, align 8
  %22 = udiv i64 %20, %21
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %27, %19
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %4, align 8
  %26 = icmp ne i64 %24, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @oled_write_char(i8 signext 32, i32 0)
  br label %23

29:                                               ; preds = %23
  br label %43

30:                                               ; preds = %1
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* @OLED_MATRIX_SIZE, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32*, i32** @oled_buffer, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %39, %40
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32* %42, i32** @oled_cursor, align 8
  br label %43

43:                                               ; preds = %37, %29
  ret void
}

declare dso_local i32 @oled_write_char(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
