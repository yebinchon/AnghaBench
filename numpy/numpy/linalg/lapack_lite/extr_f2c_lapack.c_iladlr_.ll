; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_iladlr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_iladlr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iladlr_.i__ = internal global i32 0, align 4
@iladlr_.j = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iladlr_(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 1, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = sext i32 %17 to i64
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  br label %96

28:                                               ; preds = %4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sitofp i32 %36 to double
  %38 = fcmp une double %37, 0.000000e+00
  br i1 %38, label %53, label %39

39:                                               ; preds = %28
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %42, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %40, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sitofp i32 %50 to double
  %52 = fcmp une double %51, 0.000000e+00
  br i1 %52, label %53, label %56

53:                                               ; preds = %39, %28
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  br label %95

56:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  store i32 1, i32* @iladlr_.j, align 4
  br label %59

59:                                               ; preds = %91, %56
  %60 = load i32, i32* @iladlr_.j, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* @iladlr_.i__, align 4
  br label %66

66:                                               ; preds = %83, %63
  %67 = load i32, i32* @iladlr_.i__, align 4
  %68 = icmp sge i32 %67, 1
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @iladlr_.i__, align 4
  %72 = load i32, i32* @iladlr_.j, align 4
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %70, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sitofp i32 %78 to double
  %80 = fcmp une double %79, 0.000000e+00
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %87

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* @iladlr_.i__, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* @iladlr_.i__, align 4
  br label %66

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86, %81
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @iladlr_.i__, align 4
  %90 = call i32 @max(i32 %88, i32 %89)
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @iladlr_.j, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @iladlr_.j, align 4
  br label %59

94:                                               ; preds = %59
  br label %95

95:                                               ; preds = %94, %53
  br label %96

96:                                               ; preds = %95, %25
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
