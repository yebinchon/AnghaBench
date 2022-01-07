; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/table/extr_tableam.c_table_block_relation_estimate_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/table/extr_tableam.c_table_block_relation_estimate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @table_block_relation_estimate_size(%struct.TYPE_7__* %0, double* %1, i32* %2, double* %3, double* %4, double %5, double %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store double* %1, double** %9, align 8
  store i32* %2, i32** %10, align 8
  store double* %3, double** %11, align 8
  store double* %4, double** %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = call i32 @RelationGetNumberOfBlocks(%struct.TYPE_7__* %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sitofp i64 %33 to double
  store double %34, double* %17, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %54

43:                                               ; preds = %7
  %44 = load i32, i32* %16, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  store i32 10, i32* %15, align 4
  br label %54

54:                                               ; preds = %53, %46, %43, %7
  %55 = load i32, i32* %15, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load double*, double** %11, align 8
  store double 0.000000e+00, double* %60, align 8
  %61 = load double*, double** %12, align 8
  store double 0.000000e+00, double* %61, align 8
  br label %110

62:                                               ; preds = %54
  %63 = load i32, i32* %16, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load double, double* %17, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %66, %68
  store double %69, double* %19, align 8
  br label %80

70:                                               ; preds = %62
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = load double*, double** %9, align 8
  %73 = call double @get_rel_data_width(%struct.TYPE_7__* %71, double* %72)
  store double %73, double* %20, align 8
  %74 = load double, double* %13, align 8
  %75 = load double, double* %20, align 8
  %76 = fadd double %75, %74
  store double %76, double* %20, align 8
  %77 = load double, double* %14, align 8
  %78 = load double, double* %20, align 8
  %79 = fdiv double %77, %78
  store double %79, double* %19, align 8
  br label %80

80:                                               ; preds = %70, %65
  %81 = load double, double* %19, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sitofp i32 %82 to double
  %84 = fmul double %81, %83
  %85 = call double @llvm.rint.f64(double %84)
  %86 = load double*, double** %11, align 8
  store double %85, double* %86, align 8
  %87 = load i32, i32* %18, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %15, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89, %80
  %93 = load double*, double** %12, align 8
  store double 0.000000e+00, double* %93, align 8
  br label %110

94:                                               ; preds = %89
  %95 = load i32, i32* %18, align 4
  %96 = sitofp i32 %95 to double
  %97 = load i32, i32* %15, align 4
  %98 = sitofp i32 %97 to double
  %99 = fcmp oge double %96, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load double*, double** %12, align 8
  store double 1.000000e+00, double* %101, align 8
  br label %109

102:                                              ; preds = %94
  %103 = load i32, i32* %18, align 4
  %104 = sitofp i32 %103 to double
  %105 = load i32, i32* %15, align 4
  %106 = sitofp i32 %105 to double
  %107 = fdiv double %104, %106
  %108 = load double*, double** %12, align 8
  store double %107, double* %108, align 8
  br label %109

109:                                              ; preds = %102, %100
  br label %110

110:                                              ; preds = %59, %109, %92
  ret void
}

declare dso_local i32 @RelationGetNumberOfBlocks(%struct.TYPE_7__*) #1

declare dso_local double @get_rel_data_width(%struct.TYPE_7__*, double*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
