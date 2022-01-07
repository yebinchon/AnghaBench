; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-throttle.c_throttler_next_batch.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-throttle.c_throttler_next_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Throttler = type { double, i32, i32, double, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @throttler_next_batch(%struct.Throttler* %0, i64 %1) #0 {
  %3 = alloca %struct.Throttler*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store %struct.Throttler* %0, %struct.Throttler** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %13 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  store double %14, double* %10, align 8
  br label %15

15:                                               ; preds = %91, %60, %2
  %16 = call i64 (...) @pixie_gettime()
  store i64 %16, i64* %5, align 8
  %17 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %18 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 255
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %24 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %23, i32 0, i32 6
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %22, i64* %28, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %31 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %30, i32 0, i32 6
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 %29, i64* %35, align 8
  %36 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %37 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = and i32 %39, 255
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %6, align 8
  %42 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %43 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %42, i32 0, i32 6
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  %49 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %50 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %49, i32 0, i32 6
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %56, %57
  %59 = icmp ugt i64 %58, 1000000
  br i1 %59, label %60, label %63

60:                                               ; preds = %15
  %61 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %62 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  br label %15

63:                                               ; preds = %15
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %8, align 8
  %66 = sub i64 %64, %65
  %67 = uitofp i64 %66 to double
  %68 = fmul double 1.000000e+00, %67
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %7, align 8
  %71 = sub i64 %69, %70
  %72 = uitofp i64 %71 to double
  %73 = fdiv double %72, 1.000000e+06
  %74 = fdiv double %68, %73
  store double %74, double* %9, align 8
  %75 = load double, double* %9, align 8
  %76 = load double, double* %10, align 8
  %77 = fcmp ogt double %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %63
  %79 = load double, double* %9, align 8
  %80 = load double, double* %10, align 8
  %81 = fsub double %79, %80
  %82 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %83 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %82, i32 0, i32 0
  %84 = load double, double* %83, align 8
  %85 = fdiv double %81, %84
  store double %85, double* %11, align 8
  %86 = load double, double* %11, align 8
  %87 = fmul double %86, 1.000000e-01
  store double %87, double* %11, align 8
  %88 = load double, double* %11, align 8
  %89 = fcmp ogt double %88, 1.000000e-01
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  store double 1.000000e-01, double* %11, align 8
  br label %91

91:                                               ; preds = %90, %78
  %92 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %93 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sitofp i32 %94 to double
  %96 = fmul double %95, 0x3FEFF7CED916872B
  %97 = fptosi double %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load double, double* %11, align 8
  %99 = fmul double %98, 1.000000e+06
  %100 = fptoui double %99 to i64
  %101 = call i32 @pixie_usleep(i64 %100)
  br label %15

102:                                              ; preds = %63
  %103 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %104 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sitofp i32 %105 to double
  %107 = fmul double %106, 1.005000e+00
  %108 = fptosi double %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %110 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 10000
  br i1 %112, label %113, label %116

113:                                              ; preds = %102
  %114 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %115 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %114, i32 0, i32 2
  store i32 10000, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %102
  %117 = load double, double* %9, align 8
  %118 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %119 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %118, i32 0, i32 3
  store double %117, double* %119, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %122 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %121, i32 0, i32 4
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %4, align 8
  %124 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %125 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %124, i32 0, i32 5
  store i64 %123, i64* %125, align 8
  %126 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %127 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  ret i64 %129
}

declare dso_local i64 @pixie_gettime(...) #1

declare dso_local i32 @pixie_usleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
