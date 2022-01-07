; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_floatbits_to_halfbits.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_floatbits_to_halfbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @npy_floatbits_to_halfbits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, -2147483648
  %12 = lshr i32 %11, 16
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 2139095040
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp uge i32 %15, 1199570944
  br i1 %16, label %17, label %44

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 2139095040
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 8388607
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 13
  %28 = add i32 31744, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 31744
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %2, align 4
  br label %84

38:                                               ; preds = %20
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 31744
  store i32 %40, i32* %2, align 4
  br label %84

41:                                               ; preds = %17
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 31744
  store i32 %43, i32* %2, align 4
  br label %84

44:                                               ; preds = %1
  %45 = load i32, i32* %4, align 4
  %46 = icmp ule i32 %45, 939524096
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = icmp ult i32 %48, 855638016
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %84

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %53, 23
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, 8388607
  %57 = add i32 8388608, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 113, %58
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 4096
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 13
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %2, align 4
  br label %84

69:                                               ; preds = %44
  %70 = load i32, i32* %4, align 4
  %71 = sub i32 %70, 939524096
  %72 = lshr i32 %71, 13
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, 8388607
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, 4096
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = ashr i32 %77, 13
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %69, %52, %50, %41, %38, %34
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
