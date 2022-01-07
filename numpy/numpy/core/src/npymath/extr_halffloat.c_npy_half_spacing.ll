; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_half_spacing.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_half_spacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_HALF_NAN = common dso_local global i32 0, align 4
@NPY_HALF_PINF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @npy_half_spacing(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 31744
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 1023
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 31744
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @NPY_HALF_NAN, align 4
  store i32 %13, i32* %3, align 4
  br label %62

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 31743
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @NPY_HALF_PINF, align 4
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %20, 32768
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp ugt i32 %27, 11264
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = sub i32 %30, 11264
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = icmp ugt i32 %33, 1024
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 10
  %38 = sub nsw i32 %37, 2
  %39 = shl i32 1, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %35
  br label %42

42:                                               ; preds = %41, %29
  br label %60

43:                                               ; preds = %23, %19
  %44 = load i32, i32* %4, align 4
  %45 = icmp ugt i32 %44, 10240
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = sub i32 %47, 10240
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = icmp ugt i32 %50, 1024
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %53, 10
  %55 = sub nsw i32 %54, 1
  %56 = shl i32 1, %55
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %52
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60, %17
  br label %62

62:                                               ; preds = %61, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
