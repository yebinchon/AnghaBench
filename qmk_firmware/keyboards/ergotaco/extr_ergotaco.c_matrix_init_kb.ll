; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergotaco/extr_ergotaco.c_matrix_init_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergotaco/extr_ergotaco.c_matrix_init_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@DDRC = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@DDRE = common dso_local global i32 0, align 4
@PORTE = common dso_local global i32 0, align 4
@DDRF = common dso_local global i32 0, align 4
@PORTF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init_kb() #0 {
  %1 = load i32, i32* @DDRB, align 4
  %2 = and i32 %1, -241
  store i32 %2, i32* @DDRB, align 4
  %3 = load i32, i32* @PORTB, align 4
  %4 = or i32 %3, 240
  store i32 %4, i32* @PORTB, align 4
  %5 = load i32, i32* @DDRC, align 4
  %6 = and i32 %5, -193
  store i32 %6, i32* @DDRC, align 4
  %7 = load i32, i32* @PORTC, align 4
  %8 = or i32 %7, 192
  store i32 %8, i32* @PORTC, align 4
  %9 = load i32, i32* @DDRD, align 4
  %10 = and i32 %9, -241
  store i32 %10, i32* @DDRD, align 4
  %11 = load i32, i32* @PORTD, align 4
  %12 = or i32 %11, 240
  store i32 %12, i32* @PORTD, align 4
  %13 = load i32, i32* @DDRE, align 4
  %14 = and i32 %13, -65
  store i32 %14, i32* @DDRE, align 4
  %15 = load i32, i32* @PORTE, align 4
  %16 = or i32 %15, 64
  store i32 %16, i32* @PORTE, align 4
  %17 = load i32, i32* @DDRF, align 4
  %18 = and i32 %17, -212
  store i32 %18, i32* @DDRF, align 4
  %19 = load i32, i32* @PORTF, align 4
  %20 = or i32 %19, 211
  store i32 %20, i32* @PORTF, align 4
  %21 = call i32 (...) @matrix_init_user()
  ret void
}

declare dso_local i32 @matrix_init_user(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
