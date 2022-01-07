; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/splitmix64/extr_splitmix64.orig.c_next.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/splitmix64/extr_splitmix64.orig.c_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @x, align 4
  %3 = sext i32 %2 to i64
  %4 = add i64 %3, -7046029254386353131
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* @x, align 4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = ashr i32 %7, 30
  %9 = xor i32 %6, %8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, -4658895280553007687
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = ashr i32 %14, 27
  %16 = xor i32 %13, %15
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, -7723592293110705685
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = ashr i32 %21, 31
  %23 = xor i32 %20, %22
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
