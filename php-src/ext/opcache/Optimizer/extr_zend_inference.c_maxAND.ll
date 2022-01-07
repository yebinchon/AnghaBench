; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_maxAND.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_maxAND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maxAND(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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

13:                                               ; preds = %61, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = xor i32 %26, -1
  %28 = or i32 %25, %27
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 1
  %31 = or i32 %28, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %6, align 4
  br label %64

37:                                               ; preds = %24
  br label %61

38:                                               ; preds = %16
  %39 = load i32, i32* %6, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = xor i32 %48, -1
  %50 = or i32 %47, %49
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 1
  %53 = or i32 %50, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %8, align 4
  br label %64

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %13

64:                                               ; preds = %57, %35, %13
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %65, %66
  ret i32 %67
}

declare dso_local i32 @Z_UL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
