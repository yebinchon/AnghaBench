; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_prefix_selectivity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_prefix_selectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@BTGreaterEqualStrategyNumber = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no >= operator for opfamily %u\00", align 1
@DEFAULT_MATCH_SEL = common dso_local global double 0.000000e+00, align 8
@STATISTIC_KIND_HISTOGRAM = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i32 0, align 4
@BTLessStrategyNumber = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"no < operator for opfamily %u\00", align 1
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"no = operator for opfamily %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, %struct.TYPE_11__*, i64, i64, %struct.TYPE_12__*)* @prefix_selectivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @prefix_selectivity(i32* %0, %struct.TYPE_11__* %1, i64 %2, i64 %3, %struct.TYPE_12__* %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @BTGreaterEqualStrategyNumber, align 4
  %23 = call i64 @get_opfamily_member(i64 %19, i64 %20, i64 %21, i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @InvalidOid, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %27, %5
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @get_opcode(i64 %32)
  %34 = call i32 @fmgr_info(i32 %33, i32* %14)
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call double @ineq_histogram_selectivity(i32* %35, %struct.TYPE_11__* %36, i32* %14, i32 1, i32 1, i32 %39, i32 %42)
  store double %43, double* %12, align 8
  %44 = load double, double* %12, align 8
  %45 = fcmp olt double %44, 0.000000e+00
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load double, double* @DEFAULT_MATCH_SEL, align 8
  store double %47, double* %6, align 8
  br label %131

48:                                               ; preds = %31
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @HeapTupleIsValid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @STATISTIC_KIND_HISTOGRAM, align 4
  %59 = load i64, i64* @InvalidOid, align 8
  %60 = call i64 @get_attstatsslot(%struct.TYPE_13__* %15, i32 %57, i32 %58, i64 %59, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %66

63:                                               ; preds = %54, %48
  %64 = load i32, i32* @DEFAULT_COLLATION_OID, align 4
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* @BTLessStrategyNumber, align 4
  %71 = call i64 @get_opfamily_member(i64 %67, i64 %68, i64 %69, i32 %70)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @InvalidOid, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @elog(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %75, %66
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @get_opcode(i64 %80)
  %82 = call i32 @fmgr_info(i32 %81, i32* %14)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.TYPE_12__* @make_greater_string(%struct.TYPE_12__* %83, i32* %14, i32 %85)
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %16, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %88 = icmp ne %struct.TYPE_12__* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %79
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call double @ineq_histogram_selectivity(i32* %90, %struct.TYPE_11__* %91, i32* %14, i32 0, i32 0, i32 %94, i32 %97)
  store double %98, double* %18, align 8
  %99 = load double, double* %18, align 8
  %100 = fcmp oge double %99, 0.000000e+00
  %101 = zext i1 %100 to i32
  %102 = call i32 @Assert(i32 %101)
  %103 = load double, double* %18, align 8
  %104 = load double, double* %12, align 8
  %105 = fadd double %103, %104
  %106 = fsub double %105, 1.000000e+00
  store double %106, double* %12, align 8
  br label %107

107:                                              ; preds = %89, %79
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* @BTEqualStrategyNumber, align 4
  %112 = call i64 @get_opfamily_member(i64 %108, i64 %109, i64 %110, i32 %111)
  store i64 %112, i64* %13, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* @InvalidOid, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load i32, i32* @ERROR, align 4
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @elog(i32 %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %116, %107
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call double @var_eq_const(%struct.TYPE_11__* %121, i64 %122, i32 %125, i32 0, i32 1, i32 0)
  store double %126, double* %17, align 8
  %127 = load double, double* %12, align 8
  %128 = load double, double* %17, align 8
  %129 = call double @Max(double %127, double %128)
  store double %129, double* %12, align 8
  %130 = load double, double* %12, align 8
  store double %130, double* %6, align 8
  br label %131

131:                                              ; preds = %120, %46
  %132 = load double, double* %6, align 8
  ret double %132
}

declare dso_local i64 @get_opfamily_member(i64, i64, i64, i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @fmgr_info(i32, i32*) #1

declare dso_local i32 @get_opcode(i64) #1

declare dso_local double @ineq_histogram_selectivity(i32*, %struct.TYPE_11__*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_13__*, i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_12__* @make_greater_string(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local double @var_eq_const(%struct.TYPE_11__*, i64, i32, i32, i32, i32) #1

declare dso_local double @Max(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
