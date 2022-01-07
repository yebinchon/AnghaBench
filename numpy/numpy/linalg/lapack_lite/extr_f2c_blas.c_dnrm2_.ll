; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_dnrm2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_dnrm2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dnrm2_.ix = internal global i32 0, align 4
@dnrm2_.ssq = internal global i32 0, align 4
@dnrm2_.norm = internal global i32 0, align 4
@dnrm2_.scale = internal global i32 0, align 4
@dnrm2_.absxi = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnrm2_(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 -1
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  store i32 0, i32* @dnrm2_.norm, align 4
  br label %109

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @abs(i32 %28) #3
  store i32 %29, i32* @dnrm2_.norm, align 4
  br label %108

30:                                               ; preds = %21
  store i32 0, i32* @dnrm2_.scale, align 4
  store i32 1, i32* @dnrm2_.ssq, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %33, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  store i32 1, i32* @dnrm2_.ix, align 4
  br label %40

40:                                               ; preds = %99, %30
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* @dnrm2_.ix, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %44, %45
  %47 = zext i1 %46 to i32
  br label %53

48:                                               ; preds = %40
  %49 = load i32, i32* @dnrm2_.ix, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sle i32 %49, %50
  %52 = zext i1 %51 to i32
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i32 [ %47, %43 ], [ %52, %48 ]
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %53
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @dnrm2_.ix, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sitofp i32 %61 to double
  %63 = fcmp une double %62, 0.000000e+00
  br i1 %63, label %64, label %98

64:                                               ; preds = %56
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @dnrm2_.ix, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @abs(i32 %70) #3
  store i32 %71, i32* @dnrm2_.absxi, align 4
  %72 = load i32, i32* @dnrm2_.scale, align 4
  %73 = load i32, i32* @dnrm2_.absxi, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %64
  %76 = load i32, i32* @dnrm2_.scale, align 4
  %77 = load i32, i32* @dnrm2_.absxi, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @dnrm2_.ssq, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %80, %81
  %83 = mul nsw i32 %79, %82
  %84 = sitofp i32 %83 to double
  %85 = fadd double %84, 1.000000e+00
  %86 = fptosi double %85 to i32
  store i32 %86, i32* @dnrm2_.ssq, align 4
  %87 = load i32, i32* @dnrm2_.absxi, align 4
  store i32 %87, i32* @dnrm2_.scale, align 4
  br label %97

88:                                               ; preds = %64
  %89 = load i32, i32* @dnrm2_.absxi, align 4
  %90 = load i32, i32* @dnrm2_.scale, align 4
  %91 = sdiv i32 %89, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* @dnrm2_.ssq, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* @dnrm2_.ssq, align 4
  br label %97

97:                                               ; preds = %88, %75
  br label %98

98:                                               ; preds = %97, %56
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @dnrm2_.ix, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* @dnrm2_.ix, align 4
  br label %40

103:                                              ; preds = %53
  %104 = load i32, i32* @dnrm2_.scale, align 4
  %105 = load i32, i32* @dnrm2_.ssq, align 4
  %106 = call i32 @sqrt(i32 %105)
  %107 = mul nsw i32 %104, %106
  store i32 %107, i32* @dnrm2_.norm, align 4
  br label %108

108:                                              ; preds = %103, %25
  br label %109

109:                                              ; preds = %108, %20
  %110 = load i32, i32* @dnrm2_.norm, align 4
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @sqrt(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
