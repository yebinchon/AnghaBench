; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_matrix.c_init_cols.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_matrix.c_init_cols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PE6 = common dso_local global i32 0, align 4
@DDRE = common dso_local global i32 0, align 4
@PORTE = common dso_local global i32 0, align 4
@PD2 = common dso_local global i32 0, align 4
@PD3 = common dso_local global i32 0, align 4
@PD4 = common dso_local global i32 0, align 4
@PD7 = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@PC6 = common dso_local global i32 0, align 4
@DDRC = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@PB4 = common dso_local global i32 0, align 4
@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_cols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cols() #0 {
  %1 = load i32, i32* @PE6, align 4
  %2 = shl i32 1, %1
  %3 = xor i32 %2, -1
  %4 = load i32, i32* @DDRE, align 4
  %5 = and i32 %4, %3
  store i32 %5, i32* @DDRE, align 4
  %6 = load i32, i32* @PE6, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @PORTE, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* @PORTE, align 4
  %10 = load i32, i32* @PD2, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @PD3, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = load i32, i32* @PD4, align 4
  %16 = shl i32 1, %15
  %17 = or i32 %14, %16
  %18 = load i32, i32* @PD7, align 4
  %19 = shl i32 1, %18
  %20 = or i32 %17, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @DDRD, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* @DDRD, align 4
  %24 = load i32, i32* @PD2, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* @PD3, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @PD4, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load i32, i32* @PD7, align 4
  %33 = shl i32 1, %32
  %34 = or i32 %31, %33
  %35 = load i32, i32* @PORTD, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* @PORTD, align 4
  %37 = load i32, i32* @PC6, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @DDRC, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* @DDRC, align 4
  %42 = load i32, i32* @PC6, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* @PORTC, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* @PORTC, align 4
  %46 = load i32, i32* @PB4, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @DDRB, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* @DDRB, align 4
  %51 = load i32, i32* @PB4, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* @PORTB, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* @PORTB, align 4
  %55 = call i32 (...) @expander_init()
  ret void
}

declare dso_local i32 @expander_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
