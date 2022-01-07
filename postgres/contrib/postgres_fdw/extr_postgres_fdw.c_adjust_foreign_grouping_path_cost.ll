; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_adjust_foreign_grouping_path_cost.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_adjust_foreign_grouping_path_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { double, double }

@work_mem = common dso_local global i32 0, align 4
@DEFAULT_FDW_SORT_MULTIPLIER = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, double, double, double, double*, double*)* @adjust_foreign_grouping_path_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_foreign_grouping_path_cost(%struct.TYPE_8__* %0, i32* %1, double %2, double %3, double %4, double* %5, double* %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca double, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double* %5, double** %13, align 8
  store double* %6, double** %14, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @grouping_is_sortable(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %7
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pathkeys_contained_in(i32* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %24, %7
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load double*, double** %13, align 8
  %35 = load double, double* %34, align 8
  %36 = load double*, double** %14, align 8
  %37 = load double, double* %36, align 8
  %38 = fadd double %35, %37
  %39 = load double, double* %10, align 8
  %40 = load double, double* %11, align 8
  %41 = load i32, i32* @work_mem, align 4
  %42 = load double, double* %12, align 8
  %43 = call i32 @cost_sort(%struct.TYPE_9__* %15, %struct.TYPE_8__* %32, i32* %33, double %38, double %39, double %40, double 0.000000e+00, i32 %41, double %42)
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = load double*, double** %13, align 8
  store double %45, double* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %48 = load double, double* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = fsub double %48, %50
  %52 = load double*, double** %14, align 8
  store double %51, double* %52, align 8
  br label %66

53:                                               ; preds = %24
  %54 = load double, double* @DEFAULT_FDW_SORT_MULTIPLIER, align 8
  %55 = fsub double %54, 1.000000e+00
  %56 = fmul double %55, 2.500000e-01
  %57 = fadd double 1.000000e+00, %56
  store double %57, double* %16, align 8
  %58 = load double, double* %16, align 8
  %59 = load double*, double** %13, align 8
  %60 = load double, double* %59, align 8
  %61 = fmul double %60, %58
  store double %61, double* %59, align 8
  %62 = load double, double* %16, align 8
  %63 = load double*, double** %14, align 8
  %64 = load double, double* %63, align 8
  %65 = fmul double %64, %62
  store double %65, double* %63, align 8
  br label %66

66:                                               ; preds = %53, %31
  ret void
}

declare dso_local i32 @grouping_is_sortable(i32) #1

declare dso_local i32 @pathkeys_contained_in(i32*, i32) #1

declare dso_local i32 @cost_sort(%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, double, double, double, double, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
