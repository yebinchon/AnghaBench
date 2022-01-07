; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__hashint.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__hashint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fons__hashint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fons__hashint(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = shl i32 %3, 15
  %5 = xor i32 %4, -1
  %6 = load i32, i32* %2, align 4
  %7 = add i32 %6, %5
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = lshr i32 %8, 10
  %10 = load i32, i32* %2, align 4
  %11 = xor i32 %10, %9
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = shl i32 %12, 3
  %14 = load i32, i32* %2, align 4
  %15 = add i32 %14, %13
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = lshr i32 %16, 6
  %18 = load i32, i32* %2, align 4
  %19 = xor i32 %18, %17
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = shl i32 %20, 11
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %2, align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = lshr i32 %25, 16
  %27 = load i32, i32* %2, align 4
  %28 = xor i32 %27, %26
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
