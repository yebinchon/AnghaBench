; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/average/extr_average.c_grouping_flush_average.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/average/extr_average.c_grouping_flush_average.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, double, i64 }
%struct.grouping_average = type { double, double }

@RRDR_VALUE_EMPTY = common dso_local global i32 0, align 4
@RRDR_RESULT_OPTION_VARIABLE_STEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @grouping_flush_average(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.grouping_average*, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.grouping_average*
  store %struct.grouping_average* %11, %struct.grouping_average** %5, align 8
  %12 = load %struct.grouping_average*, %struct.grouping_average** %5, align 8
  %13 = getelementptr inbounds %struct.grouping_average, %struct.grouping_average* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fcmp une double %14, 0.000000e+00
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
  br label %74

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %25
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RRDR_RESULT_OPTION_VARIABLE_STEP, align 4
  %39 = and i32 %37, %38
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load %struct.grouping_average*, %struct.grouping_average** %5, align 8
  %44 = getelementptr inbounds %struct.grouping_average, %struct.grouping_average* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = load %struct.grouping_average*, %struct.grouping_average** %5, align 8
  %47 = getelementptr inbounds %struct.grouping_average, %struct.grouping_average* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = fdiv double %45, %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load double, double* %52, align 8
  %54 = fdiv double %49, %53
  store double %54, double* %6, align 8
  br label %64

55:                                               ; preds = %34
  %56 = load %struct.grouping_average*, %struct.grouping_average** %5, align 8
  %57 = getelementptr inbounds %struct.grouping_average, %struct.grouping_average* %56, i32 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load double, double* %61, align 8
  %63 = fdiv double %58, %62
  store double %63, double* %6, align 8
  br label %64

64:                                               ; preds = %55, %42
  br label %73

65:                                               ; preds = %25
  %66 = load %struct.grouping_average*, %struct.grouping_average** %5, align 8
  %67 = getelementptr inbounds %struct.grouping_average, %struct.grouping_average* %66, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = load %struct.grouping_average*, %struct.grouping_average** %5, align 8
  %70 = getelementptr inbounds %struct.grouping_average, %struct.grouping_average* %69, i32 0, i32 0
  %71 = load double, double* %70, align 8
  %72 = fdiv double %68, %71
  store double %72, double* %6, align 8
  br label %73

73:                                               ; preds = %65, %64
  br label %74

74:                                               ; preds = %73, %20
  %75 = load %struct.grouping_average*, %struct.grouping_average** %5, align 8
  %76 = getelementptr inbounds %struct.grouping_average, %struct.grouping_average* %75, i32 0, i32 1
  store double 0.000000e+00, double* %76, align 8
  %77 = load %struct.grouping_average*, %struct.grouping_average** %5, align 8
  %78 = getelementptr inbounds %struct.grouping_average, %struct.grouping_average* %77, i32 0, i32 0
  store double 0.000000e+00, double* %78, align 8
  %79 = load double, double* %6, align 8
  ret double %79
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
