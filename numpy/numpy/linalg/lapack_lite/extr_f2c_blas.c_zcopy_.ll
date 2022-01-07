; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_zcopy_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_zcopy_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@zcopy_.i__ = internal global i32 0, align 4
@zcopy_.ix = internal global i32 0, align 4
@zcopy_.iy = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zcopy_(i32* %0, %struct.TYPE_4__* %1, i32* %2, %struct.TYPE_4__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 -1
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 -1
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %138

23:                                               ; preds = %5
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %102

32:                                               ; preds = %27, %23
  store i32 1, i32* @zcopy_.ix, align 4
  store i32 1, i32* @zcopy_.iy, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 0, %38
  %40 = add nsw i32 %39, 1
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %40, %42
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @zcopy_.ix, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 0, %51
  %53 = add nsw i32 %52, 1
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @zcopy_.iy, align 4
  br label %58

58:                                               ; preds = %49, %45
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  store i32 1, i32* @zcopy_.i__, align 4
  br label %61

61:                                               ; preds = %98, %58
  %62 = load i32, i32* @zcopy_.i__, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %101

65:                                               ; preds = %61
  %66 = load i32, i32* @zcopy_.iy, align 4
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* @zcopy_.ix, align 4
  store i32 %67, i32* %14, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @zcopy_.ix, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* @zcopy_.ix, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @zcopy_.iy, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* @zcopy_.iy, align 4
  br label %98

98:                                               ; preds = %65
  %99 = load i32, i32* @zcopy_.i__, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @zcopy_.i__, align 4
  br label %61

101:                                              ; preds = %61
  store i32 0, i32* %6, align 4
  br label %138

102:                                              ; preds = %31
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %12, align 4
  store i32 1, i32* @zcopy_.i__, align 4
  br label %105

105:                                              ; preds = %134, %102
  %106 = load i32, i32* @zcopy_.i__, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %137

109:                                              ; preds = %105
  %110 = load i32, i32* @zcopy_.i__, align 4
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* @zcopy_.i__, align 4
  store i32 %111, i32* %14, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 %117, i32* %122, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i32 %128, i32* %133, align 4
  br label %134

134:                                              ; preds = %109
  %135 = load i32, i32* @zcopy_.i__, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* @zcopy_.i__, align 4
  br label %105

137:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %137, %101, %22
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
