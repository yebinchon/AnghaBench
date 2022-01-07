; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_histogram_selectivity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_histogram_selectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32*, i32 }

@STATISTIC_KIND_HISTOGRAM = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @histogram_selectivity(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %19 = load i32, i32* %13, align 4
  %20 = icmp sge i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = mul nsw i32 2, %24
  %26 = icmp sgt i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @HeapTupleIsValid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %118

34:                                               ; preds = %7
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @statistic_proc_security_check(%struct.TYPE_10__* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %118

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @STATISTIC_KIND_HISTOGRAM, align 4
  %46 = load i32, i32* @InvalidOid, align 4
  %47 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %48 = call i64 @get_attstatsslot(%struct.TYPE_12__* %16, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %118

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %14, align 8
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %115

58:                                               ; preds = %50
  store i32 0, i32* %17, align 4
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %18, align 4
  br label %60

60:                                               ; preds = %102, %58
  %61 = load i32, i32* %18, align 4
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %63, %64
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %105

67:                                               ; preds = %60
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @FunctionCall2Coll(%struct.TYPE_11__* %71, i32 %73, i32 %79, i32 %80)
  %82 = call i64 @DatumGetBool(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %98, label %101

84:                                               ; preds = %67
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @FunctionCall2Coll(%struct.TYPE_11__* %85, i32 %87, i32 %88, i32 %94)
  %96 = call i64 @DatumGetBool(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %84, %70
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %98, %84, %70
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %18, align 4
  br label %60

105:                                              ; preds = %60
  %106 = load i32, i32* %17, align 4
  %107 = sitofp i32 %106 to double
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = mul nsw i32 2, %110
  %112 = sub nsw i32 %109, %111
  %113 = sitofp i32 %112 to double
  %114 = fdiv double %107, %113
  store double %114, double* %15, align 8
  br label %116

115:                                              ; preds = %50
  store double -1.000000e+00, double* %15, align 8
  br label %116

116:                                              ; preds = %115, %105
  %117 = call i32 @free_attstatsslot(%struct.TYPE_12__* %16)
  br label %120

118:                                              ; preds = %41, %34, %7
  %119 = load i32*, i32** %14, align 8
  store i32 0, i32* %119, align 4
  store double -1.000000e+00, double* %15, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = load double, double* %15, align 8
  ret double %121
}

declare dso_local i32 @Assert(i32) #1

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
