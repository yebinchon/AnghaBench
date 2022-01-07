; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_crc.c_calc_crc_16_ccitt.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_crc.c_calc_crc_16_ccitt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BIT = common dso_local global i64 0, align 8
@CRC_CARRY_BIT = common dso_local global i64 0, align 8
@CRC_XOR_PATTERN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calc_crc_16_ccitt(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 8
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %44, %3
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %4, align 8
  %20 = load i32, i32* %18, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %9, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %40, %17
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @CHAR_BIT, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = shl i64 %29, 1
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @CRC_CARRY_BIT, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i64, i64* @CRC_XOR_PATTERN, align 8
  %37 = load i64, i64* %9, align 8
  %38 = xor i64 %37, %36
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %24

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %13

47:                                               ; preds = %13
  %48 = load i64, i64* %9, align 8
  %49 = ashr i64 %48, 8
  %50 = trunc i64 %49 to i32
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
