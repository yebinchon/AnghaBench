; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_bitset.h_zend_bitset_last.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_bitset.h_zend_bitset_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEND_BITSET_ELM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @zend_bitset_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_bitset_last(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %45, %2
  %11 = load i64, i64* %6, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %13
  %22 = load i32, i32* @ZEND_BITSET_ELM_SIZE, align 4
  %23 = mul nsw i32 %22, 8
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %6, align 8
  %26 = mul i64 %24, %25
  %27 = sub i64 %26, 1
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %37, %21
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @Z_UL(i32 0)
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @Z_UL(i32 1)
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %33

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %13
  br label %10

46:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @Z_UL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
