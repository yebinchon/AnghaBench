; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_tm2interval.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_tm2interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { double, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { double, i64, i32 }

@MONTHS_PER_YEAR = common dso_local global double 0.000000e+00, align 8
@INT_MAX = common dso_local global double 0.000000e+00, align 8
@INT_MIN = common dso_local global double 0.000000e+00, align 8
@USECS_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm2interval(%struct.pg_tm* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pg_tm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca double, align 8
  store %struct.pg_tm* %0, %struct.pg_tm** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %10 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = sitofp i64 %11 to double
  %13 = load double, double* @MONTHS_PER_YEAR, align 8
  %14 = fmul double %12, %13
  %15 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %16 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = fadd double %14, %17
  store double %18, double* %8, align 8
  %19 = load double, double* %8, align 8
  %20 = load double, double* @INT_MAX, align 8
  %21 = fcmp ogt double %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load double, double* %8, align 8
  %24 = load double, double* @INT_MIN, align 8
  %25 = fcmp olt double %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %3
  store i32 -1, i32* %4, align 4
  br label %58

27:                                               ; preds = %22
  %28 = load double, double* %8, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store double %28, double* %30, align 8
  %31 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %32 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %37 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @INT64CONST(i32 60)
  %40 = mul nsw i32 %38, %39
  %41 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %42 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = call i32 @INT64CONST(i32 60)
  %46 = mul nsw i32 %44, %45
  %47 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %48 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %46, %49
  %51 = load i32, i32* @USECS_PER_SEC, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %27, %26
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @INT64CONST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
