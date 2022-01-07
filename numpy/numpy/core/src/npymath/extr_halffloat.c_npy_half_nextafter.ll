; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_half_nextafter.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_half_nextafter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_HALF_NAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @npy_half_nextafter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @npy_half_isfinite(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @npy_half_isnan(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @NPY_HALF_NAN, align 4
  store i32 %14, i32* %5, align 4
  br label %67

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @npy_half_eq_nonan(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %5, align 4
  br label %66

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @npy_half_iszero(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 32768
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %65

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 32768
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %64

47:                                               ; preds = %30
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 32768
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 32767
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 32767
  %56 = icmp ugt i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %47
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %46
  br label %65

65:                                               ; preds = %64, %26
  br label %66

66:                                               ; preds = %65, %20
  br label %67

67:                                               ; preds = %66, %13
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @npy_half_isfinite(i32) #1

declare dso_local i64 @npy_half_isnan(i32) #1

declare dso_local i64 @npy_half_eq_nonan(i32, i32) #1

declare dso_local i64 @npy_half_iszero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
