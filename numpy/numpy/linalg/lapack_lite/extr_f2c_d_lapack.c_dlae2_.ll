; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlae2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlae2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlae2_.ab = internal global i32 0, align 4
@dlae2_.df = internal global i32 0, align 4
@dlae2_.tb = internal global i32 0, align 4
@dlae2_.sm = internal global i32 0, align 4
@dlae2_.rt = internal global i32 0, align 4
@dlae2_.adf = internal global i32 0, align 4
@dlae2_.acmn = internal global i32 0, align 4
@dlae2_.acmx = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlae2_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %13, %15
  store i32 %16, i32* @dlae2_.sm, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %18, %20
  store i32 %21, i32* @dlae2_.df, align 4
  %22 = load i32, i32* @dlae2_.df, align 4
  %23 = call i32 @abs(i32 %22) #3
  store i32 %23, i32* @dlae2_.adf, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %25, %27
  store i32 %28, i32* @dlae2_.tb, align 4
  %29 = load i32, i32* @dlae2_.tb, align 4
  %30 = call i32 @abs(i32 %29) #3
  store i32 %30, i32* @dlae2_.ab, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @abs(i32 %32) #3
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @abs(i32 %35) #3
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %5
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @dlae2_.acmx, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @dlae2_.acmn, align 4
  br label %48

43:                                               ; preds = %5
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* @dlae2_.acmx, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* @dlae2_.acmn, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @dlae2_.adf, align 4
  %50 = load i32, i32* @dlae2_.ab, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i32, i32* @dlae2_.ab, align 4
  %54 = load i32, i32* @dlae2_.adf, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @dlae2_.adf, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sitofp i32 %59 to double
  %61 = fadd double %60, 1.000000e+00
  %62 = fptosi double %61 to i32
  %63 = call i32 @sqrt(i32 %62)
  %64 = mul nsw i32 %56, %63
  store i32 %64, i32* @dlae2_.rt, align 4
  br label %87

65:                                               ; preds = %48
  %66 = load i32, i32* @dlae2_.adf, align 4
  %67 = load i32, i32* @dlae2_.ab, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load i32, i32* @dlae2_.adf, align 4
  %71 = load i32, i32* @dlae2_.ab, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* @dlae2_.ab, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sitofp i32 %76 to double
  %78 = fadd double %77, 1.000000e+00
  %79 = fptosi double %78 to i32
  %80 = call i32 @sqrt(i32 %79)
  %81 = mul nsw i32 %73, %80
  store i32 %81, i32* @dlae2_.rt, align 4
  br label %86

82:                                               ; preds = %65
  %83 = load i32, i32* @dlae2_.ab, align 4
  %84 = call i32 @sqrt(i32 2)
  %85 = mul nsw i32 %83, %84
  store i32 %85, i32* @dlae2_.rt, align 4
  br label %86

86:                                               ; preds = %82, %69
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i32, i32* @dlae2_.sm, align 4
  %89 = sitofp i32 %88 to double
  %90 = fcmp olt double %89, 0.000000e+00
  br i1 %90, label %91, label %115

91:                                               ; preds = %87
  %92 = load i32, i32* @dlae2_.sm, align 4
  %93 = load i32, i32* @dlae2_.rt, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sitofp i32 %94 to double
  %96 = fmul double %95, 5.000000e-01
  %97 = fptosi double %96 to i32
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @dlae2_.acmx, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %99, %101
  %103 = load i32, i32* @dlae2_.acmn, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %106, %108
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %109, %111
  %113 = sub nsw i32 %104, %112
  %114 = load i32*, i32** %10, align 8
  store i32 %113, i32* %114, align 4
  br label %155

115:                                              ; preds = %87
  %116 = load i32, i32* @dlae2_.sm, align 4
  %117 = sitofp i32 %116 to double
  %118 = fcmp ogt double %117, 0.000000e+00
  br i1 %118, label %119, label %143

119:                                              ; preds = %115
  %120 = load i32, i32* @dlae2_.sm, align 4
  %121 = load i32, i32* @dlae2_.rt, align 4
  %122 = add nsw i32 %120, %121
  %123 = sitofp i32 %122 to double
  %124 = fmul double %123, 5.000000e-01
  %125 = fptosi double %124 to i32
  %126 = load i32*, i32** %9, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* @dlae2_.acmx, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %128, align 4
  %130 = sdiv i32 %127, %129
  %131 = load i32, i32* @dlae2_.acmn, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %134, %136
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %137, %139
  %141 = sub nsw i32 %132, %140
  %142 = load i32*, i32** %10, align 8
  store i32 %141, i32* %142, align 4
  br label %154

143:                                              ; preds = %115
  %144 = load i32, i32* @dlae2_.rt, align 4
  %145 = sitofp i32 %144 to double
  %146 = fmul double %145, 5.000000e-01
  %147 = fptosi double %146 to i32
  %148 = load i32*, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* @dlae2_.rt, align 4
  %150 = sitofp i32 %149 to double
  %151 = fmul double %150, -5.000000e-01
  %152 = fptosi double %151 to i32
  %153 = load i32*, i32** %10, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %143, %119
  br label %155

155:                                              ; preds = %154, %91
  ret i32 0
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
