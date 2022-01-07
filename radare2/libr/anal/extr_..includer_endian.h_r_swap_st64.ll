; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_..includer_endian.h_r_swap_st64.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_..includer_endian.h_r_swap_st64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @r_swap_st64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_swap_st64(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = shl i32 %3, 8
  %5 = sext i32 %4 to i64
  %6 = and i64 %5, -71777214294589696
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 8
  %9 = sext i32 %8 to i64
  %10 = and i64 %9, 71777214294589695
  %11 = or i64 %6, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = shl i32 %13, 16
  %15 = sext i32 %14 to i64
  %16 = and i64 %15, -281470681808896
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 16
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, 281470681808895
  %21 = or i64 %16, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = shl i32 %23, 32
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %2, align 4
  %27 = ashr i32 %26, 32
  %28 = sext i32 %27 to i64
  %29 = and i64 %28, 4294967295
  %30 = or i64 %25, %29
  %31 = trunc i64 %30 to i32
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
