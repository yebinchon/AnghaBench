; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/median/extr_median.c_grouping_flush_median.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/median/extr_median.c_grouping_flush_median.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.grouping_median = type { i32, i64* }

@RRDR_VALUE_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @grouping_flush_median(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.grouping_median*, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.grouping_median*
  store %struct.grouping_median* %11, %struct.grouping_median** %5, align 8
  %12 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %13 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  store double 0.000000e+00, double* %6, align 8
  %21 = load i32, i32* @RRDR_VALUE_EMPTY, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %63

25:                                               ; preds = %2
  %26 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %27 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %32 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %35 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sort_series(i64* %33, i32 %36)
  %38 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %39 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %42 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @median_on_sorted_series(i64* %40, i32 %43)
  %45 = sitofp i64 %44 to double
  store double %45, double* %6, align 8
  br label %53

46:                                               ; preds = %25
  %47 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %48 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = sitofp i64 %51 to double
  store double %52, double* %6, align 8
  br label %53

53:                                               ; preds = %46, %30
  %54 = load double, double* %6, align 8
  %55 = call i32 @calculated_number_isnumber(double %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  store double 0.000000e+00, double* %6, align 8
  %58 = load i32, i32* @RRDR_VALUE_EMPTY, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %53
  br label %63

63:                                               ; preds = %62, %20
  %64 = load %struct.grouping_median*, %struct.grouping_median** %5, align 8
  %65 = getelementptr inbounds %struct.grouping_median, %struct.grouping_median* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load double, double* %6, align 8
  ret double %66
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sort_series(i64*, i32) #1

declare dso_local i64 @median_on_sorted_series(i64*, i32) #1

declare dso_local i32 @calculated_number_isnumber(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
