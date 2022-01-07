; ModuleID = '/home/carl/AnghaBench/postgres/contrib/earthdistance/extr_earthdistance.c_geo_distance_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/earthdistance/extr_earthdistance.c_geo_distance_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@M_PI = common dso_local global double 0.000000e+00, align 8
@TWO_PI = common dso_local global double 0.000000e+00, align 8
@EARTH_RADIUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_4__*, %struct.TYPE_4__*)* @geo_distance_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @geo_distance_internal(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call double @degtorad(i32 %13)
  store double %14, double* %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call double @degtorad(i32 %17)
  store double %18, double* %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call double @degtorad(i32 %21)
  store double %22, double* %7, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call double @degtorad(i32 %25)
  store double %26, double* %8, align 8
  %27 = load double, double* %5, align 8
  %28 = load double, double* %7, align 8
  %29 = fsub double %27, %28
  %30 = call i32 @fabs(double %29)
  %31 = sitofp i32 %30 to double
  store double %31, double* %9, align 8
  %32 = load double, double* %9, align 8
  %33 = load double, double* @M_PI, align 8
  %34 = fcmp ogt double %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load double, double* @TWO_PI, align 8
  %37 = load double, double* %9, align 8
  %38 = fsub double %36, %37
  store double %38, double* %9, align 8
  br label %39

39:                                               ; preds = %35, %2
  %40 = load double, double* %6, align 8
  %41 = load double, double* %8, align 8
  %42 = fsub double %40, %41
  %43 = call i32 @fabs(double %42)
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 2.000000e+00
  %46 = call i32 @sin(double %45)
  %47 = load double, double* %6, align 8
  %48 = load double, double* %8, align 8
  %49 = fsub double %47, %48
  %50 = call i32 @fabs(double %49)
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %51, 2.000000e+00
  %53 = call i32 @sin(double %52)
  %54 = mul nsw i32 %46, %53
  %55 = load double, double* %6, align 8
  %56 = call i32 @cos(double %55)
  %57 = load double, double* %8, align 8
  %58 = call i32 @cos(double %57)
  %59 = mul nsw i32 %56, %58
  %60 = load double, double* %9, align 8
  %61 = fdiv double %60, 2.000000e+00
  %62 = call i32 @sin(double %61)
  %63 = mul nsw i32 %59, %62
  %64 = load double, double* %9, align 8
  %65 = fdiv double %64, 2.000000e+00
  %66 = call i32 @sin(double %65)
  %67 = mul nsw i32 %63, %66
  %68 = add nsw i32 %54, %67
  %69 = call double @sqrt(i32 %68)
  store double %69, double* %10, align 8
  %70 = load double, double* %10, align 8
  %71 = fcmp ogt double %70, 1.000000e+00
  br i1 %71, label %72, label %73

72:                                               ; preds = %39
  store double 1.000000e+00, double* %10, align 8
  br label %73

73:                                               ; preds = %72, %39
  %74 = load i32, i32* @EARTH_RADIUS, align 4
  %75 = sitofp i32 %74 to double
  %76 = fmul double 2.000000e+00, %75
  %77 = load double, double* %10, align 8
  %78 = call i32 @asin(double %77)
  %79 = sitofp i32 %78 to double
  %80 = fmul double %76, %79
  ret double %80
}

declare dso_local double @degtorad(i32) #1

declare dso_local i32 @fabs(double) #1

declare dso_local double @sqrt(i32) #1

declare dso_local i32 @sin(double) #1

declare dso_local i32 @cos(double) #1

declare dso_local i32 @asin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
