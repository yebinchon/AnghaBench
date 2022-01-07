; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ilazlr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ilazlr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ilazlr_.i__ = internal global i32 0, align 4
@ilazlr_.j = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilazlr_(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
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
  br label %130

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
  %46 = load i32, i32* %45, align 4
  %47 = sitofp i32 %46 to double
  %48 = fcmp une double %47, 0.000000e+00
  br i1 %48, label %76, label %49

49:                                               ; preds = %29
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sitofp i32 %55 to double
  %57 = fcmp une double %56, 0.000000e+00
  br i1 %57, label %76, label %58

58:                                               ; preds = %49
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to double
  %66 = fcmp une double %65, 0.000000e+00
  br i1 %66, label %76, label %67

67:                                               ; preds = %58
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sitofp i32 %73 to double
  %75 = fcmp une double %74, 0.000000e+00
  br i1 %75, label %76, label %79

76:                                               ; preds = %67, %58, %49, %29
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  br label %129

79:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %12, align 4
  store i32 1, i32* @ilazlr_.j, align 4
  br label %82

82:                                               ; preds = %125, %79
  %83 = load i32, i32* @ilazlr_.j, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %128

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* @ilazlr_.i__, align 4
  br label %89

89:                                               ; preds = %117, %86
  %90 = load i32, i32* @ilazlr_.i__, align 4
  %91 = icmp sge i32 %90, 1
  br i1 %91, label %92, label %120

92:                                               ; preds = %89
  %93 = load i32, i32* @ilazlr_.i__, align 4
  %94 = load i32, i32* @ilazlr_.j, align 4
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %93, %96
  store i32 %97, i32* %13, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to double
  %105 = fcmp une double %104, 0.000000e+00
  br i1 %105, label %115, label %106

106:                                              ; preds = %92
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sitofp i32 %112 to double
  %114 = fcmp une double %113, 0.000000e+00
  br i1 %114, label %115, label %116

115:                                              ; preds = %106, %92
  br label %121

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* @ilazlr_.i__, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* @ilazlr_.i__, align 4
  br label %89

120:                                              ; preds = %89
  br label %121

121:                                              ; preds = %120, %115
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @ilazlr_.i__, align 4
  %124 = call i32 @max(i32 %122, i32 %123)
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @ilazlr_.j, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @ilazlr_.j, align 4
  br label %82

128:                                              ; preds = %82
  br label %129

129:                                              ; preds = %128, %76
  br label %130

130:                                              ; preds = %129, %26
  %131 = load i32, i32* %11, align 4
  ret i32 %131
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
