; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_pathnode.c_compare_fractional_path_costs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_pathnode.c_compare_fractional_path_costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, double }

@TOTAL_COST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare_fractional_path_costs(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store double %2, double* %7, align 8
  %10 = load double, double* %7, align 8
  %11 = fcmp ole double %10, 0.000000e+00
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load double, double* %7, align 8
  %14 = fcmp oge double %13, 1.000000e+00
  br i1 %14, label %15, label %20

15:                                               ; preds = %12, %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load i32, i32* @TOTAL_COST, align 4
  %19 = call i32 @compare_path_costs(%struct.TYPE_6__* %16, %struct.TYPE_6__* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %12
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sitofp i64 %23 to double
  %25 = load double, double* %7, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to double
  %33 = fsub double %28, %32
  %34 = fmul double %25, %33
  %35 = fadd double %24, %34
  %36 = fptosi double %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sitofp i64 %39 to double
  %41 = load double, double* %7, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sitofp i64 %47 to double
  %49 = fsub double %44, %48
  %50 = fmul double %41, %49
  %51 = fadd double %40, %50
  %52 = fptosi double %51 to i64
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %63

57:                                               ; preds = %20
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  br label %63

62:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %56, %15
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @compare_path_costs(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
