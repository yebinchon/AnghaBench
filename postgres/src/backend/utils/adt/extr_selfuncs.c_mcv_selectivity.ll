; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_mcv_selectivity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_mcv_selectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64*, i32*, i32 }

@STATISTIC_KIND_MCV = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@ATTSTATSSLOT_NUMBERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @mcv_selectivity(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, double* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store double* %4, double** %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @HeapTupleIsValid(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %100

20:                                               ; preds = %5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @statistic_proc_security_check(%struct.TYPE_10__* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %100

27:                                               ; preds = %20
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %32 = load i32, i32* @InvalidOid, align 4
  %33 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %34 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @get_attstatsslot(%struct.TYPE_12__* %13, i32 %30, i32 %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %100

38:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %95, %38
  %40 = load i32, i32* %14, align 4
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %98

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @FunctionCall2Coll(%struct.TYPE_11__* %48, i32 %50, i32 %56, i32 %57)
  %59 = call i64 @DatumGetBool(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %75, label %85

61:                                               ; preds = %44
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @FunctionCall2Coll(%struct.TYPE_11__* %62, i32 %64, i32 %65, i32 %71)
  %73 = call i64 @DatumGetBool(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %61, %47
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = sitofp i64 %81 to double
  %83 = load double, double* %11, align 8
  %84 = fadd double %83, %82
  store double %84, double* %11, align 8
  br label %85

85:                                               ; preds = %75, %61, %47
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to double
  %93 = load double, double* %12, align 8
  %94 = fadd double %93, %92
  store double %94, double* %12, align 8
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %39

98:                                               ; preds = %39
  %99 = call i32 @free_attstatsslot(%struct.TYPE_12__* %13)
  br label %100

100:                                              ; preds = %98, %27, %20, %5
  %101 = load double, double* %12, align 8
  %102 = load double*, double** %10, align 8
  store double %101, double* %102, align 8
  %103 = load double, double* %11, align 8
  ret double %103
}

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @statistic_proc_security_check(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i64 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCall2Coll(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
