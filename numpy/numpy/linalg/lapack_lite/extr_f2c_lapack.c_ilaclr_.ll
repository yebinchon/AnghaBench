; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ilaclr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ilaclr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float }

@ilaclr_.i__ = internal global i32 0, align 4
@ilaclr_.j = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilaclr_(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 1, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = sext i32 %18 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  br label %124

29:                                               ; preds = %4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %35, %39
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 4
  %47 = fcmp une float %46, 0.000000e+00
  br i1 %47, label %72, label %48

48:                                               ; preds = %29
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = fcmp une float %54, 0.000000e+00
  br i1 %55, label %72, label %56

56:                                               ; preds = %48
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load float, float* %61, align 4
  %63 = fcmp une float %62, 0.000000e+00
  br i1 %63, label %72, label %64

64:                                               ; preds = %56
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load float, float* %69, align 4
  %71 = fcmp une float %70, 0.000000e+00
  br i1 %71, label %72, label %75

72:                                               ; preds = %64, %56, %48, %29
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  br label %123

75:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  store i32 1, i32* @ilaclr_.j, align 4
  br label %78

78:                                               ; preds = %119, %75
  %79 = load i32, i32* @ilaclr_.j, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %122

82:                                               ; preds = %78
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* @ilaclr_.i__, align 4
  br label %85

85:                                               ; preds = %111, %82
  %86 = load i32, i32* @ilaclr_.i__, align 4
  %87 = icmp sge i32 %86, 1
  br i1 %87, label %88, label %114

88:                                               ; preds = %85
  %89 = load i32, i32* @ilaclr_.i__, align 4
  %90 = load i32, i32* @ilaclr_.j, align 4
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  store i32 %93, i32* %13, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load float, float* %98, align 4
  %100 = fcmp une float %99, 0.000000e+00
  br i1 %100, label %109, label %101

101:                                              ; preds = %88
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load float, float* %106, align 4
  %108 = fcmp une float %107, 0.000000e+00
  br i1 %108, label %109, label %110

109:                                              ; preds = %101, %88
  br label %115

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* @ilaclr_.i__, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* @ilaclr_.i__, align 4
  br label %85

114:                                              ; preds = %85
  br label %115

115:                                              ; preds = %114, %109
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @ilaclr_.i__, align 4
  %118 = call i32 @max(i32 %116, i32 %117)
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @ilaclr_.j, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @ilaclr_.j, align 4
  br label %78

122:                                              ; preds = %78
  br label %123

123:                                              ; preds = %122, %72
  br label %124

124:                                              ; preds = %123, %26
  %125 = load i32, i32* %11, align 4
  ret i32 %125
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
