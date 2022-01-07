; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_calc_arraycontsel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_calc_arraycontsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { double }
%struct.TYPE_17__ = type { i32, i32*, i32, i32* }

@TYPECACHE_CMP_PROC_FINFO = common dso_local global i32 0, align 4
@STATISTIC_KIND_MCELEM = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@ATTSTATSSLOT_NUMBERS = common dso_local global i32 0, align 4
@OID_ARRAY_CONTAINED_OP = common dso_local global i32 0, align 4
@STATISTIC_KIND_DECHIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_13__*, i64, i32, i32)* @calc_arraycontsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_arraycontsel(%struct.TYPE_13__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_17__, align 8
  %16 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @TYPECACHE_CMP_PROC_FINFO, align 4
  %19 = call %struct.TYPE_14__* @lookup_type_cache(i32 %17, i32 %18)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %11, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @OidIsValid(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = call double @DEFAULT_SEL(i32 %27)
  store double %28, double* %5, align 8
  br label %123

29:                                               ; preds = %4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %12, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32* @DatumGetArrayTypeP(i64 %32)
  store i32* %33, i32** %13, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @HeapTupleIsValid(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %108

39:                                               ; preds = %29
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @statistic_proc_security_check(%struct.TYPE_13__* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %108

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @GETSTRUCT(i32 %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %14, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @STATISTIC_KIND_MCELEM, align 4
  %56 = load i32, i32* @InvalidOid, align 4
  %57 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %58 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %59 = or i32 %57, %58
  %60 = call i64 @get_attstatsslot(%struct.TYPE_17__* %15, i32 %54, i32 %55, i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %46
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @OID_ARRAY_CONTAINED_OP, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @STATISTIC_KIND_DECHIST, align 4
  %71 = load i32, i32* @InvalidOid, align 4
  %72 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %73 = call i64 @get_attstatsslot(%struct.TYPE_17__* %16, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %66, %62
  %76 = call i32 @memset(%struct.TYPE_17__* %16, i32 0, i32 32)
  br label %77

77:                                               ; preds = %75, %66
  %78 = load i32*, i32** %13, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call double @mcelem_array_selec(i32* %78, %struct.TYPE_14__* %79, i32* %81, i32 %83, i32* %85, i32 %87, i32* %89, i32 %91, i32 %92)
  store double %93, double* %10, align 8
  %94 = call i32 @free_attstatsslot(%struct.TYPE_17__* %16)
  %95 = call i32 @free_attstatsslot(%struct.TYPE_17__* %15)
  br label %101

96:                                               ; preds = %46
  %97 = load i32*, i32** %13, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call double @mcelem_array_selec(i32* %97, %struct.TYPE_14__* %98, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32 %99)
  store double %100, double* %10, align 8
  br label %101

101:                                              ; preds = %96, %77
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = fsub double 1.000000e+00, %104
  %106 = load double, double* %10, align 8
  %107 = fmul double %106, %105
  store double %107, double* %10, align 8
  br label %113

108:                                              ; preds = %39, %29
  %109 = load i32*, i32** %13, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call double @mcelem_array_selec(i32* %109, %struct.TYPE_14__* %110, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32 %111)
  store double %112, double* %10, align 8
  br label %113

113:                                              ; preds = %108, %101
  %114 = load i32*, i32** %13, align 8
  %115 = call i64 @PointerGetDatum(i32* %114)
  %116 = load i64, i64* %7, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @pfree(i32* %119)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load double, double* %10, align 8
  store double %122, double* %5, align 8
  br label %123

123:                                              ; preds = %121, %26
  %124 = load double, double* %5, align 8
  ret double %124
}

declare dso_local %struct.TYPE_14__* @lookup_type_cache(i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local double @DEFAULT_SEL(i32) #1

declare dso_local i32* @DatumGetArrayTypeP(i64) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @statistic_proc_security_check(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local double @mcelem_array_selec(i32*, %struct.TYPE_14__*, i32*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_17__*) #1

declare dso_local i64 @PointerGetDatum(i32*) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
