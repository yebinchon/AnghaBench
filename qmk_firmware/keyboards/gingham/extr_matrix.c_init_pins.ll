; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gingham/extr_matrix.c_init_pins.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gingham/extr_matrix.c_init_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORT_EXPANDER_ADDRESS = common dso_local global i32 0, align 4
@MATRIX_COLS = common dso_local global i32 0, align 4
@col_pins = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pins() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @unselect_rows()
  store i32 7, i32* %1, align 4
  %4 = load i32, i32* @PORT_EXPANDER_ADDRESS, align 4
  %5 = shl i32 %4, 1
  %6 = call i32 @i2c_writeReg(i32 %5, i32 0, i32* %1, i32 1, i32 20)
  %7 = load i32, i32* @PORT_EXPANDER_ADDRESS, align 4
  %8 = shl i32 %7, 1
  %9 = call i32 @i2c_writeReg(i32 %8, i32 6, i32* %1, i32 1, i32 20)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %28, %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @MATRIX_COLS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 12
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32*, i32** @col_pins, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @setPinInputHigh(i32 %25)
  br label %27

27:                                               ; preds = %20, %17, %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %10

31:                                               ; preds = %10
  ret void
}

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @i2c_writeReg(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @setPinInputHigh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
