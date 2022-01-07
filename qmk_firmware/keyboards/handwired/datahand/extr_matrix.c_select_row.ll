; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/datahand/extr_matrix.c_select_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/datahand/extr_matrix.c_select_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTE = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_row(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @PORTE, align 4
  %8 = or i32 %7, 64
  store i32 %8, i32* @PORTE, align 4
  br label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @PORTE, align 4
  %11 = and i32 %10, -65
  store i32 %11, i32* @PORTE, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 2
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @PORTB, align 4
  %18 = or i32 %17, 128
  store i32 %18, i32* @PORTB, align 4
  br label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @PORTB, align 4
  %21 = and i32 %20, -129
  store i32 %21, i32* @PORTB, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @PORTD, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* @PORTD, align 4
  br label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @PORTD, align 4
  %31 = and i32 %30, -2
  store i32 %31, i32* @PORTD, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @PORTD, align 4
  %38 = or i32 %37, 2
  store i32 %38, i32* @PORTD, align 4
  br label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @PORTD, align 4
  %41 = and i32 %40, -3
  store i32 %41, i32* @PORTD, align 4
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
