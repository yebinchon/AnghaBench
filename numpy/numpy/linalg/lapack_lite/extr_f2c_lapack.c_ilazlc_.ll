; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ilazlc_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ilazlc_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ilazlc_.i__ = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilazlc_(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
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
  br label %129

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
  %48 = load i32, i32* %47, align 4
  %49 = sitofp i32 %48 to double
  %50 = fcmp une double %49, 0.000000e+00
  br i1 %50, label %78, label %51

51:                                               ; preds = %30
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sitofp i32 %57 to double
  %59 = fcmp une double %58, 0.000000e+00
  br i1 %59, label %78, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to double
  %68 = fcmp une double %67, 0.000000e+00
  br i1 %68, label %78, label %69

69:                                               ; preds = %60
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sitofp i32 %75 to double
  %77 = fcmp une double %76, 0.000000e+00
  br i1 %77, label %78, label %81

78:                                               ; preds = %69, %60, %51, %30
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %12, align 4
  br label %128

81:                                               ; preds = %69
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %124, %81
  %85 = load i32, i32* %12, align 4
  %86 = icmp sge i32 %85, 1
  br i1 %86, label %87, label %127

87:                                               ; preds = %84
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %13, align 4
  store i32 1, i32* @ilazlc_.i__, align 4
  br label %90

90:                                               ; preds = %120, %87
  %91 = load i32, i32* @ilazlc_.i__, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %90
  %95 = load i32, i32* @ilazlc_.i__, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %14, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sitofp i32 %105 to double
  %107 = fcmp une double %106, 0.000000e+00
  br i1 %107, label %117, label %108

108:                                              ; preds = %94
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sitofp i32 %114 to double
  %116 = fcmp une double %115, 0.000000e+00
  br i1 %116, label %117, label %119

117:                                              ; preds = %108, %94
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %5, align 4
  br label %131

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* @ilazlc_.i__, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @ilazlc_.i__, align 4
  br label %90

123:                                              ; preds = %90
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %12, align 4
  br label %84

127:                                              ; preds = %84
  br label %128

128:                                              ; preds = %127, %78
  br label %129

129:                                              ; preds = %128, %27
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %117
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
