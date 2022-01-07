; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_orderedsetaggs.c_percentile_cont_final_common.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_orderedsetaggs.c_percentile_cont_final_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@AGG_CONTEXT_AGGREGATE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"percentile value %g is not between 0 and 1\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"missing row in percentile_cont\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32 (i32, i32, double)*)* @percentile_cont_final_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @percentile_cont_final_common(i32 %0, i64 %1, i32 (i32, i32, double)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32 (i32, i32, double)*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 (i32, i32, double)* %2, i32 (i32, i32, double)** %7, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @AggCheckCallContext(i32 %17, i32* null)
  %19 = load i64, i64* @AGG_CONTEXT_AGGREGATE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = call i64 @PG_ARGISNULL(i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 (...) @PG_RETURN_NULL()
  br label %27

27:                                               ; preds = %25, %3
  %28 = call double @PG_GETARG_FLOAT8(i32 1)
  store double %28, double* %9, align 8
  %29 = load double, double* %9, align 8
  %30 = fcmp olt double %29, 0.000000e+00
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load double, double* %9, align 8
  %33 = fcmp ogt double %32, 1.000000e+00
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load double, double* %9, align 8
  %36 = call i64 @isnan(double %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %31, %27
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = load double, double* %9, align 8
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), double %42)
  %44 = call i32 @ereport(i32 %39, i32 %43)
  br label %45

45:                                               ; preds = %38, %34
  %46 = call i64 @PG_ARGISNULL(i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (...) @PG_RETURN_NULL()
  br label %50

50:                                               ; preds = %48, %45
  %51 = call i64 @PG_GETARG_POINTER(i32 0)
  %52 = inttoptr i64 %51 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %8, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 (...) @PG_RETURN_NULL()
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %60, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %59
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @tuplesort_performsort(i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  br label %85

80:                                               ; preds = %59
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @tuplesort_rescan(i32 %83)
  br label %85

85:                                               ; preds = %80, %73
  %86 = load double, double* %9, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = sitofp i32 %90 to double
  %92 = fmul double %86, %91
  %93 = call double @llvm.floor.f64(double %92)
  store double %93, double* %10, align 8
  %94 = load double, double* %9, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = sitofp i32 %98 to double
  %100 = fmul double %94, %99
  %101 = call double @llvm.ceil.f64(double %100)
  store double %101, double* %11, align 8
  %102 = load double, double* %10, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sitofp i32 %105 to double
  %107 = fcmp olt double %102, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @Assert(i32 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load double, double* %10, align 8
  %114 = call i32 @tuplesort_skiptuples(i32 %112, double %113, i32 1)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %85
  %117 = load i32, i32* @ERROR, align 4
  %118 = call i32 @elog(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %85
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @tuplesort_getdatum(i32 %122, i32 1, i32* %13, i32* %16, i32* null)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* @ERROR, align 4
  %127 = call i32 @elog(i32 %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 (...) @PG_RETURN_NULL()
  br label %133

133:                                              ; preds = %131, %128
  %134 = load double, double* %10, align 8
  %135 = load double, double* %11, align 8
  %136 = fcmp oeq double %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %12, align 4
  br label %168

139:                                              ; preds = %133
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @tuplesort_getdatum(i32 %142, i32 1, i32* %14, i32* %16, i32* null)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* @ERROR, align 4
  %147 = call i32 @elog(i32 %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %139
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call i32 (...) @PG_RETURN_NULL()
  br label %153

153:                                              ; preds = %151, %148
  %154 = load double, double* %9, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  %159 = sitofp i32 %158 to double
  %160 = fmul double %154, %159
  %161 = load double, double* %10, align 8
  %162 = fsub double %160, %161
  store double %162, double* %15, align 8
  %163 = load i32 (i32, i32, double)*, i32 (i32, i32, double)** %7, align 8
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load double, double* %15, align 8
  %167 = call i32 %163(i32 %164, i32 %165, double %166)
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %153, %137
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @PG_RETURN_DATUM(i32 %169)
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @AggCheckCallContext(i32, i32*) #1

declare dso_local i64 @PG_ARGISNULL(i32) #1

declare dso_local i32 @PG_RETURN_NULL(...) #1

declare dso_local double @PG_GETARG_FLOAT8(i32) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, double) #1

declare dso_local i64 @PG_GETARG_POINTER(i32) #1

declare dso_local i32 @tuplesort_performsort(i32) #1

declare dso_local i32 @tuplesort_rescan(i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

declare dso_local i32 @tuplesort_skiptuples(i32, double, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @tuplesort_getdatum(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @PG_RETURN_DATUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
