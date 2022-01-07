; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_punycode.c_adapt_bias.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_punycode.c_adapt_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DAMP = common dso_local global i32 0, align 4
@BASE = common dso_local global i32 0, align 4
@TMIN = common dso_local global i32 0, align 4
@TMAX = common dso_local global i32 0, align 4
@SKEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adapt_bias(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @DAMP, align 4
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 2, %12 ]
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = udiv i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %31, %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BASE, align 4
  %25 = load i32, i32* @TMIN, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i32, i32* @TMAX, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  %30 = icmp sgt i32 %23, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load i32, i32* @BASE, align 4
  %33 = load i32, i32* @TMIN, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @BASE, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @BASE, align 4
  %43 = load i32, i32* @TMIN, align 4
  %44 = sub nsw i32 %42, %43
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %4, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @SKEW, align 4
  %50 = add nsw i32 %48, %49
  %51 = sdiv i32 %47, %50
  %52 = add nsw i32 %41, %51
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
