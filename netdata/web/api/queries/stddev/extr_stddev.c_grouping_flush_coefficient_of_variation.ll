; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/stddev/extr_stddev.c_grouping_flush_coefficient_of_variation.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/stddev/extr_stddev.c_grouping_flush_coefficient_of_variation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.grouping_stddev = type { i32 }

@RRDR_VALUE_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @grouping_flush_coefficient_of_variation(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.grouping_stddev*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.grouping_stddev*
  store %struct.grouping_stddev* %12, %struct.grouping_stddev** %5, align 8
  %13 = load %struct.grouping_stddev*, %struct.grouping_stddev** %5, align 8
  %14 = getelementptr inbounds %struct.grouping_stddev, %struct.grouping_stddev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %2
  %21 = load %struct.grouping_stddev*, %struct.grouping_stddev** %5, align 8
  %22 = call double @mean(%struct.grouping_stddev* %21)
  store double %22, double* %7, align 8
  %23 = load %struct.grouping_stddev*, %struct.grouping_stddev** %5, align 8
  %24 = call double @stddev(%struct.grouping_stddev* %23)
  %25 = fmul double 1.000000e+02, %24
  %26 = load double, double* %7, align 8
  %27 = fcmp olt double %26, 0.000000e+00
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load double, double* %7, align 8
  %30 = fneg double %29
  br label %33

31:                                               ; preds = %20
  %32 = load double, double* %7, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi double [ %30, %28 ], [ %32, %31 ]
  %35 = fdiv double %25, %34
  store double %35, double* %6, align 8
  %36 = load double, double* %6, align 8
  %37 = call i32 @calculated_number_isnumber(double %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  store double 0.000000e+00, double* %6, align 8
  %44 = load i32, i32* @RRDR_VALUE_EMPTY, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %33
  br label %61

49:                                               ; preds = %2
  %50 = load %struct.grouping_stddev*, %struct.grouping_stddev** %5, align 8
  %51 = getelementptr inbounds %struct.grouping_stddev, %struct.grouping_stddev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store double 0.000000e+00, double* %6, align 8
  br label %60

55:                                               ; preds = %49
  store double 0.000000e+00, double* %6, align 8
  %56 = load i32, i32* @RRDR_VALUE_EMPTY, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %54
  br label %61

61:                                               ; preds = %60, %48
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = call i32 @grouping_reset_stddev(%struct.TYPE_6__* %62)
  %64 = load double, double* %6, align 8
  ret double %64
}

declare dso_local i64 @likely(i32) #1

declare dso_local double @mean(%struct.grouping_stddev*) #1

declare dso_local double @stddev(%struct.grouping_stddev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @calculated_number_isnumber(double) #1

declare dso_local i32 @grouping_reset_stddev(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
