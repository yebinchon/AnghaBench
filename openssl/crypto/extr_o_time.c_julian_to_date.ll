; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_o_time.c_julian_to_date.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_o_time.c_julian_to_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i32*, i32*)* @julian_to_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @julian_to_date(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add nsw i64 %13, 68569
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = mul nsw i64 4, %15
  %17 = sdiv i64 %16, 146097
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = mul nsw i64 146097, %19
  %21 = add nsw i64 %20, 3
  %22 = sdiv i64 %21, 4
  %23 = sub nsw i64 %18, %22
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add nsw i64 %24, 1
  %26 = mul nsw i64 4000, %25
  %27 = sdiv i64 %26, 1461001
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %11, align 8
  %30 = mul nsw i64 1461, %29
  %31 = sdiv i64 %30, 4
  %32 = sub nsw i64 %28, %31
  %33 = add nsw i64 %32, 31
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = mul nsw i64 80, %34
  %36 = sdiv i64 %35, 2447
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = mul nsw i64 2447, %38
  %40 = sdiv i64 %39, 80
  %41 = sub nsw i64 %37, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i64, i64* %12, align 8
  %45 = sdiv i64 %44, 11
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add nsw i64 %46, 2
  %48 = load i64, i64* %9, align 8
  %49 = mul nsw i64 12, %48
  %50 = sub nsw i64 %47, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i64, i64* %10, align 8
  %54 = sub nsw i64 %53, 49
  %55 = mul nsw i64 100, %54
  %56 = load i64, i64* %11, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
