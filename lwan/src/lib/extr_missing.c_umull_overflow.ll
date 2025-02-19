; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_missing.c_umull_overflow.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_missing.c_umull_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MUL_NO_OVERFLOW = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*)* @umull_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umull_overflow(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @MUL_NO_OVERFLOW, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @MUL_NO_OVERFLOW, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11, %3
  %16 = load i64, i64* %5, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i64, i64* @SIZE_MAX, align 8
  %20 = load i64, i64* %5, align 8
  %21 = udiv i64 %19, %20
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %30

25:                                               ; preds = %18, %15, %11
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = mul i64 %26, %27
  %29 = load i64*, i64** %7, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %24
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
