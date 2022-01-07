; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlarfg_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlarfg_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlarfg_.j = internal global i32 0, align 4
@dlarfg_.knt = internal global i32 0, align 4
@dlarfg_.beta = internal global i32 0, align 4
@dlarfg_.xnorm = internal global i32 0, align 4
@dlarfg_.safmin = internal global i32 0, align 4
@dlarfg_.rsafmn = internal global i32 0, align 4
@SAFEMINIMUM = common dso_local global i32 0, align 4
@EPSILON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlarfg_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 -1
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %6, align 4
  br label %125

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @dnrm2_(i32* %12, i32* %26, i32* %27)
  store i32 %28, i32* @dlarfg_.xnorm, align 4
  %29 = load i32, i32* @dlarfg_.xnorm, align 4
  %30 = sitofp i32 %29 to double
  %31 = fcmp oeq double %30, 0.000000e+00
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32*, i32** %11, align 8
  store i32 0, i32* %33, align 4
  br label %124

34:                                               ; preds = %21
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @dlapy2_(i32* %35, i32* @dlarfg_.xnorm)
  store i32 %36, i32* %13, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @d_sign(i32* %13, i32* %37)
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* @dlarfg_.beta, align 4
  %40 = load i32, i32* @SAFEMINIMUM, align 4
  %41 = load i32, i32* @EPSILON, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* @dlarfg_.safmin, align 4
  store i32 0, i32* @dlarfg_.knt, align 4
  %43 = load i32, i32* @dlarfg_.beta, align 4
  %44 = call i32 @abs(i32 %43) #3
  %45 = load i32, i32* @dlarfg_.safmin, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %34
  %48 = load i32, i32* @dlarfg_.safmin, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double 1.000000e+00, %49
  %51 = fptosi double %50 to i32
  store i32 %51, i32* @dlarfg_.rsafmn, align 4
  br label %52

52:                                               ; preds = %73, %47
  %53 = load i32, i32* @dlarfg_.knt, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @dlarfg_.knt, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @dscal_(i32* %12, i32* @dlarfg_.rsafmn, i32* %59, i32* %60)
  %62 = load i32, i32* @dlarfg_.rsafmn, align 4
  %63 = load i32, i32* @dlarfg_.beta, align 4
  %64 = mul nsw i32 %63, %62
  store i32 %64, i32* @dlarfg_.beta, align 4
  %65 = load i32, i32* @dlarfg_.rsafmn, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @dlarfg_.beta, align 4
  %70 = call i32 @abs(i32 %69) #3
  %71 = load i32, i32* @dlarfg_.safmin, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  br label %52

74:                                               ; preds = %52
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @dnrm2_(i32* %12, i32* %79, i32* %80)
  store i32 %81, i32* @dlarfg_.xnorm, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @dlapy2_(i32* %82, i32* @dlarfg_.xnorm)
  store i32 %83, i32* %13, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @d_sign(i32* %13, i32* %84)
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* @dlarfg_.beta, align 4
  br label %87

87:                                               ; preds = %74, %34
  %88 = load i32, i32* @dlarfg_.beta, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %88, %90
  %92 = load i32, i32* @dlarfg_.beta, align 4
  %93 = sdiv i32 %91, %92
  %94 = load i32*, i32** %11, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @dlarfg_.beta, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sitofp i32 %101 to double
  %103 = fdiv double 1.000000e+00, %102
  %104 = fptosi double %103 to i32
  store i32 %104, i32* %13, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @dscal_(i32* %12, i32* %13, i32* %106, i32* %107)
  %109 = load i32, i32* @dlarfg_.knt, align 4
  store i32 %109, i32* %12, align 4
  store i32 1, i32* @dlarfg_.j, align 4
  br label %110

110:                                              ; preds = %118, %87
  %111 = load i32, i32* @dlarfg_.j, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load i32, i32* @dlarfg_.safmin, align 4
  %116 = load i32, i32* @dlarfg_.beta, align 4
  %117 = mul nsw i32 %116, %115
  store i32 %117, i32* @dlarfg_.beta, align 4
  br label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @dlarfg_.j, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @dlarfg_.j, align 4
  br label %110

121:                                              ; preds = %110
  %122 = load i32, i32* @dlarfg_.beta, align 4
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %32
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %124, %19
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @dnrm2_(i32*, i32*, i32*) #1

declare dso_local i32 @dlapy2_(i32*, i32*) #1

declare dso_local i32 @d_sign(i32*, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @dscal_(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
