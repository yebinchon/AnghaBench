; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/amj96/extr_matrix.c_select_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/amj96/extr_matrix.c_select_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PB3 = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@PB2 = common dso_local global i32 0, align 4
@PB1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_row(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* @PB3, align 4
  %8 = shl i32 1, %7
  %9 = load i32, i32* @PORTB, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* @PORTB, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @PB3, align 4
  %13 = shl i32 1, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @PORTB, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @PORTB, align 4
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i32 [ %10, %6 ], [ %16, %11 ]
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @PB2, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* @PORTB, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* @PORTB, align 4
  br label %33

27:                                               ; preds = %17
  %28 = load i32, i32* @PB2, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* @PORTB, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* @PORTB, align 4
  br label %33

33:                                               ; preds = %27, %22
  %34 = phi i32 [ %26, %22 ], [ %32, %27 ]
  %35 = load i32, i32* %2, align 4
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @PB1, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* @PORTB, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* @PORTB, align 4
  br label %49

43:                                               ; preds = %33
  %44 = load i32, i32* @PB1, align 4
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* @PORTB, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* @PORTB, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi i32 [ %42, %38 ], [ %48, %43 ]
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
