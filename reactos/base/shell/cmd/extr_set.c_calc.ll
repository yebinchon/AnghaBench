; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_calc.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRING_INVALID_OPERAND = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %49 [
    i32 42, label %9
    i32 47, label %14
    i32 37, label %19
    i32 43, label %24
    i32 45, label %29
    i32 38, label %34
    i32 94, label %39
    i32 124, label %44
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, %10
  store i32 %13, i32* %11, align 4
  br label %53

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, %15
  store i32 %18, i32* %16, align 4
  br label %53

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %53

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %53

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %53

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %53

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %53

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %53

49:                                               ; preds = %3
  %50 = load i32, i32* @STRING_INVALID_OPERAND, align 4
  %51 = call i32 @ConErrResPuts(i32 %50)
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %44, %39, %34, %29, %24, %19, %14, %9
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ConErrResPuts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
