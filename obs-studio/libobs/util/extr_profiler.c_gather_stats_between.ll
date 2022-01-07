; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_gather_stats_between.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_gather_stats_between.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { double, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, double, double, double, double, double, double*, double*, double*, double*)* @gather_stats_between to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_stats_between(%struct.TYPE_5__* %0, double %1, double %2, double %3, double %4, double %5, double* %6, double* %7, double* %8, double* %9) #0 {
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store double %1, double* %12, align 8
  store double %2, double* %13, align 8
  store double %3, double* %14, align 8
  store double %4, double* %15, align 8
  store double %5, double* %16, align 8
  store double* %6, double** %17, align 8
  store double* %7, double** %18, align 8
  store double* %8, double** %19, align 8
  store double* %9, double** %20, align 8
  %27 = load double*, double** %17, align 8
  store double 0.000000e+00, double* %27, align 8
  %28 = load double*, double** %18, align 8
  store double 0.000000e+00, double* %28, align 8
  %29 = load double*, double** %19, align 8
  store double 0.000000e+00, double* %29, align 8
  %30 = load double*, double** %20, align 8
  store double 0.000000e+00, double* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %10
  br label %165

36:                                               ; preds = %10
  store double 0.000000e+00, double* %21, align 8
  store i64 0, i64* %22, align 8
  br label %37

37:                                               ; preds = %68, %36
  %38 = load i64, i64* %22, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %37
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* %22, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to double
  %52 = load double, double* %21, align 8
  %53 = fadd double %52, %51
  store double %53, double* %21, align 8
  %54 = load double, double* %21, align 8
  %55 = load double, double* %12, align 8
  %56 = fmul double %55, 5.000000e-01
  %57 = fcmp olt double %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %68

59:                                               ; preds = %43
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i64, i64* %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = load double*, double** %17, align 8
  store double %66, double* %67, align 8
  br label %71

68:                                               ; preds = %58
  %69 = load i64, i64* %22, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %22, align 8
  br label %37

71:                                               ; preds = %59, %37
  %72 = load double, double* %16, align 8
  %73 = load double, double* %14, align 8
  %74 = fcmp ole double %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %76 = load double, double* %15, align 8
  %77 = load double, double* %14, align 8
  %78 = fcmp oge double %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load double*, double** %20, align 8
  store double 1.000000e+02, double* %80, align 8
  br label %165

81:                                               ; preds = %71
  %82 = load i32, i32* %23, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load double, double* %15, align 8
  %86 = load double, double* %13, align 8
  %87 = fcmp oge double %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load double*, double** %18, align 8
  store double 1.000000e+02, double* %89, align 8
  br label %165

90:                                               ; preds = %84, %81
  store double 0.000000e+00, double* %21, align 8
  store i64 0, i64* %25, align 8
  br label %91

91:                                               ; preds = %141, %90
  %92 = load i64, i64* %25, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %144

97:                                               ; preds = %91
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* %25, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load double, double* %103, align 8
  store double %104, double* %26, align 8
  %105 = load i32, i32* %23, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %97
  %108 = load double, double* %26, align 8
  %109 = load double, double* %14, align 8
  %110 = fcmp ole double %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load double, double* %21, align 8
  %113 = load double, double* %12, align 8
  %114 = fdiv double %112, %113
  %115 = fmul double %114, 1.000000e+02
  %116 = load double*, double** %20, align 8
  store double %115, double* %116, align 8
  store double 0.000000e+00, double* %21, align 8
  store i32 1, i32* %23, align 4
  br label %117

117:                                              ; preds = %111, %107, %97
  %118 = load i32, i32* %24, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %117
  %121 = load double, double* %26, align 8
  %122 = load double, double* %13, align 8
  %123 = fcmp olt double %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load double, double* %21, align 8
  %126 = load double, double* %12, align 8
  %127 = fdiv double %125, %126
  %128 = fmul double %127, 1.000000e+02
  %129 = load double*, double** %18, align 8
  store double %128, double* %129, align 8
  store double 0.000000e+00, double* %21, align 8
  store i32 1, i32* %24, align 4
  br label %130

130:                                              ; preds = %124, %120, %117
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i64, i64* %25, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = sitofp i64 %137 to double
  %139 = load double, double* %21, align 8
  %140 = fadd double %139, %138
  store double %140, double* %21, align 8
  br label %141

141:                                              ; preds = %130
  %142 = load i64, i64* %25, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %25, align 8
  br label %91

144:                                              ; preds = %91
  %145 = load i32, i32* %23, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = load double*, double** %20, align 8
  store double 1.000000e+02, double* %148, align 8
  br label %165

149:                                              ; preds = %144
  %150 = load i32, i32* %24, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = load double, double* %21, align 8
  %154 = load double, double* %12, align 8
  %155 = fdiv double %153, %154
  %156 = fmul double %155, 1.000000e+02
  %157 = load double*, double** %18, align 8
  store double %156, double* %157, align 8
  br label %164

158:                                              ; preds = %149
  %159 = load double, double* %21, align 8
  %160 = load double, double* %12, align 8
  %161 = fdiv double %159, %160
  %162 = fmul double %161, 1.000000e+02
  %163 = load double*, double** %19, align 8
  store double %162, double* %163, align 8
  br label %164

164:                                              ; preds = %158, %152
  br label %165

165:                                              ; preds = %35, %79, %88, %164, %147
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
