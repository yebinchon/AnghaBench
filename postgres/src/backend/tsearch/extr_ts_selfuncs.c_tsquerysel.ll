; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_selfuncs.c_tsquerysel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_selfuncs.c_tsquerysel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { double }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@STATISTIC_KIND_MCELEM = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@ATTSTATSSLOT_NUMBERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_11__*, i32)* @tsquerysel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @tsquerysel(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_12__* @DatumGetTSQuery(i32 %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @HeapTupleIsValid(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %17
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @GETSTRUCT(i32 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @STATISTIC_KIND_MCELEM, align 4
  %33 = load i32, i32* @InvalidOid, align 4
  %34 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %35 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @get_attstatsslot(%struct.TYPE_14__* %9, i32 %31, i32 %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %23
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call double @mcelem_tsquery_selec(%struct.TYPE_12__* %40, i32 %42, i32 %44, i32 %46, i32 %48)
  store double %49, double* %6, align 8
  %50 = call i32 @free_attstatsslot(%struct.TYPE_14__* %9)
  br label %54

51:                                               ; preds = %23
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = call double @tsquery_opr_selec_no_stats(%struct.TYPE_12__* %52)
  store double %53, double* %6, align 8
  br label %54

54:                                               ; preds = %51, %39
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = fsub double 1.000000e+00, %57
  %59 = load double, double* %6, align 8
  %60 = fmul double %59, %58
  store double %60, double* %6, align 8
  br label %64

61:                                               ; preds = %17
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = call double @tsquery_opr_selec_no_stats(%struct.TYPE_12__* %62)
  store double %63, double* %6, align 8
  br label %64

64:                                               ; preds = %61, %54
  %65 = load double, double* %6, align 8
  store double %65, double* %3, align 8
  br label %66

66:                                               ; preds = %64, %16
  %67 = load double, double* %3, align 8
  ret double %67
}

declare dso_local %struct.TYPE_12__* @DatumGetTSQuery(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local double @mcelem_tsquery_selec(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_14__*) #1

declare dso_local double @tsquery_opr_selec_no_stats(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
