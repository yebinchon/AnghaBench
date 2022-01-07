; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/oled/extr_oled_driver.c_calc_bounds.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/oled/extr_oled_driver.c_calc_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OLED_BLOCK_SIZE = common dso_local global i32 0, align 4
@OLED_DISPLAY_WIDTH = common dso_local global i32 0, align 4
@PAM_PAGE_ADDR = common dso_local global i32 0, align 4
@PAM_SETCOLUMN_LSB = common dso_local global i32 0, align 4
@OLED_COLUMN_OFFSET = common dso_local global i32 0, align 4
@PAM_SETCOLUMN_MSB = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @calc_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_bounds(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @OLED_BLOCK_SIZE, align 4
  %8 = load i32, i32* %3, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* @OLED_DISPLAY_WIDTH, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @OLED_BLOCK_SIZE, align 4
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* @OLED_DISPLAY_WIDTH, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @PAM_PAGE_ADDR, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %17, %18
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @PAM_SETCOLUMN_LSB, align 4
  %23 = load i32, i32* @OLED_COLUMN_OFFSET, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = and i32 %25, 15
  %27 = or i32 %22, %26
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @PAM_SETCOLUMN_MSB, align 4
  %31 = load i32, i32* @OLED_COLUMN_OFFSET, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = ashr i32 %33, 4
  %35 = and i32 %34, 15
  %36 = or i32 %30, %35
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @NOP, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @NOP, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @NOP, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  store i32 %45, i32* %47, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
