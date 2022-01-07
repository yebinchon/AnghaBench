; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_compute_bitmap_pages.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_compute_bitmap_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32 }

@work_mem = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @compute_bitmap_pages(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3, i32* %4, double* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i64, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store double* %5, double** %12, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @cost_bitmap_tree_node(i32* %22, i32* %13, double* %14)
  %24 = load double, double* %14, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = fmul double %24, %27
  %29 = call double @clamp_row_est(double %28)
  store double %29, double* %17, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %6
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sitofp i32 %37 to double
  br label %40

39:                                               ; preds = %6
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi double [ %38, %34 ], [ 1.000000e+00, %39 ]
  store double %41, double* %15, align 8
  %42 = load double, double* %15, align 8
  %43 = fmul double 2.000000e+00, %42
  %44 = load double, double* %17, align 8
  %45 = fmul double %43, %44
  %46 = load double, double* %15, align 8
  %47 = fmul double 2.000000e+00, %46
  %48 = load double, double* %17, align 8
  %49 = fadd double %47, %48
  %50 = fdiv double %45, %49
  store double %50, double* %16, align 8
  %51 = load double, double* %16, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call double @Min(double %51, i32 %54)
  store double %55, double* %18, align 8
  %56 = load i64, i64* @work_mem, align 8
  %57 = mul nsw i64 %56, 1024
  %58 = call i64 @tbm_calculate_entries(i64 %57)
  store i64 %58, i64* %19, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %77

61:                                               ; preds = %40
  %62 = load double, double* %17, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sitofp i32 %63 to double
  %65 = fmul double %62, %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @get_indexpath_pages(i32* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = call double @index_pages_fetched(double %65, i32 %68, i32 %70, i32* %71)
  store double %72, double* %16, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sitofp i32 %73 to double
  %75 = load double, double* %16, align 8
  %76 = fdiv double %75, %74
  store double %76, double* %16, align 8
  br label %77

77:                                               ; preds = %61, %40
  %78 = load double, double* %16, align 8
  %79 = load double, double* %15, align 8
  %80 = fcmp oge double %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load double, double* %15, align 8
  store double %82, double* %16, align 8
  br label %86

83:                                               ; preds = %77
  %84 = load double, double* %16, align 8
  %85 = call double @llvm.ceil.f64(double %84)
  store double %85, double* %16, align 8
  br label %86

86:                                               ; preds = %83, %81
  %87 = load i64, i64* %19, align 8
  %88 = sitofp i64 %87 to double
  %89 = load double, double* %18, align 8
  %90 = fcmp olt double %88, %89
  br i1 %90, label %91, label %123

91:                                               ; preds = %86
  %92 = load double, double* %18, align 8
  %93 = load i64, i64* %19, align 8
  %94 = sdiv i64 %93, 2
  %95 = sitofp i64 %94 to double
  %96 = fsub double %92, %95
  %97 = call double @Max(i32 0, double %96)
  store double %97, double* %21, align 8
  %98 = load double, double* %18, align 8
  %99 = load double, double* %21, align 8
  %100 = fsub double %98, %99
  store double %100, double* %20, align 8
  %101 = load double, double* %21, align 8
  %102 = fcmp ogt double %101, 0.000000e+00
  br i1 %102, label %103, label %122

103:                                              ; preds = %91
  %104 = load double, double* %14, align 8
  %105 = load double, double* %20, align 8
  %106 = load double, double* %18, align 8
  %107 = fdiv double %105, %106
  %108 = fmul double %104, %107
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load double, double* %110, align 8
  %112 = fmul double %108, %111
  %113 = load double, double* %21, align 8
  %114 = load double, double* %18, align 8
  %115 = fdiv double %113, %114
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load double, double* %117, align 8
  %119 = fmul double %115, %118
  %120 = fadd double %112, %119
  %121 = call double @clamp_row_est(double %120)
  store double %121, double* %17, align 8
  br label %122

122:                                              ; preds = %103, %91
  br label %123

123:                                              ; preds = %122, %86
  %124 = load i32*, i32** %11, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = load i32*, i32** %11, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %123
  %130 = load double*, double** %12, align 8
  %131 = icmp ne double* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load double, double* %17, align 8
  %134 = load double*, double** %12, align 8
  store double %133, double* %134, align 8
  br label %135

135:                                              ; preds = %132, %129
  %136 = load double, double* %16, align 8
  ret double %136
}

declare dso_local i32 @cost_bitmap_tree_node(i32*, i32*, double*) #1

declare dso_local double @clamp_row_est(double) #1

declare dso_local double @Min(double, i32) #1

declare dso_local i64 @tbm_calculate_entries(i64) #1

declare dso_local double @index_pages_fetched(double, i32, i32, i32*) #1

declare dso_local i32 @get_indexpath_pages(i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

declare dso_local double @Max(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
