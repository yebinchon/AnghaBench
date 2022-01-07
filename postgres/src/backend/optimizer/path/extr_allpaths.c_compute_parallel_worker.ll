; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_compute_parallel_worker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_compute_parallel_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@RELOPT_BASEREL = common dso_local global i64 0, align 8
@min_parallel_table_scan_size = common dso_local global double 0.000000e+00, align 8
@min_parallel_index_scan_size = common dso_local global double 0.000000e+00, align 8
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_parallel_worker(%struct.TYPE_3__* %0, double %1, double %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  br label %103

23:                                               ; preds = %4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RELOPT_BASEREL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load double, double* %7, align 8
  %31 = fcmp oge double %30, 0.000000e+00
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load double, double* %7, align 8
  %34 = load double, double* @min_parallel_table_scan_size, align 8
  %35 = fcmp olt double %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %32, %29
  %37 = load double, double* %8, align 8
  %38 = fcmp oge double %37, 0.000000e+00
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load double, double* %8, align 8
  %41 = load double, double* @min_parallel_index_scan_size, align 8
  %42 = fcmp olt double %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %32
  store i32 0, i32* %5, align 4
  br label %108

44:                                               ; preds = %39, %36, %23
  %45 = load double, double* %7, align 8
  %46 = fcmp oge double %45, 0.000000e+00
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  %48 = load double, double* @min_parallel_table_scan_size, align 8
  %49 = call i32 @Max(double %48, i32 1)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %66, %47
  %51 = load double, double* %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = mul nsw i32 %52, 3
  %54 = sitofp i32 %53 to double
  %55 = fcmp oge double %51, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 %59, 3
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @INT_MAX, align 4
  %63 = sdiv i32 %62, 3
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %67

66:                                               ; preds = %56
  br label %50

67:                                               ; preds = %65, %50
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %67, %44
  %70 = load double, double* %8, align 8
  %71 = fcmp oge double %70, 0.000000e+00
  br i1 %71, label %72, label %102

72:                                               ; preds = %69
  store i32 1, i32* %13, align 4
  %73 = load double, double* @min_parallel_index_scan_size, align 8
  %74 = call i32 @Max(double %73, i32 1)
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %91, %72
  %76 = load double, double* %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = mul nsw i32 %77, 3
  %79 = sitofp i32 %78 to double
  %80 = fcmp oge double %76, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = mul nsw i32 %84, 3
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @INT_MAX, align 4
  %88 = sdiv i32 %87, 3
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %92

91:                                               ; preds = %81
  br label %75

92:                                               ; preds = %90, %75
  %93 = load i32, i32* %10, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @Min(i32 %96, i32 %97)
  store i32 %98, i32* %10, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %99, %95
  br label %102

102:                                              ; preds = %101, %69
  br label %103

103:                                              ; preds = %102, %19
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @Min(i32 %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %103, %43
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @Max(double, i32) #1

declare dso_local i32 @Min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
