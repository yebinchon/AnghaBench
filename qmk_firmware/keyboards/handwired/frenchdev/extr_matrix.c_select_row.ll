; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/extr_matrix.c_select_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/extr_matrix.c_select_row.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_row(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = load i64, i64* @mcp23018_status, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %36

9:                                                ; preds = %5
  %10 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %11 = load i32, i32* @I2C_TIMEOUT, align 4
  %12 = call i64 @i2c_start(i32 %10, i32 %11)
  store i64 %12, i64* @mcp23018_status, align 8
  %13 = load i64, i64* @mcp23018_status, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %34

16:                                               ; preds = %9
  %17 = load i32, i32* @GPIOA, align 4
  %18 = load i32, i32* @I2C_TIMEOUT, align 4
  %19 = call i64 @i2c_write(i32 %17, i32 %18)
  store i64 %19, i64* @mcp23018_status, align 8
  %20 = load i64, i64* @mcp23018_status, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %34

23:                                               ; preds = %16
  %24 = load i32, i32* %2, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = and i32 255, %26
  %28 = load i32, i32* @I2C_TIMEOUT, align 4
  %29 = call i64 @i2c_write(i32 %27, i32 %28)
  store i64 %29, i64* @mcp23018_status, align 8
  %30 = load i64, i64* @mcp23018_status, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %32, %22, %15
  %35 = call i32 (...) @i2c_stop()
  br label %36

36:                                               ; preds = %34, %8
  br label %80

37:                                               ; preds = %1
  %38 = load i32, i32* %2, align 4
  switch i32 %38, label %79 [
    i32 8, label %39
    i32 9, label %44
    i32 10, label %49
    i32 11, label %54
    i32 12, label %59
    i32 13, label %64
    i32 14, label %69
    i32 15, label %74
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* @DDRB, align 4
  %41 = or i32 %40, 1
  store i32 %41, i32* @DDRB, align 4
  %42 = load i32, i32* @PORTB, align 4
  %43 = and i32 %42, -2
  store i32 %43, i32* @PORTB, align 4
  br label %79

44:                                               ; preds = %37
  %45 = load i32, i32* @DDRB, align 4
  %46 = or i32 %45, 2
  store i32 %46, i32* @DDRB, align 4
  %47 = load i32, i32* @PORTB, align 4
  %48 = and i32 %47, -3
  store i32 %48, i32* @PORTB, align 4
  br label %79

49:                                               ; preds = %37
  %50 = load i32, i32* @DDRB, align 4
  %51 = or i32 %50, 4
  store i32 %51, i32* @DDRB, align 4
  %52 = load i32, i32* @PORTB, align 4
  %53 = and i32 %52, -5
  store i32 %53, i32* @PORTB, align 4
  br label %79

54:                                               ; preds = %37
  %55 = load i32, i32* @DDRB, align 4
  %56 = or i32 %55, 8
  store i32 %56, i32* @DDRB, align 4
  %57 = load i32, i32* @PORTB, align 4
  %58 = and i32 %57, -9
  store i32 %58, i32* @PORTB, align 4
  br label %79

59:                                               ; preds = %37
  %60 = load i32, i32* @DDRD, align 4
  %61 = or i32 %60, 4
  store i32 %61, i32* @DDRD, align 4
  %62 = load i32, i32* @PORTD, align 4
  %63 = and i32 %62, -9
  store i32 %63, i32* @PORTD, align 4
  br label %79

64:                                               ; preds = %37
  %65 = load i32, i32* @DDRD, align 4
  %66 = or i32 %65, 8
  store i32 %66, i32* @DDRD, align 4
  %67 = load i32, i32* @PORTD, align 4
  %68 = and i32 %67, -9
  store i32 %68, i32* @PORTD, align 4
  br label %79

69:                                               ; preds = %37
  %70 = load i32, i32* @DDRC, align 4
  %71 = or i32 %70, 64
  store i32 %71, i32* @DDRC, align 4
  %72 = load i32, i32* @PORTC, align 4
  %73 = and i32 %72, -65
  store i32 %73, i32* @PORTC, align 4
  br label %79

74:                                               ; preds = %37
  %75 = load i32, i32* @DDRC, align 4
  %76 = or i32 %75, 128
  store i32 %76, i32* @DDRC, align 4
  %77 = load i32, i32* @PORTC, align 4
  %78 = and i32 %77, -129
  store i32 %78, i32* @PORTC, align 4
  br label %79

79:                                               ; preds = %37, %74, %69, %64, %59, %54, %49, %44, %39
  br label %80

80:                                               ; preds = %79, %36
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
