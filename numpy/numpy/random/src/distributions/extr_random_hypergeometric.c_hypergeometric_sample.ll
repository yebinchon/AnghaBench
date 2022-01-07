; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/distributions/extr_random_hypergeometric.c_hypergeometric_sample.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/distributions/extr_random_hypergeometric.c_hypergeometric_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @hypergeometric_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypergeometric_sample(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %13, align 4
  %19 = sdiv i32 %18, 2
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %12, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %54, %27
  %31 = load i32, i32* %12, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %37, %38
  br label %40

40:                                               ; preds = %36, %33, %30
  %41 = phi i1 [ false, %33 ], [ false, %30 ], [ %39, %36 ]
  br i1 %41, label %42, label %57

42:                                               ; preds = %40
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @random_interval(i32* %45, i32 %46)
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %12, align 4
  br label %30

57:                                               ; preds = %40
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sdiv i32 %67, 2
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %11, align 4
  br label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %72, %70
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local i64 @random_interval(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
