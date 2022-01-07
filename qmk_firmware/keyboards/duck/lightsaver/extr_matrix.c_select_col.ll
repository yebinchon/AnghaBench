; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/lightsaver/extr_matrix.c_select_col.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/lightsaver/extr_matrix.c_select_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTC = common dso_local global i32 0, align 4
@PORTF = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_col(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %101 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %12
    i32 3, label %17
    i32 4, label %22
    i32 5, label %27
    i32 6, label %34
    i32 7, label %41
    i32 8, label %48
    i32 9, label %51
    i32 10, label %56
    i32 11, label %61
    i32 12, label %66
    i32 13, label %71
    i32 14, label %78
    i32 15, label %85
    i32 16, label %92
    i32 17, label %95
    i32 18, label %98
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @PORTC, align 4
  %6 = or i32 %5, 64
  store i32 %6, i32* @PORTC, align 4
  br label %101

7:                                                ; preds = %1
  %8 = load i32, i32* @PORTC, align 4
  %9 = or i32 %8, 64
  store i32 %9, i32* @PORTC, align 4
  %10 = load i32, i32* @PORTF, align 4
  %11 = or i32 %10, 1
  store i32 %11, i32* @PORTF, align 4
  br label %101

12:                                               ; preds = %1
  %13 = load i32, i32* @PORTC, align 4
  %14 = or i32 %13, 64
  store i32 %14, i32* @PORTC, align 4
  %15 = load i32, i32* @PORTF, align 4
  %16 = or i32 %15, 2
  store i32 %16, i32* @PORTF, align 4
  br label %101

17:                                               ; preds = %1
  %18 = load i32, i32* @PORTC, align 4
  %19 = or i32 %18, 64
  store i32 %19, i32* @PORTC, align 4
  %20 = load i32, i32* @PORTF, align 4
  %21 = or i32 %20, 3
  store i32 %21, i32* @PORTF, align 4
  br label %101

22:                                               ; preds = %1
  %23 = load i32, i32* @PORTC, align 4
  %24 = or i32 %23, 64
  store i32 %24, i32* @PORTC, align 4
  %25 = load i32, i32* @PORTC, align 4
  %26 = or i32 %25, 128
  store i32 %26, i32* @PORTC, align 4
  br label %101

27:                                               ; preds = %1
  %28 = load i32, i32* @PORTC, align 4
  %29 = or i32 %28, 64
  store i32 %29, i32* @PORTC, align 4
  %30 = load i32, i32* @PORTF, align 4
  %31 = or i32 %30, 1
  store i32 %31, i32* @PORTF, align 4
  %32 = load i32, i32* @PORTC, align 4
  %33 = or i32 %32, 128
  store i32 %33, i32* @PORTC, align 4
  br label %101

34:                                               ; preds = %1
  %35 = load i32, i32* @PORTC, align 4
  %36 = or i32 %35, 64
  store i32 %36, i32* @PORTC, align 4
  %37 = load i32, i32* @PORTF, align 4
  %38 = or i32 %37, 2
  store i32 %38, i32* @PORTF, align 4
  %39 = load i32, i32* @PORTC, align 4
  %40 = or i32 %39, 128
  store i32 %40, i32* @PORTC, align 4
  br label %101

41:                                               ; preds = %1
  %42 = load i32, i32* @PORTC, align 4
  %43 = or i32 %42, 64
  store i32 %43, i32* @PORTC, align 4
  %44 = load i32, i32* @PORTF, align 4
  %45 = or i32 %44, 3
  store i32 %45, i32* @PORTF, align 4
  %46 = load i32, i32* @PORTC, align 4
  %47 = or i32 %46, 128
  store i32 %47, i32* @PORTC, align 4
  br label %101

48:                                               ; preds = %1
  %49 = load i32, i32* @PORTB, align 4
  %50 = or i32 %49, 64
  store i32 %50, i32* @PORTB, align 4
  br label %101

51:                                               ; preds = %1
  %52 = load i32, i32* @PORTB, align 4
  %53 = or i32 %52, 64
  store i32 %53, i32* @PORTB, align 4
  %54 = load i32, i32* @PORTF, align 4
  %55 = or i32 %54, 1
  store i32 %55, i32* @PORTF, align 4
  br label %101

56:                                               ; preds = %1
  %57 = load i32, i32* @PORTB, align 4
  %58 = or i32 %57, 64
  store i32 %58, i32* @PORTB, align 4
  %59 = load i32, i32* @PORTF, align 4
  %60 = or i32 %59, 2
  store i32 %60, i32* @PORTF, align 4
  br label %101

61:                                               ; preds = %1
  %62 = load i32, i32* @PORTB, align 4
  %63 = or i32 %62, 64
  store i32 %63, i32* @PORTB, align 4
  %64 = load i32, i32* @PORTF, align 4
  %65 = or i32 %64, 3
  store i32 %65, i32* @PORTF, align 4
  br label %101

66:                                               ; preds = %1
  %67 = load i32, i32* @PORTB, align 4
  %68 = or i32 %67, 64
  store i32 %68, i32* @PORTB, align 4
  %69 = load i32, i32* @PORTC, align 4
  %70 = or i32 %69, 128
  store i32 %70, i32* @PORTC, align 4
  br label %101

71:                                               ; preds = %1
  %72 = load i32, i32* @PORTB, align 4
  %73 = or i32 %72, 64
  store i32 %73, i32* @PORTB, align 4
  %74 = load i32, i32* @PORTF, align 4
  %75 = or i32 %74, 1
  store i32 %75, i32* @PORTF, align 4
  %76 = load i32, i32* @PORTC, align 4
  %77 = or i32 %76, 128
  store i32 %77, i32* @PORTC, align 4
  br label %101

78:                                               ; preds = %1
  %79 = load i32, i32* @PORTB, align 4
  %80 = or i32 %79, 64
  store i32 %80, i32* @PORTB, align 4
  %81 = load i32, i32* @PORTF, align 4
  %82 = or i32 %81, 2
  store i32 %82, i32* @PORTF, align 4
  %83 = load i32, i32* @PORTC, align 4
  %84 = or i32 %83, 128
  store i32 %84, i32* @PORTC, align 4
  br label %101

85:                                               ; preds = %1
  %86 = load i32, i32* @PORTB, align 4
  %87 = or i32 %86, 64
  store i32 %87, i32* @PORTB, align 4
  %88 = load i32, i32* @PORTF, align 4
  %89 = or i32 %88, 3
  store i32 %89, i32* @PORTF, align 4
  %90 = load i32, i32* @PORTC, align 4
  %91 = or i32 %90, 128
  store i32 %91, i32* @PORTC, align 4
  br label %101

92:                                               ; preds = %1
  %93 = load i32, i32* @PORTB, align 4
  %94 = or i32 %93, 32
  store i32 %94, i32* @PORTB, align 4
  br label %101

95:                                               ; preds = %1
  %96 = load i32, i32* @PORTB, align 4
  %97 = or i32 %96, 16
  store i32 %97, i32* @PORTB, align 4
  br label %101

98:                                               ; preds = %1
  %99 = load i32, i32* @PORTD, align 4
  %100 = or i32 %99, 128
  store i32 %100, i32* @PORTD, align 4
  br label %101

101:                                              ; preds = %1, %98, %95, %92, %85, %78, %71, %66, %61, %56, %51, %48, %41, %34, %27, %22, %17, %12, %7, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
