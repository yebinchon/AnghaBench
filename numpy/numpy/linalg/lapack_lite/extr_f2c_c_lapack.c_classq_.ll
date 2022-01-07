; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_classq_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_classq_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float }

@classq_.ix = internal global i32 0, align 4
@classq_.temp1 = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @classq_(i32* %0, %struct.TYPE_4__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 -1
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %150

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %23, %25
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  store i32 1, i32* @classq_.ix, align 4
  br label %30

30:                                               ; preds = %145, %20
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @classq_.ix, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sge i32 %34, %35
  %37 = zext i1 %36 to i32
  br label %43

38:                                               ; preds = %30
  %39 = load i32, i32* @classq_.ix, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sle i32 %39, %40
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i32 [ %37, %33 ], [ %42, %38 ]
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %149

46:                                               ; preds = %43
  %47 = load i32, i32* @classq_.ix, align 4
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load float, float* %52, align 4
  %54 = fcmp une float %53, 0.000000e+00
  br i1 %54, label %55, label %97

55:                                               ; preds = %46
  %56 = load i32, i32* @classq_.ix, align 4
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load float, float* %61, align 4
  %63 = fptosi float %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @dabs(i32 %64)
  store i32 %65, i32* @classq_.temp1, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @classq_.temp1, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %55
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @classq_.temp1, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %14, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 %77, %78
  %80 = mul nsw i32 %76, %79
  %81 = add nsw i32 %80, 1
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @classq_.temp1, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  br label %96

85:                                               ; preds = %55
  %86 = load i32, i32* @classq_.temp1, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %86, %88
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %92
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %85, %70
  br label %97

97:                                               ; preds = %96, %46
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %99 = load i32, i32* @classq_.ix, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = call float @r_imag(%struct.TYPE_4__* %101)
  %103 = fcmp une float %102, 0.000000e+00
  br i1 %103, label %104, label %144

104:                                              ; preds = %97
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %106 = load i32, i32* @classq_.ix, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = call float @r_imag(%struct.TYPE_4__* %108)
  %110 = fptosi float %109 to i32
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @dabs(i32 %111)
  store i32 %112, i32* @classq_.temp1, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @classq_.temp1, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %104
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @classq_.temp1, align 4
  %121 = sdiv i32 %119, %120
  store i32 %121, i32* %14, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = mul nsw i32 %124, %125
  %127 = mul nsw i32 %123, %126
  %128 = add nsw i32 %127, 1
  %129 = load i32*, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* @classq_.temp1, align 4
  %131 = load i32*, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  br label %143

132:                                              ; preds = %104
  %133 = load i32, i32* @classq_.temp1, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %133, %135
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %139
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %132, %117
  br label %144

144:                                              ; preds = %143, %97
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @classq_.ix, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* @classq_.ix, align 4
  br label %30

149:                                              ; preds = %43
  br label %150

150:                                              ; preds = %149, %5
  ret i32 0
}

declare dso_local i32 @dabs(i32) #1

declare dso_local float @r_imag(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
