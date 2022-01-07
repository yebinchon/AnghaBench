; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/winkeyless/bmini/extr_matrix.c_bit_reverse.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/winkeyless/bmini/extr_matrix.c_bit_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bit_reverse(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = ashr i32 %3, 1
  %5 = and i32 %4, 85
  %6 = load i32, i32* %2, align 4
  %7 = shl i32 %6, 1
  %8 = and i32 %7, 170
  %9 = or i32 %5, %8
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 2
  %12 = and i32 %11, 51
  %13 = load i32, i32* %2, align 4
  %14 = shl i32 %13, 2
  %15 = and i32 %14, 204
  %16 = or i32 %12, %15
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 4
  %19 = and i32 %18, 15
  %20 = load i32, i32* %2, align 4
  %21 = shl i32 %20, 4
  %22 = and i32 %21, 240
  %23 = or i32 %19, %22
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
