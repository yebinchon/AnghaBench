; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_doublebits_to_halfbits.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_doublebits_to_halfbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @npy_doublebits_to_halfbits(i32 %0) #0 {
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
  %11 = sext i32 %10 to i64
  %12 = and i64 %11, -9223372036854775808
  %13 = lshr i64 %12, 48
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = and i64 %16, 9218868437227405312
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp uge i64 %20, 4679240012837945344
  br i1 %21, label %22, label %52

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %24, 9218868437227405312
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = and i64 %28, 4503599627370495
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 42
  %36 = add i32 31744, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 31744
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %2, align 4
  br label %109

46:                                               ; preds = %26
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, 31744
  store i32 %48, i32* %2, align 4
  br label %109

49:                                               ; preds = %22
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 31744
  store i32 %51, i32* %2, align 4
  br label %109

52:                                               ; preds = %1
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ule i64 %54, 4539628424389459968
  br i1 %55, label %56, label %88

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %58, 4494592428115755008
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %109

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = ashr i32 %63, 52
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = and i64 %66, 4503599627370495
  %68 = add i64 4503599627370496, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %70, 998
  %72 = icmp sge i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 %75, 998
  %77 = load i32, i32* %5, align 4
  %78 = shl i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 4503599627370496
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = ashr i32 %83, 53
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %2, align 4
  br label %109

88:                                               ; preds = %52
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 %90, 4539628424389459968
  %92 = lshr i64 %91, 42
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = and i64 %95, 4503599627370495
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 2199023255552
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = ashr i32 %102, 42
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %88, %62, %60, %49, %46, %42
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
