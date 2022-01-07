; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_gather_stats.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_gather_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, %struct.TYPE_5__*, double, double*, double*, double*)* @gather_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_stats(double %0, %struct.TYPE_5__* %1, double %2, double* %3, double* %4, double* %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  store double %0, double* %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store double %2, double* %9, align 8
  store double* %3, double** %10, align 8
  store double* %4, double** %11, align 8
  store double* %5, double** %12, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load double*, double** %10, align 8
  store double 0.000000e+00, double* %23, align 8
  %24 = load double*, double** %11, align 8
  store double 0.000000e+00, double* %24, align 8
  %25 = load double*, double** %12, align 8
  store double 0.000000e+00, double* %25, align 8
  br label %126

26:                                               ; preds = %6
  store double 0.000000e+00, double* %13, align 8
  store i64 0, i64* %14, align 8
  br label %27

27:                                               ; preds = %83, %26
  %28 = load i64, i64* %14, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %27
  %34 = load double, double* %13, align 8
  store double %34, double* %15, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = load double, double* %13, align 8
  %43 = fadd double %42, %41
  store double %43, double* %13, align 8
  %44 = load double, double* %15, align 8
  %45 = load double, double* %9, align 8
  %46 = fmul double %45, 1.000000e-02
  %47 = fcmp olt double %44, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %33
  %49 = load double, double* %13, align 8
  %50 = load double, double* %9, align 8
  %51 = fmul double %50, 1.000000e-02
  %52 = fcmp oge double %49, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load double, double* %59, align 8
  %61 = load double*, double** %10, align 8
  store double %60, double* %61, align 8
  br label %82

62:                                               ; preds = %48, %33
  %63 = load double, double* %15, align 8
  %64 = load double, double* %9, align 8
  %65 = fmul double %64, 5.000000e-01
  %66 = fcmp olt double %63, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load double, double* %13, align 8
  %69 = load double, double* %9, align 8
  %70 = fmul double %69, 5.000000e-01
  %71 = fcmp oge double %68, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load double, double* %78, align 8
  %80 = load double*, double** %11, align 8
  store double %79, double* %80, align 8
  br label %86

81:                                               ; preds = %67, %62
  br label %82

82:                                               ; preds = %81, %53
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %14, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %14, align 8
  br label %27

86:                                               ; preds = %72, %27
  %87 = load double*, double** %12, align 8
  store double 0.000000e+00, double* %87, align 8
  %88 = load double, double* %7, align 8
  %89 = fcmp une double %88, 0.000000e+00
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %126

91:                                               ; preds = %86
  store double 0.000000e+00, double* %13, align 8
  store i64 0, i64* %16, align 8
  br label %92

92:                                               ; preds = %116, %91
  %93 = load i64, i64* %16, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %93, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %92
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i64, i64* %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %102
  store %struct.TYPE_4__* %103, %struct.TYPE_4__** %17, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load double, double* %105, align 8
  %107 = load double, double* %7, align 8
  %108 = fcmp olt double %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %119

110:                                              ; preds = %98
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load double, double* %112, align 8
  %114 = load double, double* %13, align 8
  %115 = fadd double %114, %113
  store double %115, double* %13, align 8
  br label %116

116:                                              ; preds = %110
  %117 = load i64, i64* %16, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %16, align 8
  br label %92

119:                                              ; preds = %109, %92
  %120 = load double, double* %13, align 8
  %121 = load double, double* %9, align 8
  %122 = fdiv double %120, %121
  %123 = fsub double 1.000000e+00, %122
  %124 = fmul double %123, 1.000000e+02
  %125 = load double*, double** %12, align 8
  store double %124, double* %125, align 8
  br label %126

126:                                              ; preds = %119, %90, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
