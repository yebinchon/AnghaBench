; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/octagon/v2/extr_matrix.c_select_col.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/octagon/v2/extr_matrix.c_select_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTC = common dso_local global i32 0, align 4
@PORTF = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_col(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %84 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %12
    i32 3, label %17
    i32 4, label %22
    i32 5, label %25
    i32 6, label %30
    i32 7, label %35
    i32 8, label %40
    i32 9, label %43
    i32 10, label %48
    i32 11, label %53
    i32 12, label %58
    i32 13, label %63
    i32 14, label %70
    i32 15, label %77
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @PORTC, align 4
  %6 = or i32 %5, 64
  store i32 %6, i32* @PORTC, align 4
  br label %84

7:                                                ; preds = %1
  %8 = load i32, i32* @PORTC, align 4
  %9 = or i32 %8, 64
  store i32 %9, i32* @PORTC, align 4
  %10 = load i32, i32* @PORTF, align 4
  %11 = or i32 %10, 1
  store i32 %11, i32* @PORTF, align 4
  br label %84

12:                                               ; preds = %1
  %13 = load i32, i32* @PORTC, align 4
  %14 = or i32 %13, 64
  store i32 %14, i32* @PORTC, align 4
  %15 = load i32, i32* @PORTF, align 4
  %16 = or i32 %15, 2
  store i32 %16, i32* @PORTF, align 4
  br label %84

17:                                               ; preds = %1
  %18 = load i32, i32* @PORTC, align 4
  %19 = or i32 %18, 64
  store i32 %19, i32* @PORTC, align 4
  %20 = load i32, i32* @PORTF, align 4
  %21 = or i32 %20, 3
  store i32 %21, i32* @PORTF, align 4
  br label %84

22:                                               ; preds = %1
  %23 = load i32, i32* @PORTC, align 4
  %24 = or i32 %23, 192
  store i32 %24, i32* @PORTC, align 4
  br label %84

25:                                               ; preds = %1
  %26 = load i32, i32* @PORTC, align 4
  %27 = or i32 %26, 192
  store i32 %27, i32* @PORTC, align 4
  %28 = load i32, i32* @PORTF, align 4
  %29 = or i32 %28, 1
  store i32 %29, i32* @PORTF, align 4
  br label %84

30:                                               ; preds = %1
  %31 = load i32, i32* @PORTC, align 4
  %32 = or i32 %31, 192
  store i32 %32, i32* @PORTC, align 4
  %33 = load i32, i32* @PORTF, align 4
  %34 = or i32 %33, 2
  store i32 %34, i32* @PORTF, align 4
  br label %84

35:                                               ; preds = %1
  %36 = load i32, i32* @PORTC, align 4
  %37 = or i32 %36, 192
  store i32 %37, i32* @PORTC, align 4
  %38 = load i32, i32* @PORTF, align 4
  %39 = or i32 %38, 3
  store i32 %39, i32* @PORTF, align 4
  br label %84

40:                                               ; preds = %1
  %41 = load i32, i32* @PORTB, align 4
  %42 = or i32 %41, 64
  store i32 %42, i32* @PORTB, align 4
  br label %84

43:                                               ; preds = %1
  %44 = load i32, i32* @PORTB, align 4
  %45 = or i32 %44, 64
  store i32 %45, i32* @PORTB, align 4
  %46 = load i32, i32* @PORTF, align 4
  %47 = or i32 %46, 1
  store i32 %47, i32* @PORTF, align 4
  br label %84

48:                                               ; preds = %1
  %49 = load i32, i32* @PORTB, align 4
  %50 = or i32 %49, 64
  store i32 %50, i32* @PORTB, align 4
  %51 = load i32, i32* @PORTF, align 4
  %52 = or i32 %51, 2
  store i32 %52, i32* @PORTF, align 4
  br label %84

53:                                               ; preds = %1
  %54 = load i32, i32* @PORTB, align 4
  %55 = or i32 %54, 64
  store i32 %55, i32* @PORTB, align 4
  %56 = load i32, i32* @PORTF, align 4
  %57 = or i32 %56, 3
  store i32 %57, i32* @PORTF, align 4
  br label %84

58:                                               ; preds = %1
  %59 = load i32, i32* @PORTB, align 4
  %60 = or i32 %59, 64
  store i32 %60, i32* @PORTB, align 4
  %61 = load i32, i32* @PORTC, align 4
  %62 = or i32 %61, 128
  store i32 %62, i32* @PORTC, align 4
  br label %84

63:                                               ; preds = %1
  %64 = load i32, i32* @PORTB, align 4
  %65 = or i32 %64, 64
  store i32 %65, i32* @PORTB, align 4
  %66 = load i32, i32* @PORTF, align 4
  %67 = or i32 %66, 1
  store i32 %67, i32* @PORTF, align 4
  %68 = load i32, i32* @PORTC, align 4
  %69 = or i32 %68, 128
  store i32 %69, i32* @PORTC, align 4
  br label %84

70:                                               ; preds = %1
  %71 = load i32, i32* @PORTB, align 4
  %72 = or i32 %71, 64
  store i32 %72, i32* @PORTB, align 4
  %73 = load i32, i32* @PORTF, align 4
  %74 = or i32 %73, 2
  store i32 %74, i32* @PORTF, align 4
  %75 = load i32, i32* @PORTC, align 4
  %76 = or i32 %75, 128
  store i32 %76, i32* @PORTC, align 4
  br label %84

77:                                               ; preds = %1
  %78 = load i32, i32* @PORTB, align 4
  %79 = or i32 %78, 64
  store i32 %79, i32* @PORTB, align 4
  %80 = load i32, i32* @PORTF, align 4
  %81 = or i32 %80, 3
  store i32 %81, i32* @PORTF, align 4
  %82 = load i32, i32* @PORTC, align 4
  %83 = or i32 %82, 128
  store i32 %83, i32* @PORTC, align 4
  br label %84

84:                                               ; preds = %1, %77, %70, %63, %58, %53, %48, %43, %40, %35, %30, %25, %22, %17, %12, %7, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
