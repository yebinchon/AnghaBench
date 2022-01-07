; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_minAND.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_minAND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minAND(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 @Z_UL(i32 1)
  %12 = shl i32 %11, 31
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %50, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 0, %29
  %31 = and i32 %28, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %53

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 0, %41
  %43 = and i32 %40, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %7, align 4
  br label %53

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %16
  %51 = load i32, i32* %9, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %13

53:                                               ; preds = %47, %35, %13
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %54, %55
  ret i32 %56
}

declare dso_local i32 @Z_UL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
