; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kmini/extr_matrix.c_select_col.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kmini/extr_matrix.c_select_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTB = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@PORTF = common dso_local global i32 0, align 4
@PORTE = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_col(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %79 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
    i32 4, label %18
    i32 5, label %23
    i32 6, label %30
    i32 7, label %35
    i32 8, label %42
    i32 9, label %49
    i32 10, label %58
    i32 11, label %61
    i32 12, label %64
    i32 13, label %67
    i32 14, label %70
    i32 15, label %73
    i32 16, label %76
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @PORTB, align 4
  %6 = or i32 %5, 32
  store i32 %6, i32* @PORTB, align 4
  br label %79

7:                                                ; preds = %1
  %8 = load i32, i32* @PORTB, align 4
  %9 = or i32 %8, 64
  store i32 %9, i32* @PORTB, align 4
  br label %79

10:                                               ; preds = %1
  %11 = load i32, i32* @PORTC, align 4
  %12 = or i32 %11, 64
  store i32 %12, i32* @PORTC, align 4
  br label %79

13:                                               ; preds = %1
  %14 = load i32, i32* @PORTC, align 4
  %15 = or i32 %14, 64
  store i32 %15, i32* @PORTC, align 4
  %16 = load i32, i32* @PORTF, align 4
  %17 = or i32 %16, 1
  store i32 %17, i32* @PORTF, align 4
  br label %79

18:                                               ; preds = %1
  %19 = load i32, i32* @PORTC, align 4
  %20 = or i32 %19, 64
  store i32 %20, i32* @PORTC, align 4
  %21 = load i32, i32* @PORTF, align 4
  %22 = or i32 %21, 2
  store i32 %22, i32* @PORTF, align 4
  br label %79

23:                                               ; preds = %1
  %24 = load i32, i32* @PORTC, align 4
  %25 = or i32 %24, 64
  store i32 %25, i32* @PORTC, align 4
  %26 = load i32, i32* @PORTF, align 4
  %27 = or i32 %26, 1
  store i32 %27, i32* @PORTF, align 4
  %28 = load i32, i32* @PORTF, align 4
  %29 = or i32 %28, 2
  store i32 %29, i32* @PORTF, align 4
  br label %79

30:                                               ; preds = %1
  %31 = load i32, i32* @PORTC, align 4
  %32 = or i32 %31, 64
  store i32 %32, i32* @PORTC, align 4
  %33 = load i32, i32* @PORTC, align 4
  %34 = or i32 %33, 128
  store i32 %34, i32* @PORTC, align 4
  br label %79

35:                                               ; preds = %1
  %36 = load i32, i32* @PORTC, align 4
  %37 = or i32 %36, 64
  store i32 %37, i32* @PORTC, align 4
  %38 = load i32, i32* @PORTF, align 4
  %39 = or i32 %38, 1
  store i32 %39, i32* @PORTF, align 4
  %40 = load i32, i32* @PORTC, align 4
  %41 = or i32 %40, 128
  store i32 %41, i32* @PORTC, align 4
  br label %79

42:                                               ; preds = %1
  %43 = load i32, i32* @PORTC, align 4
  %44 = or i32 %43, 64
  store i32 %44, i32* @PORTC, align 4
  %45 = load i32, i32* @PORTF, align 4
  %46 = or i32 %45, 2
  store i32 %46, i32* @PORTF, align 4
  %47 = load i32, i32* @PORTC, align 4
  %48 = or i32 %47, 128
  store i32 %48, i32* @PORTC, align 4
  br label %79

49:                                               ; preds = %1
  %50 = load i32, i32* @PORTC, align 4
  %51 = or i32 %50, 64
  store i32 %51, i32* @PORTC, align 4
  %52 = load i32, i32* @PORTF, align 4
  %53 = or i32 %52, 1
  store i32 %53, i32* @PORTF, align 4
  %54 = load i32, i32* @PORTF, align 4
  %55 = or i32 %54, 2
  store i32 %55, i32* @PORTF, align 4
  %56 = load i32, i32* @PORTC, align 4
  %57 = or i32 %56, 128
  store i32 %57, i32* @PORTC, align 4
  br label %79

58:                                               ; preds = %1
  %59 = load i32, i32* @PORTE, align 4
  %60 = or i32 %59, 64
  store i32 %60, i32* @PORTE, align 4
  br label %79

61:                                               ; preds = %1
  %62 = load i32, i32* @PORTB, align 4
  %63 = or i32 %62, 1
  store i32 %63, i32* @PORTB, align 4
  br label %79

64:                                               ; preds = %1
  %65 = load i32, i32* @PORTB, align 4
  %66 = or i32 %65, 128
  store i32 %66, i32* @PORTB, align 4
  br label %79

67:                                               ; preds = %1
  %68 = load i32, i32* @PORTD, align 4
  %69 = or i32 %68, 16
  store i32 %69, i32* @PORTD, align 4
  br label %79

70:                                               ; preds = %1
  %71 = load i32, i32* @PORTD, align 4
  %72 = or i32 %71, 64
  store i32 %72, i32* @PORTD, align 4
  br label %79

73:                                               ; preds = %1
  %74 = load i32, i32* @PORTD, align 4
  %75 = or i32 %74, 128
  store i32 %75, i32* @PORTD, align 4
  br label %79

76:                                               ; preds = %1
  %77 = load i32, i32* @PORTB, align 4
  %78 = or i32 %77, 16
  store i32 %78, i32* @PORTB, align 4
  br label %79

79:                                               ; preds = %1, %76, %73, %70, %67, %64, %61, %58, %49, %42, %35, %30, %23, %18, %13, %10, %7, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
