; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/pegasushoof/2015/extr_matrix.c_select_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/pegasushoof/2015/extr_matrix.c_select_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_row(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %76 [
    i32 0, label %4
    i32 1, label %8
    i32 2, label %12
    i32 3, label %16
    i32 4, label %20
    i32 5, label %24
    i32 6, label %28
    i32 7, label %32
    i32 8, label %36
    i32 9, label %40
    i32 10, label %44
    i32 11, label %48
    i32 12, label %52
    i32 13, label %56
    i32 14, label %60
    i32 15, label %64
    i32 16, label %68
    i32 17, label %72
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @PORTD, align 4
  %6 = and i32 %5, -124
  %7 = or i32 %6, 27
  store i32 %7, i32* @PORTD, align 4
  br label %76

8:                                                ; preds = %1
  %9 = load i32, i32* @PORTD, align 4
  %10 = and i32 %9, -124
  %11 = or i32 %10, 67
  store i32 %11, i32* @PORTD, align 4
  br label %76

12:                                               ; preds = %1
  %13 = load i32, i32* @PORTD, align 4
  %14 = and i32 %13, -124
  %15 = or i32 %14, 96
  store i32 %15, i32* @PORTD, align 4
  br label %76

16:                                               ; preds = %1
  %17 = load i32, i32* @PORTD, align 4
  %18 = and i32 %17, -124
  %19 = or i32 %18, 121
  store i32 %19, i32* @PORTD, align 4
  br label %76

20:                                               ; preds = %1
  %21 = load i32, i32* @PORTD, align 4
  %22 = and i32 %21, -124
  %23 = or i32 %22, 98
  store i32 %23, i32* @PORTD, align 4
  br label %76

24:                                               ; preds = %1
  %25 = load i32, i32* @PORTD, align 4
  %26 = and i32 %25, -124
  %27 = or i32 %26, 106
  store i32 %27, i32* @PORTD, align 4
  br label %76

28:                                               ; preds = %1
  %29 = load i32, i32* @PORTD, align 4
  %30 = and i32 %29, -124
  %31 = or i32 %30, 113
  store i32 %31, i32* @PORTD, align 4
  br label %76

32:                                               ; preds = %1
  %33 = load i32, i32* @PORTD, align 4
  %34 = and i32 %33, -124
  %35 = or i32 %34, 105
  store i32 %35, i32* @PORTD, align 4
  br label %76

36:                                               ; preds = %1
  %37 = load i32, i32* @PORTD, align 4
  %38 = and i32 %37, -124
  %39 = or i32 %38, 97
  store i32 %39, i32* @PORTD, align 4
  br label %76

40:                                               ; preds = %1
  %41 = load i32, i32* @PORTD, align 4
  %42 = and i32 %41, -124
  %43 = or i32 %42, 120
  store i32 %43, i32* @PORTD, align 4
  br label %76

44:                                               ; preds = %1
  %45 = load i32, i32* @PORTD, align 4
  %46 = and i32 %45, -124
  %47 = or i32 %46, 35
  store i32 %47, i32* @PORTD, align 4
  br label %76

48:                                               ; preds = %1
  %49 = load i32, i32* @PORTD, align 4
  %50 = and i32 %49, -124
  %51 = or i32 %50, 43
  store i32 %51, i32* @PORTD, align 4
  br label %76

52:                                               ; preds = %1
  %53 = load i32, i32* @PORTD, align 4
  %54 = and i32 %53, -124
  %55 = or i32 %54, 51
  store i32 %55, i32* @PORTD, align 4
  br label %76

56:                                               ; preds = %1
  %57 = load i32, i32* @PORTD, align 4
  %58 = and i32 %57, -124
  %59 = or i32 %58, 112
  store i32 %59, i32* @PORTD, align 4
  br label %76

60:                                               ; preds = %1
  %61 = load i32, i32* @PORTD, align 4
  %62 = and i32 %61, -124
  %63 = or i32 %62, 19
  store i32 %63, i32* @PORTD, align 4
  br label %76

64:                                               ; preds = %1
  %65 = load i32, i32* @PORTD, align 4
  %66 = and i32 %65, -124
  %67 = or i32 %66, 104
  store i32 %67, i32* @PORTD, align 4
  br label %76

68:                                               ; preds = %1
  %69 = load i32, i32* @PORTD, align 4
  %70 = and i32 %69, -124
  %71 = or i32 %70, 11
  store i32 %71, i32* @PORTD, align 4
  br label %76

72:                                               ; preds = %1
  %73 = load i32, i32* @PORTD, align 4
  %74 = and i32 %73, -124
  %75 = or i32 %74, 59
  store i32 %75, i32* @PORTD, align 4
  br label %76

76:                                               ; preds = %1, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
