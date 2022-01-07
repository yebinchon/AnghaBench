; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_cps2.c_expand_2nd_key.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_cps2.c_expand_2nd_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expand_2nd_key.bits = internal constant [96 x i32] [i32 34, i32 9, i32 32, i32 24, i32 44, i32 54, i32 38, i32 61, i32 47, i32 13, i32 28, i32 7, i32 29, i32 58, i32 18, i32 1, i32 20, i32 60, i32 15, i32 6, i32 11, i32 43, i32 39, i32 19, i32 63, i32 23, i32 16, i32 62, i32 54, i32 40, i32 31, i32 3, i32 56, i32 61, i32 17, i32 25, i32 47, i32 38, i32 55, i32 57, i32 5, i32 4, i32 15, i32 42, i32 22, i32 7, i32 2, i32 19, i32 46, i32 37, i32 29, i32 39, i32 12, i32 30, i32 49, i32 57, i32 31, i32 41, i32 26, i32 27, i32 24, i32 36, i32 11, i32 63, i32 33, i32 16, i32 56, i32 62, i32 48, i32 60, i32 59, i32 32, i32 12, i32 30, i32 53, i32 48, i32 10, i32 0, i32 50, i32 35, i32 3, i32 59, i32 14, i32 49, i32 51, i32 45, i32 44, i32 2, i32 21, i32 33, i32 55, i32 52, i32 23, i32 28, i32 8, i32 26], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @expand_2nd_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_2nd_key(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 3
  store i32 0, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %43, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 96
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [96 x i32], [96 x i32]* @expand_2nd_key.bits, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 32
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %18, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [96 x i32], [96 x i32]* @expand_2nd_key.bits, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = srem i32 %30, 32
  %32 = call i32 @BIT(i32 %26, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = srem i32 %33, 24
  %35 = shl i32 %32, %34
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 %37, 24
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %35
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %17
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %14

46:                                               ; preds = %14
  ret void
}

declare dso_local i32 @BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
