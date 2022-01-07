; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bfake/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bfake/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@DDRA = common dso_local global i32 0, align 4
@DDRC = common dso_local global i32 0, align 4
@PIND7 = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTA = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8
@matrix_debouncing = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = alloca i64, align 8
  store i32 255, i32* @DDRB, align 4
  store i32 255, i32* @PORTB, align 4
  store i32 0, i32* @DDRA, align 4
  %2 = load i32, i32* @DDRC, align 4
  %3 = and i32 %2, -4473925
  store i32 %3, i32* @DDRC, align 4
  %4 = load i32, i32* @PIND7, align 4
  %5 = shl i32 1, %4
  %6 = xor i32 %5, -1
  %7 = load i32, i32* @DDRD, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* @DDRD, align 4
  store i32 255, i32* @PORTA, align 4
  %9 = load i32, i32* @PORTC, align 4
  %10 = or i32 %9, 252
  store i32 %10, i32* @PORTC, align 4
  %11 = load i32, i32* @PIND7, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* @PORTD, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* @PORTD, align 4
  store i64 0, i64* %1, align 8
  br label %15

15:                                               ; preds = %26, %0
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @MATRIX_ROWS, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32*, i32** @matrix, align 8
  %21 = load i64, i64* %1, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** @matrix_debouncing, align 8
  %24 = load i64, i64* %1, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %1, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %1, align 8
  br label %15

29:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
