; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergotaco/extr_matrix.c_select_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergotaco/extr_matrix.c_select_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23018_status = common dso_local global i64 0, align 8
@I2C_ADDR_WRITE = common dso_local global i32 0, align 4
@ERGODOX_EZ_I2C_TIMEOUT = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4
@COL6 = common dso_local global i32 0, align 4
@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@COL7 = common dso_local global i32 0, align 4
@COL8 = common dso_local global i32 0, align 4
@COL9 = common dso_local global i32 0, align 4
@COL10 = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@COL11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_row(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 6
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = load i64, i64* @mcp23018_status, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %35

9:                                                ; preds = %5
  %10 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %11 = load i32, i32* @ERGODOX_EZ_I2C_TIMEOUT, align 4
  %12 = call i64 @i2c_start(i32 %10, i32 %11)
  store i64 %12, i64* @mcp23018_status, align 8
  %13 = load i64, i64* @mcp23018_status, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %33

16:                                               ; preds = %9
  %17 = load i32, i32* @GPIOA, align 4
  %18 = load i32, i32* @ERGODOX_EZ_I2C_TIMEOUT, align 4
  %19 = call i64 @i2c_write(i32 %17, i32 %18)
  store i64 %19, i64* @mcp23018_status, align 8
  %20 = load i64, i64* @mcp23018_status, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %33

23:                                               ; preds = %16
  %24 = load i32, i32* %2, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @ERGODOX_EZ_I2C_TIMEOUT, align 4
  %28 = call i64 @i2c_write(i32 %26, i32 %27)
  store i64 %28, i64* @mcp23018_status, align 8
  %29 = load i64, i64* @mcp23018_status, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %31, %22, %15
  %34 = call i32 (...) @i2c_stop()
  br label %35

35:                                               ; preds = %33, %8
  br label %87

36:                                               ; preds = %1
  %37 = load i32, i32* %2, align 4
  switch i32 %37, label %86 [
    i32 6, label %38
    i32 7, label %46
    i32 8, label %54
    i32 9, label %62
    i32 10, label %70
    i32 11, label %78
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @COL6, align 4
  %40 = load i32, i32* @DDRB, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @DDRB, align 4
  %42 = load i32, i32* @COL6, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* @PORTB, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* @PORTB, align 4
  br label %86

46:                                               ; preds = %36
  %47 = load i32, i32* @COL7, align 4
  %48 = load i32, i32* @DDRB, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @DDRB, align 4
  %50 = load i32, i32* @COL7, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* @PORTB, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* @PORTB, align 4
  br label %86

54:                                               ; preds = %36
  %55 = load i32, i32* @COL8, align 4
  %56 = load i32, i32* @DDRB, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* @DDRB, align 4
  %58 = load i32, i32* @COL8, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* @PORTB, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* @PORTB, align 4
  br label %86

62:                                               ; preds = %36
  %63 = load i32, i32* @COL9, align 4
  %64 = load i32, i32* @DDRB, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* @DDRB, align 4
  %66 = load i32, i32* @COL9, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* @PORTB, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* @PORTB, align 4
  br label %86

70:                                               ; preds = %36
  %71 = load i32, i32* @COL10, align 4
  %72 = load i32, i32* @DDRD, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* @DDRD, align 4
  %74 = load i32, i32* @COL10, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* @PORTD, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* @PORTD, align 4
  br label %86

78:                                               ; preds = %36
  %79 = load i32, i32* @COL11, align 4
  %80 = load i32, i32* @DDRD, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* @DDRD, align 4
  %82 = load i32, i32* @COL11, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* @PORTD, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* @PORTD, align 4
  br label %86

86:                                               ; preds = %36, %78, %70, %62, %54, %46, %38
  br label %87

87:                                               ; preds = %86, %35
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
