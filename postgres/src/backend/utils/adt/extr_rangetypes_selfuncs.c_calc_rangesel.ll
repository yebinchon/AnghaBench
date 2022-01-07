; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_calc_rangesel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_calc_rangesel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { double }
%struct.TYPE_10__ = type { i32, double* }

@STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_NUMBERS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid empty fraction statistic\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unexpected operator %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, %struct.TYPE_8__*, i32*, i32)* @calc_rangesel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_rangesel(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @HeapTupleIsValid(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @GETSTRUCT(i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %13, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  store double %28, double* %12, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM, align 4
  %33 = load i32, i32* @InvalidOid, align 4
  %34 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %35 = call i64 @get_attstatsslot(%struct.TYPE_10__* %14, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 (i32, i8*, ...) @elog(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds double, double* %46, i64 0
  %48 = load double, double* %47, align 8
  store double %48, double* %11, align 8
  %49 = call i32 @free_attstatsslot(%struct.TYPE_10__* %14)
  br label %51

50:                                               ; preds = %20
  store double 0.000000e+00, double* %11, align 8
  br label %51

51:                                               ; preds = %50, %44
  br label %53

52:                                               ; preds = %4
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %11, align 8
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @RangeIsEmpty(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  switch i32 %58, label %67 [
    i32 129, label %59
    i32 131, label %59
    i32 130, label %59
    i32 134, label %59
    i32 128, label %59
    i32 132, label %59
    i32 139, label %60
    i32 133, label %60
    i32 137, label %62
    i32 136, label %62
    i32 135, label %63
    i32 138, label %66
  ]

59:                                               ; preds = %57, %57, %57, %57, %57, %57
  store double 0.000000e+00, double* %10, align 8
  br label %71

60:                                               ; preds = %57, %57
  %61 = load double, double* %11, align 8
  store double %61, double* %10, align 8
  br label %71

62:                                               ; preds = %57, %57
  store double 1.000000e+00, double* %10, align 8
  br label %71

63:                                               ; preds = %57
  %64 = load double, double* %11, align 8
  %65 = fsub double 1.000000e+00, %64
  store double %65, double* %10, align 8
  br label %71

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %57, %66
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i32, i8*, ...) @elog(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store double 0.000000e+00, double* %10, align 8
  br label %71

71:                                               ; preds = %67, %63, %62, %60, %59
  br label %99

72:                                               ; preds = %53
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call double @calc_hist_selectivity(i32* %73, %struct.TYPE_8__* %74, i32* %75, i32 %76)
  store double %77, double* %9, align 8
  %78 = load double, double* %9, align 8
  %79 = fcmp olt double %78, 0.000000e+00
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %8, align 4
  %82 = call double @default_range_selectivity(i32 %81)
  store double %82, double* %9, align 8
  br label %83

83:                                               ; preds = %80, %72
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 139
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load double, double* %11, align 8
  %88 = fsub double 1.000000e+00, %87
  %89 = load double, double* %9, align 8
  %90 = fmul double %88, %89
  %91 = load double, double* %11, align 8
  %92 = fadd double %90, %91
  store double %92, double* %10, align 8
  br label %98

93:                                               ; preds = %83
  %94 = load double, double* %11, align 8
  %95 = fsub double 1.000000e+00, %94
  %96 = load double, double* %9, align 8
  %97 = fmul double %95, %96
  store double %97, double* %10, align 8
  br label %98

98:                                               ; preds = %93, %86
  br label %99

99:                                               ; preds = %98, %71
  %100 = load double, double* %12, align 8
  %101 = fsub double 1.000000e+00, %100
  %102 = load double, double* %10, align 8
  %103 = fmul double %102, %101
  store double %103, double* %10, align 8
  %104 = load double, double* %10, align 8
  %105 = call i32 @CLAMP_PROBABILITY(double %104)
  %106 = load double, double* %10, align 8
  ret double %106
}

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_10__*) #1

declare dso_local i64 @RangeIsEmpty(i32*) #1

declare dso_local double @calc_hist_selectivity(i32*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local double @default_range_selectivity(i32) #1

declare dso_local i32 @CLAMP_PROBABILITY(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
