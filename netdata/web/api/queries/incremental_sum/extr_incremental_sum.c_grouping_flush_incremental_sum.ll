; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/incremental_sum/extr_incremental_sum.c_grouping_flush_incremental_sum.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/incremental_sum/extr_incremental_sum.c_grouping_flush_incremental_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.grouping_incremental_sum = type { i32, double, double }

@RRDR_VALUE_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @grouping_flush_incremental_sum(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.grouping_incremental_sum*, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.grouping_incremental_sum*
  store %struct.grouping_incremental_sum* %11, %struct.grouping_incremental_sum** %5, align 8
  %12 = load %struct.grouping_incremental_sum*, %struct.grouping_incremental_sum** %5, align 8
  %13 = getelementptr inbounds %struct.grouping_incremental_sum, %struct.grouping_incremental_sum* %12, i32 0, i32 0
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
  br label %43

25:                                               ; preds = %2
  %26 = load %struct.grouping_incremental_sum*, %struct.grouping_incremental_sum** %5, align 8
  %27 = getelementptr inbounds %struct.grouping_incremental_sum, %struct.grouping_incremental_sum* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store double 0.000000e+00, double* %6, align 8
  br label %42

34:                                               ; preds = %25
  %35 = load %struct.grouping_incremental_sum*, %struct.grouping_incremental_sum** %5, align 8
  %36 = getelementptr inbounds %struct.grouping_incremental_sum, %struct.grouping_incremental_sum* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load %struct.grouping_incremental_sum*, %struct.grouping_incremental_sum** %5, align 8
  %39 = getelementptr inbounds %struct.grouping_incremental_sum, %struct.grouping_incremental_sum* %38, i32 0, i32 2
  %40 = load double, double* %39, align 8
  %41 = fsub double %37, %40
  store double %41, double* %6, align 8
  br label %42

42:                                               ; preds = %34, %33
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.grouping_incremental_sum*, %struct.grouping_incremental_sum** %5, align 8
  %45 = getelementptr inbounds %struct.grouping_incremental_sum, %struct.grouping_incremental_sum* %44, i32 0, i32 2
  store double 0.000000e+00, double* %45, align 8
  %46 = load %struct.grouping_incremental_sum*, %struct.grouping_incremental_sum** %5, align 8
  %47 = getelementptr inbounds %struct.grouping_incremental_sum, %struct.grouping_incremental_sum* %46, i32 0, i32 1
  store double 0.000000e+00, double* %47, align 8
  %48 = load %struct.grouping_incremental_sum*, %struct.grouping_incremental_sum** %5, align 8
  %49 = getelementptr inbounds %struct.grouping_incremental_sum, %struct.grouping_incremental_sum* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load double, double* %6, align 8
  ret double %50
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
