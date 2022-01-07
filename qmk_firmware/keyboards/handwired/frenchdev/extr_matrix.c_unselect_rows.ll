; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/extr_matrix.c_unselect_rows.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/extr_matrix.c_unselect_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23018_status = common dso_local global i64 0, align 8
@I2C_ADDR_WRITE = common dso_local global i32 0, align 4
@I2C_TIMEOUT = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4
@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@DDRC = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unselect_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unselect_rows() #0 {
  %1 = load i64, i64* @mcp23018_status, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %27

4:                                                ; preds = %0
  %5 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %6 = load i32, i32* @I2C_TIMEOUT, align 4
  %7 = call i64 @i2c_start(i32 %5, i32 %6)
  store i64 %7, i64* @mcp23018_status, align 8
  %8 = load i64, i64* @mcp23018_status, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  br label %25

11:                                               ; preds = %4
  %12 = load i32, i32* @GPIOA, align 4
  %13 = load i32, i32* @I2C_TIMEOUT, align 4
  %14 = call i64 @i2c_write(i32 %12, i32 %13)
  store i64 %14, i64* @mcp23018_status, align 8
  %15 = load i64, i64* @mcp23018_status, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %25

18:                                               ; preds = %11
  %19 = load i32, i32* @I2C_TIMEOUT, align 4
  %20 = call i64 @i2c_write(i32 255, i32 %19)
  store i64 %20, i64* @mcp23018_status, align 8
  %21 = load i64, i64* @mcp23018_status, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %23, %17, %10
  %26 = call i32 (...) @i2c_stop()
  br label %27

27:                                               ; preds = %25, %3
  %28 = load i32, i32* @DDRB, align 4
  %29 = and i32 %28, -16
  store i32 %29, i32* @DDRB, align 4
  %30 = load i32, i32* @PORTB, align 4
  %31 = and i32 %30, -16
  store i32 %31, i32* @PORTB, align 4
  %32 = load i32, i32* @DDRD, align 4
  %33 = and i32 %32, -13
  store i32 %33, i32* @DDRD, align 4
  %34 = load i32, i32* @PORTD, align 4
  %35 = and i32 %34, -13
  store i32 %35, i32* @PORTD, align 4
  %36 = load i32, i32* @DDRC, align 4
  %37 = and i32 %36, -193
  store i32 %37, i32* @DDRC, align 4
  %38 = load i32, i32* @PORTC, align 4
  %39 = and i32 %38, -193
  store i32 %39, i32* @PORTC, align 4
  ret void
}

declare dso_local i64 @i2c_start(i32, i32) #1

declare dso_local i64 @i2c_write(i32, i32) #1

declare dso_local i32 @i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
