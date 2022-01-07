; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_matrix.c_select_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_matrix.c_select_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF4 = common dso_local global i32 0, align 4
@DDRF = common dso_local global i32 0, align 4
@PORTF = common dso_local global i32 0, align 4
@PF5 = common dso_local global i32 0, align 4
@PF6 = common dso_local global i32 0, align 4
@PF7 = common dso_local global i32 0, align 4
@PB1 = common dso_local global i32 0, align 4
@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@PB2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_row(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %64 [
    i32 0, label %4
    i32 1, label %14
    i32 2, label %24
    i32 3, label %34
    i32 4, label %44
    i32 5, label %54
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @PF4, align 4
  %6 = shl i32 1, %5
  %7 = load i32, i32* @DDRF, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @DDRF, align 4
  %9 = load i32, i32* @PF4, align 4
  %10 = shl i32 1, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @PORTF, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* @PORTF, align 4
  br label %64

14:                                               ; preds = %1
  %15 = load i32, i32* @PF5, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* @DDRF, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* @DDRF, align 4
  %19 = load i32, i32* @PF5, align 4
  %20 = shl i32 1, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @PORTF, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* @PORTF, align 4
  br label %64

24:                                               ; preds = %1
  %25 = load i32, i32* @PF6, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* @DDRF, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* @DDRF, align 4
  %29 = load i32, i32* @PF6, align 4
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* @PORTF, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* @PORTF, align 4
  br label %64

34:                                               ; preds = %1
  %35 = load i32, i32* @PF7, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* @DDRF, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* @DDRF, align 4
  %39 = load i32, i32* @PF7, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* @PORTF, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* @PORTF, align 4
  br label %64

44:                                               ; preds = %1
  %45 = load i32, i32* @PB1, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* @DDRB, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @DDRB, align 4
  %49 = load i32, i32* @PB1, align 4
  %50 = shl i32 1, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* @PORTB, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* @PORTB, align 4
  br label %64

54:                                               ; preds = %1
  %55 = load i32, i32* @PB2, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* @DDRB, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* @DDRB, align 4
  %59 = load i32, i32* @PB2, align 4
  %60 = shl i32 1, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* @PORTB, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* @PORTB, align 4
  br label %64

64:                                               ; preds = %1, %54, %44, %34, %24, %14, %4
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @expander_select_row(i32 %65)
  ret void
}

declare dso_local i32 @expander_select_row(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
