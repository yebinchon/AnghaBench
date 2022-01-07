; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_crypto-blackrock2.c_ROUND.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_crypto-blackrock2.c_ROUND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SB8 = common dso_local global i32* null, align 8
@SB6 = common dso_local global i32* null, align 8
@SB4 = common dso_local global i32* null, align 8
@SB2 = common dso_local global i32* null, align 8
@SB7 = common dso_local global i32* null, align 8
@SB5 = common dso_local global i32* null, align 8
@SB3 = common dso_local global i32* null, align 8
@SB1 = common dso_local global i32* null, align 8
@sbox2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ROUND to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ROUND(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %10, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 64, %14
  %16 = shl i32 %13, %15
  %17 = or i32 %12, %16
  %18 = xor i32 %9, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %3
  %23 = load i32*, i32** @SB8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 63
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** @SB6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 63
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %28, %35
  %37 = load i32*, i32** @SB4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 63
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %36, %43
  %45 = load i32*, i32** @SB2, align 8
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 24
  %48 = and i32 %47, 63
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %44, %51
  store i32 %52, i32* %8, align 4
  br label %84

53:                                               ; preds = %3
  %54 = load i32*, i32** @SB7, align 8
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 63
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @SB5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 63
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %59, %66
  %68 = load i32*, i32** @SB3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = ashr i32 %69, 16
  %71 = and i32 %70, 63
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %67, %74
  %76 = load i32*, i32** @SB1, align 8
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %77, 24
  %79 = and i32 %78, 63
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = xor i32 %75, %82
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %53, %22
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
