; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_convert_timevalue_to_scalar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_convert_timevalue_to_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, i32 }
%struct.TYPE_5__ = type { double, i32 }

@USECS_PER_DAY = common dso_local global double 0.000000e+00, align 8
@DAYS_PER_YEAR = common dso_local global double 0.000000e+00, align 8
@MONTHS_PER_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, i32, i32*)* @convert_timevalue_to_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @convert_timevalue_to_scalar(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %60 [
    i32 130, label %11
    i32 129, label %14
    i32 133, label %17
    i32 132, label %21
    i32 131, label %45
    i32 128, label %48
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call double @DatumGetTimestamp(i32 %12)
  store double %13, double* %4, align 8
  br label %62

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call double @DatumGetTimestampTz(i32 %15)
  store double %16, double* %4, align 8
  br label %62

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DatumGetDateADT(i32 %18)
  %20 = call double @date2timestamp_no_overflow(i32 %19)
  store double %20, double* %4, align 8
  br label %62

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.TYPE_6__* @DatumGetIntervalP(i32 %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = sitofp i32 %26 to double
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load double, double* @USECS_PER_DAY, align 8
  %32 = fmul double %30, %31
  %33 = fadd double %27, %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = load double, double* @DAYS_PER_YEAR, align 8
  %38 = load i64, i64* @MONTHS_PER_YEAR, align 8
  %39 = sitofp i64 %38 to double
  %40 = fdiv double %37, %39
  %41 = load double, double* @USECS_PER_DAY, align 8
  %42 = fmul double %40, %41
  %43 = fmul double %36, %42
  %44 = fadd double %33, %43
  store double %44, double* %4, align 8
  br label %62

45:                                               ; preds = %3
  %46 = load i32, i32* %5, align 4
  %47 = call double @DatumGetTimeADT(i32 %46)
  store double %47, double* %4, align 8
  br label %62

48:                                               ; preds = %3
  %49 = load i32, i32* %5, align 4
  %50 = call %struct.TYPE_5__* @DatumGetTimeTzADTP(i32 %49)
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %9, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sitofp i32 %53 to double
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = fmul double %57, 1.000000e+06
  %59 = fadd double %54, %58
  store double %59, double* %4, align 8
  br label %62

60:                                               ; preds = %3
  %61 = load i32*, i32** %7, align 8
  store i32 1, i32* %61, align 4
  store double 0.000000e+00, double* %4, align 8
  br label %62

62:                                               ; preds = %60, %48, %45, %21, %17, %14, %11
  %63 = load double, double* %4, align 8
  ret double %63
}

declare dso_local double @DatumGetTimestamp(i32) #1

declare dso_local double @DatumGetTimestampTz(i32) #1

declare dso_local double @date2timestamp_no_overflow(i32) #1

declare dso_local i32 @DatumGetDateADT(i32) #1

declare dso_local %struct.TYPE_6__* @DatumGetIntervalP(i32) #1

declare dso_local double @DatumGetTimeADT(i32) #1

declare dso_local %struct.TYPE_5__* @DatumGetTimeTzADTP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
