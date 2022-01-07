; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ilaclc_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ilaclc_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float }

@ilaclc_.i__ = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilaclc_(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 1, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = sext i32 %19 to i64
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  br label %123

30:                                               ; preds = %4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %37, %41
  store i32 %42, i32* %14, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load float, float* %47, align 4
  %49 = fcmp une float %48, 0.000000e+00
  br i1 %49, label %74, label %50

50:                                               ; preds = %30
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load float, float* %55, align 4
  %57 = fcmp une float %56, 0.000000e+00
  br i1 %57, label %74, label %58

58:                                               ; preds = %50
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load float, float* %63, align 4
  %65 = fcmp une float %64, 0.000000e+00
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load float, float* %71, align 4
  %73 = fcmp une float %72, 0.000000e+00
  br i1 %73, label %74, label %77

74:                                               ; preds = %66, %58, %50, %30
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  br label %122

77:                                               ; preds = %66
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %118, %77
  %81 = load i32, i32* %12, align 4
  %82 = icmp sge i32 %81, 1
  br i1 %82, label %83, label %121

83:                                               ; preds = %80
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %13, align 4
  store i32 1, i32* @ilaclc_.i__, align 4
  br label %86

86:                                               ; preds = %114, %83
  %87 = load i32, i32* @ilaclc_.i__, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %86
  %91 = load i32, i32* @ilaclc_.i__, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %14, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load float, float* %100, align 4
  %102 = fcmp une float %101, 0.000000e+00
  br i1 %102, label %111, label %103

103:                                              ; preds = %90
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load float, float* %108, align 4
  %110 = fcmp une float %109, 0.000000e+00
  br i1 %110, label %111, label %113

111:                                              ; preds = %103, %90
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %5, align 4
  br label %125

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* @ilaclc_.i__, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @ilaclc_.i__, align 4
  br label %86

117:                                              ; preds = %86
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %12, align 4
  br label %80

121:                                              ; preds = %80
  br label %122

122:                                              ; preds = %121, %74
  br label %123

123:                                              ; preds = %122, %27
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %111
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
