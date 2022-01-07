; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_estimate_rel_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_estimate_rel_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, double, double, i32 }

@SizeofHeapTupleHeader = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@SizeOfPageHeaderData = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @estimate_rel_size(%struct.TYPE_8__* %0, i32* %1, double* %2, double* %3, double* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %148 [
    i32 130, label %22
    i32 131, label %22
    i32 128, label %22
    i32 132, label %29
    i32 129, label %130
    i32 133, label %134
  ]

22:                                               ; preds = %5, %5, %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load double*, double** %8, align 8
  %26 = load double*, double** %9, align 8
  %27 = load double*, double** %10, align 8
  %28 = call i32 @table_relation_estimate_size(%struct.TYPE_8__* %23, i32* %24, double* %25, double* %26, double* %27)
  br label %152

29:                                               ; preds = %5
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = call double @RelationGetNumberOfBlocks(%struct.TYPE_8__* %30)
  store double %31, double* %11, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load double, double* %35, align 8
  store double %36, double* %12, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load double, double* %40, align 8
  store double %41, double* %13, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = sitofp i32 %46 to double
  store double %47, double* %14, align 8
  %48 = load double, double* %11, align 8
  %49 = load double*, double** %8, align 8
  store double %48, double* %49, align 8
  %50 = load double, double* %11, align 8
  %51 = fcmp oeq double %50, 0.000000e+00
  br i1 %51, label %52, label %55

52:                                               ; preds = %29
  %53 = load double*, double** %9, align 8
  store double 0.000000e+00, double* %53, align 8
  %54 = load double*, double** %10, align 8
  store double 0.000000e+00, double* %54, align 8
  br label %152

55:                                               ; preds = %29
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load double, double* %59, align 8
  store double %60, double* %12, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load double, double* %64, align 8
  store double %65, double* %13, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = sitofp i32 %70 to double
  store double %71, double* %14, align 8
  %72 = load double, double* %12, align 8
  %73 = fcmp ogt double %72, 0.000000e+00
  br i1 %73, label %74, label %79

74:                                               ; preds = %55
  %75 = load double, double* %11, align 8
  %76 = fadd double %75, -1.000000e+00
  store double %76, double* %11, align 8
  %77 = load double, double* %12, align 8
  %78 = fadd double %77, -1.000000e+00
  store double %78, double* %12, align 8
  br label %79

79:                                               ; preds = %74, %55
  %80 = load double, double* %12, align 8
  %81 = fcmp ogt double %80, 0.000000e+00
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load double, double* %13, align 8
  %84 = load double, double* %12, align 8
  %85 = fdiv double %83, %84
  store double %85, double* %15, align 8
  br label %104

86:                                               ; preds = %79
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @get_rel_data_width(%struct.TYPE_8__* %87, i32* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* @SizeofHeapTupleHeader, align 4
  %91 = call i32 @MAXALIGN(i32 %90)
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, 4
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* @BLCKSZ, align 4
  %99 = load i32, i32* @SizeOfPageHeaderData, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %16, align 4
  %102 = sdiv i32 %100, %101
  %103 = sitofp i32 %102 to double
  store double %103, double* %15, align 8
  br label %104

104:                                              ; preds = %86, %82
  %105 = load double, double* %15, align 8
  %106 = load double, double* %11, align 8
  %107 = fmul double %105, %106
  %108 = call double @llvm.rint.f64(double %107)
  %109 = load double*, double** %9, align 8
  store double %108, double* %109, align 8
  %110 = load double, double* %14, align 8
  %111 = fcmp oeq double %110, 0.000000e+00
  br i1 %111, label %115, label %112

112:                                              ; preds = %104
  %113 = load double, double* %11, align 8
  %114 = fcmp ole double %113, 0.000000e+00
  br i1 %114, label %115, label %117

115:                                              ; preds = %112, %104
  %116 = load double*, double** %10, align 8
  store double 0.000000e+00, double* %116, align 8
  br label %129

117:                                              ; preds = %112
  %118 = load double, double* %14, align 8
  %119 = load double, double* %11, align 8
  %120 = fcmp oge double %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load double*, double** %10, align 8
  store double 1.000000e+00, double* %122, align 8
  br label %128

123:                                              ; preds = %117
  %124 = load double, double* %14, align 8
  %125 = load double, double* %11, align 8
  %126 = fdiv double %124, %125
  %127 = load double*, double** %10, align 8
  store double %126, double* %127, align 8
  br label %128

128:                                              ; preds = %123, %121
  br label %129

129:                                              ; preds = %128, %115
  br label %152

130:                                              ; preds = %5
  %131 = load double*, double** %8, align 8
  store double 1.000000e+00, double* %131, align 8
  %132 = load double*, double** %9, align 8
  store double 1.000000e+00, double* %132, align 8
  %133 = load double*, double** %10, align 8
  store double 0.000000e+00, double* %133, align 8
  br label %152

134:                                              ; preds = %5
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load double, double* %138, align 8
  %140 = load double*, double** %8, align 8
  store double %139, double* %140, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load double, double* %144, align 8
  %146 = load double*, double** %9, align 8
  store double %145, double* %146, align 8
  %147 = load double*, double** %10, align 8
  store double 0.000000e+00, double* %147, align 8
  br label %152

148:                                              ; preds = %5
  %149 = load double*, double** %8, align 8
  store double 0.000000e+00, double* %149, align 8
  %150 = load double*, double** %9, align 8
  store double 0.000000e+00, double* %150, align 8
  %151 = load double*, double** %10, align 8
  store double 0.000000e+00, double* %151, align 8
  br label %152

152:                                              ; preds = %148, %134, %130, %129, %52, %22
  ret void
}

declare dso_local i32 @table_relation_estimate_size(%struct.TYPE_8__*, i32*, double*, double*, double*) #1

declare dso_local double @RelationGetNumberOfBlocks(%struct.TYPE_8__*) #1

declare dso_local i32 @get_rel_data_width(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @MAXALIGN(i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
