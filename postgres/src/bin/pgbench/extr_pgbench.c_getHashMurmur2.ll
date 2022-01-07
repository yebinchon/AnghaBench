; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_getHashMurmur2.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_getHashMurmur2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MM2_MUL_TIMES_8 = common dso_local global i32 0, align 4
@MM2_MUL = common dso_local global i32 0, align 4
@MM2_ROT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @getHashMurmur2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getHashMurmur2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MM2_MUL_TIMES_8, align 4
  %9 = xor i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @MM2_MUL, align 4
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MM2_ROT, align 4
  %16 = ashr i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MM2_MUL, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = xor i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @MM2_MUL, align 4
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MM2_ROT, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = xor i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @MM2_MUL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MM2_ROT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
