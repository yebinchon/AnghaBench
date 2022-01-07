; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_dznrm2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_dznrm2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@dznrm2_.ix = internal global i32 0, align 4
@dznrm2_.ssq = internal global i32 0, align 4
@dznrm2_.temp = internal global i32 0, align 4
@dznrm2_.norm = internal global i32 0, align 4
@dznrm2_.scale = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dznrm2_(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 -1
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %3
  store i32 0, i32* @dznrm2_.norm, align 4
  br label %146

22:                                               ; preds = %17
  store i32 0, i32* @dznrm2_.scale, align 4
  store i32 1, i32* @dznrm2_.ssq, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %25, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  store i32 1, i32* @dznrm2_.ix, align 4
  br label %32

32:                                               ; preds = %137, %22
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @dznrm2_.ix, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %36, %37
  %39 = zext i1 %38 to i32
  br label %45

40:                                               ; preds = %32
  %41 = load i32, i32* @dznrm2_.ix, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sle i32 %41, %42
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i32 [ %39, %35 ], [ %44, %40 ]
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %141

48:                                               ; preds = %45
  %49 = load i32, i32* @dznrm2_.ix, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sitofp i32 %55 to double
  %57 = fcmp une double %56, 0.000000e+00
  br i1 %57, label %58, label %94

58:                                               ; preds = %48
  %59 = load i32, i32* @dznrm2_.ix, align 4
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @abs(i32 %66) #3
  store i32 %67, i32* @dznrm2_.temp, align 4
  %68 = load i32, i32* @dznrm2_.scale, align 4
  %69 = load i32, i32* @dznrm2_.temp, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %58
  %72 = load i32, i32* @dznrm2_.scale, align 4
  %73 = load i32, i32* @dznrm2_.temp, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @dznrm2_.ssq, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %76, %77
  %79 = mul nsw i32 %75, %78
  %80 = sitofp i32 %79 to double
  %81 = fadd double %80, 1.000000e+00
  %82 = fptosi double %81 to i32
  store i32 %82, i32* @dznrm2_.ssq, align 4
  %83 = load i32, i32* @dznrm2_.temp, align 4
  store i32 %83, i32* @dznrm2_.scale, align 4
  br label %93

84:                                               ; preds = %58
  %85 = load i32, i32* @dznrm2_.temp, align 4
  %86 = load i32, i32* @dznrm2_.scale, align 4
  %87 = sdiv i32 %85, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* @dznrm2_.ssq, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* @dznrm2_.ssq, align 4
  br label %93

93:                                               ; preds = %84, %71
  br label %94

94:                                               ; preds = %93, %48
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = load i32, i32* @dznrm2_.ix, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = call i32 @d_imag(%struct.TYPE_4__* %98)
  %100 = sitofp i32 %99 to double
  %101 = fcmp une double %100, 0.000000e+00
  br i1 %101, label %102, label %136

102:                                              ; preds = %94
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = load i32, i32* @dznrm2_.ix, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = call i32 @d_imag(%struct.TYPE_4__* %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @abs(i32 %108) #3
  store i32 %109, i32* @dznrm2_.temp, align 4
  %110 = load i32, i32* @dznrm2_.scale, align 4
  %111 = load i32, i32* @dznrm2_.temp, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %102
  %114 = load i32, i32* @dznrm2_.scale, align 4
  %115 = load i32, i32* @dznrm2_.temp, align 4
  %116 = sdiv i32 %114, %115
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* @dznrm2_.ssq, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = mul nsw i32 %118, %119
  %121 = mul nsw i32 %117, %120
  %122 = sitofp i32 %121 to double
  %123 = fadd double %122, 1.000000e+00
  %124 = fptosi double %123 to i32
  store i32 %124, i32* @dznrm2_.ssq, align 4
  %125 = load i32, i32* @dznrm2_.temp, align 4
  store i32 %125, i32* @dznrm2_.scale, align 4
  br label %135

126:                                              ; preds = %102
  %127 = load i32, i32* @dznrm2_.temp, align 4
  %128 = load i32, i32* @dznrm2_.scale, align 4
  %129 = sdiv i32 %127, %128
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* @dznrm2_.ssq, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* @dznrm2_.ssq, align 4
  br label %135

135:                                              ; preds = %126, %113
  br label %136

136:                                              ; preds = %135, %94
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @dznrm2_.ix, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* @dznrm2_.ix, align 4
  br label %32

141:                                              ; preds = %45
  %142 = load i32, i32* @dznrm2_.scale, align 4
  %143 = load i32, i32* @dznrm2_.ssq, align 4
  %144 = call i32 @sqrt(i32 %143)
  %145 = mul nsw i32 %142, %144
  store i32 %145, i32* @dznrm2_.norm, align 4
  br label %146

146:                                              ; preds = %141, %21
  %147 = load i32, i32* @dznrm2_.norm, align 4
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  ret i32 %148
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @d_imag(%struct.TYPE_4__*) #2

declare dso_local i32 @sqrt(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
