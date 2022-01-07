; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/georgi/extr_matrix.c_select_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/georgi/extr_matrix.c_select_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23018_status = common dso_local global i64 0, align 8
@I2C_ADDR_WRITE = common dso_local global i32 0, align 4
@ERGODOX_EZ_I2C_TIMEOUT = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4
@COL7 = common dso_local global i32 0, align 4
@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@COL8 = common dso_local global i32 0, align 4
@COL9 = common dso_local global i32 0, align 4
@COL10 = common dso_local global i32 0, align 4
@COL11 = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@COL12 = common dso_local global i32 0, align 4
@COL13 = common dso_local global i32 0, align 4
@DDRC = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_row(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 7
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = load i64, i64* @mcp23018_status, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %36

9:                                                ; preds = %5
  %10 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %11 = load i32, i32* @ERGODOX_EZ_I2C_TIMEOUT, align 4
  %12 = call i64 @i2c_start(i32 %10, i32 %11)
  store i64 %12, i64* @mcp23018_status, align 8
  %13 = load i64, i64* @mcp23018_status, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %34

16:                                               ; preds = %9
  %17 = load i32, i32* @GPIOA, align 4
  %18 = load i32, i32* @ERGODOX_EZ_I2C_TIMEOUT, align 4
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
  %28 = load i32, i32* @ERGODOX_EZ_I2C_TIMEOUT, align 4
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
  br label %96

37:                                               ; preds = %1
  %38 = load i32, i32* %2, align 4
  switch i32 %38, label %95 [
    i32 7, label %39
    i32 8, label %47
    i32 9, label %55
    i32 10, label %63
    i32 11, label %71
    i32 12, label %79
    i32 13, label %87
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* @COL7, align 4
  %41 = load i32, i32* @DDRB, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* @DDRB, align 4
  %43 = load i32, i32* @COL7, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* @PORTB, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* @PORTB, align 4
  br label %95

47:                                               ; preds = %37
  %48 = load i32, i32* @COL8, align 4
  %49 = load i32, i32* @DDRB, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* @DDRB, align 4
  %51 = load i32, i32* @COL8, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* @PORTB, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* @PORTB, align 4
  br label %95

55:                                               ; preds = %37
  %56 = load i32, i32* @COL9, align 4
  %57 = load i32, i32* @DDRB, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* @DDRB, align 4
  %59 = load i32, i32* @COL9, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* @PORTB, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* @PORTB, align 4
  br label %95

63:                                               ; preds = %37
  %64 = load i32, i32* @COL10, align 4
  %65 = load i32, i32* @DDRB, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* @DDRB, align 4
  %67 = load i32, i32* @COL10, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* @PORTB, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* @PORTB, align 4
  br label %95

71:                                               ; preds = %37
  %72 = load i32, i32* @COL11, align 4
  %73 = load i32, i32* @DDRD, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* @DDRD, align 4
  %75 = load i32, i32* @COL11, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* @PORTD, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* @PORTD, align 4
  br label %95

79:                                               ; preds = %37
  %80 = load i32, i32* @COL12, align 4
  %81 = load i32, i32* @DDRD, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* @DDRD, align 4
  %83 = load i32, i32* @COL12, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* @PORTD, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* @PORTD, align 4
  br label %95

87:                                               ; preds = %37
  %88 = load i32, i32* @COL13, align 4
  %89 = load i32, i32* @DDRC, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* @DDRC, align 4
  %91 = load i32, i32* @COL13, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* @PORTC, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* @PORTC, align 4
  br label %95

95:                                               ; preds = %37, %87, %79, %71, %63, %55, %47, %39
  br label %96

96:                                               ; preds = %95, %36
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
