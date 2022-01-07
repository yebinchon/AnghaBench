; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hotdox/extr_matrix.c_init_cols.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hotdox/extr_matrix.c_init_cols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PB0 = common dso_local global i32 0, align 4
@PB1 = common dso_local global i32 0, align 4
@PB2 = common dso_local global i32 0, align 4
@PB3 = common dso_local global i32 0, align 4
@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@PD2 = common dso_local global i32 0, align 4
@PD3 = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@PC6 = common dso_local global i32 0, align 4
@DDRC = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_cols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cols() #0 {
  %1 = load i32, i32* @PB0, align 4
  %2 = shl i32 1, %1
  %3 = load i32, i32* @PB1, align 4
  %4 = shl i32 1, %3
  %5 = or i32 %2, %4
  %6 = load i32, i32* @PB2, align 4
  %7 = shl i32 1, %6
  %8 = or i32 %5, %7
  %9 = load i32, i32* @PB3, align 4
  %10 = shl i32 1, %9
  %11 = or i32 %8, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* @DDRB, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* @DDRB, align 4
  %15 = load i32, i32* @PB0, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* @PB1, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @PB2, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @PB3, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @PORTB, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @PORTB, align 4
  %28 = load i32, i32* @PD2, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @PD3, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @DDRD, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* @DDRD, align 4
  %36 = load i32, i32* @PD2, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* @PD3, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load i32, i32* @PORTD, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* @PORTD, align 4
  %43 = load i32, i32* @PC6, align 4
  %44 = shl i32 1, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* @DDRC, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* @DDRC, align 4
  %48 = load i32, i32* @PC6, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* @PORTC, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @PORTC, align 4
  %52 = call i32 (...) @left_init()
  ret void
}

declare dso_local i32 @left_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
