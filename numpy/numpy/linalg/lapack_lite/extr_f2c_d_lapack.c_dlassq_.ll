; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlassq_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlassq_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlassq_.ix = internal global i32 0, align 4
@dlassq_.absxi = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlassq_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 -1
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %98

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %22, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  store i32 1, i32* @dlassq_.ix, align 4
  br label %29

29:                                               ; preds = %93, %19
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @dlassq_.ix, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %33, %34
  %36 = zext i1 %35 to i32
  br label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @dlassq_.ix, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp sle i32 %38, %39
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i32 [ %36, %32 ], [ %41, %37 ]
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @dlassq_.ix, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sitofp i32 %50 to double
  %52 = fcmp une double %51, 0.000000e+00
  br i1 %52, label %53, label %92

53:                                               ; preds = %45
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @dlassq_.ix, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @abs(i32 %59) #2
  store i32 %60, i32* @dlassq_.absxi, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @dlassq_.absxi, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %53
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @dlassq_.absxi, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = mul nsw i32 %72, %73
  %75 = mul nsw i32 %71, %74
  %76 = add nsw i32 %75, 1
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @dlassq_.absxi, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %91

80:                                               ; preds = %53
  %81 = load i32, i32* @dlassq_.absxi, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %81, %83
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %80, %65
  br label %92

92:                                               ; preds = %91, %45
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @dlassq_.ix, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* @dlassq_.ix, align 4
  br label %29

97:                                               ; preds = %42
  br label %98

98:                                               ; preds = %97, %5
  ret i32 0
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
