; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_rescan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_rescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, double, double, double, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@cpu_tuple_cost = common dso_local global double 0.000000e+00, align 8
@work_mem = common dso_local global i64 0, align 8
@BLCKSZ = common dso_local global double 0.000000e+00, align 8
@seq_page_cost = common dso_local global double 0.000000e+00, align 8
@cpu_operator_cost = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, double*, double*)* @cost_rescan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cost_rescan(i32* %0, %struct.TYPE_6__* %1, double* %2, double* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %126 [
    i32 132, label %20
    i32 131, label %30
    i32 133, label %56
    i32 128, label %56
    i32 130, label %91
    i32 129, label %91
  ]

20:                                               ; preds = %4
  %21 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load double, double* %26, align 8
  %28 = fsub double %24, %27
  %29 = load double*, double** %8, align 8
  store double %28, double* %29, align 8
  br label %135

30:                                               ; preds = %4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = bitcast %struct.TYPE_6__* %31 to %struct.TYPE_7__*
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load double, double* %42, align 8
  %44 = fsub double %40, %43
  %45 = load double*, double** %8, align 8
  store double %44, double* %45, align 8
  br label %55

46:                                               ; preds = %30
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load double, double* %48, align 8
  %50 = load double*, double** %7, align 8
  store double %49, double* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load double, double* %52, align 8
  %54 = load double*, double** %8, align 8
  store double %53, double* %54, align 8
  br label %55

55:                                               ; preds = %46, %36
  br label %135

56:                                               ; preds = %4, %4
  %57 = load double, double* @cpu_tuple_cost, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load double, double* %59, align 8
  %61 = fmul double %57, %60
  store double %61, double* %9, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load double, double* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call double @relation_byte_size(double %64, i32 %69)
  store double %70, double* %10, align 8
  %71 = load i64, i64* @work_mem, align 8
  %72 = mul nsw i64 %71, 1024
  store i64 %72, i64* %11, align 8
  %73 = load double, double* %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = sitofp i64 %74 to double
  %76 = fcmp ogt double %73, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %56
  %78 = load double, double* %10, align 8
  %79 = load double, double* @BLCKSZ, align 8
  %80 = fdiv double %78, %79
  %81 = call double @llvm.ceil.f64(double %80)
  store double %81, double* %12, align 8
  %82 = load double, double* @seq_page_cost, align 8
  %83 = load double, double* %12, align 8
  %84 = fmul double %82, %83
  %85 = load double, double* %9, align 8
  %86 = fadd double %85, %84
  store double %86, double* %9, align 8
  br label %87

87:                                               ; preds = %77, %56
  %88 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %88, align 8
  %89 = load double, double* %9, align 8
  %90 = load double*, double** %8, align 8
  store double %89, double* %90, align 8
  br label %135

91:                                               ; preds = %4, %4
  %92 = load double, double* @cpu_operator_cost, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load double, double* %94, align 8
  %96 = fmul double %92, %95
  store double %96, double* %13, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load double, double* %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call double @relation_byte_size(double %99, i32 %104)
  store double %105, double* %14, align 8
  %106 = load i64, i64* @work_mem, align 8
  %107 = mul nsw i64 %106, 1024
  store i64 %107, i64* %15, align 8
  %108 = load double, double* %14, align 8
  %109 = load i64, i64* %15, align 8
  %110 = sitofp i64 %109 to double
  %111 = fcmp ogt double %108, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %91
  %113 = load double, double* %14, align 8
  %114 = load double, double* @BLCKSZ, align 8
  %115 = fdiv double %113, %114
  %116 = call double @llvm.ceil.f64(double %115)
  store double %116, double* %16, align 8
  %117 = load double, double* @seq_page_cost, align 8
  %118 = load double, double* %16, align 8
  %119 = fmul double %117, %118
  %120 = load double, double* %13, align 8
  %121 = fadd double %120, %119
  store double %121, double* %13, align 8
  br label %122

122:                                              ; preds = %112, %91
  %123 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %123, align 8
  %124 = load double, double* %13, align 8
  %125 = load double*, double** %8, align 8
  store double %124, double* %125, align 8
  br label %135

126:                                              ; preds = %4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load double, double* %128, align 8
  %130 = load double*, double** %7, align 8
  store double %129, double* %130, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load double, double* %132, align 8
  %134 = load double*, double** %8, align 8
  store double %133, double* %134, align 8
  br label %135

135:                                              ; preds = %126, %122, %87, %55, %20
  ret void
}

declare dso_local double @relation_byte_size(double, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
