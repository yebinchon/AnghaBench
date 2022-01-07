; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/prep/extr_prepunion.c_choose_hashed_setop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/prep/extr_prepunion.c_choose_hashed_setop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { double }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not implement %s\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"Some of the datatypes only support hashing, while others only support sorting.\00", align 1
@enable_hashagg = common dso_local global i32 0, align 4
@SizeofMinimalTupleHeader = common dso_local global i32 0, align 4
@work_mem = common dso_local global i64 0, align 8
@AGG_HASHED = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, %struct.TYPE_16__*, double, double, i8*)* @choose_hashed_setop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_hashed_setop(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_16__* %2, double %3, double %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca %struct.TYPE_16__, align 8
  %19 = alloca %struct.TYPE_16__, align 8
  %20 = alloca double, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store i8* %5, i8** %13, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @list_length(i32* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @grouping_is_sortable(i32* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @grouping_is_hashable(i32* %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %51

33:                                               ; preds = %29, %6
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %138

37:                                               ; preds = %33
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %138

41:                                               ; preds = %37
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = call i32 @errdetail(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* @enable_hashagg, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %138

55:                                               ; preds = %51
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call double @MAXALIGN(i32 %60)
  %62 = load i32, i32* @SizeofMinimalTupleHeader, align 4
  %63 = call double @MAXALIGN(i32 %62)
  %64 = fadd double %61, %63
  store double %64, double* %17, align 8
  %65 = load double, double* %17, align 8
  %66 = load double, double* %11, align 8
  %67 = fmul double %65, %66
  %68 = load i64, i64* @work_mem, align 8
  %69 = mul nsw i64 %68, 1024
  %70 = sitofp i64 %69 to double
  %71 = fcmp ogt double %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %138

73:                                               ; preds = %55
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %75 = load i32, i32* @AGG_HASHED, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load double, double* %11, align 8
  %78 = load i32, i32* @NIL, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @cost_agg(%struct.TYPE_16__* %18, %struct.TYPE_15__* %74, i32 %75, i32* null, i32 %76, double %77, i32 %78, i32 %81, i32 %84, i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %98 = load i32, i32* @NIL, align 4
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* @work_mem, align 8
  %110 = call i32 @cost_sort(%struct.TYPE_16__* %19, %struct.TYPE_15__* %97, i32 %98, i32 %100, i32 %103, i32 %108, double 0.000000e+00, i64 %109, double -1.000000e+00)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load double, double* %11, align 8
  %114 = load i32, i32* @NIL, align 4
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @cost_group(%struct.TYPE_16__* %19, %struct.TYPE_15__* %111, i32 %112, double %113, i32 %114, i32 %116, i32 %118, i32 %121)
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load double, double* %124, align 8
  store double %125, double* %20, align 8
  %126 = load double, double* %20, align 8
  %127 = fcmp oge double %126, 1.000000e+00
  br i1 %127, label %128, label %132

128:                                              ; preds = %73
  %129 = load double, double* %12, align 8
  %130 = load double, double* %20, align 8
  %131 = fdiv double %130, %129
  store double %131, double* %20, align 8
  br label %132

132:                                              ; preds = %128, %73
  %133 = load double, double* %20, align 8
  %134 = call i64 @compare_fractional_path_costs(%struct.TYPE_16__* %18, %struct.TYPE_16__* %19, double %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 1, i32* %7, align 4
  br label %138

137:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %137, %136, %72, %54, %40, %36
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @grouping_is_sortable(i32*) #1

declare dso_local i32 @grouping_is_hashable(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local double @MAXALIGN(i32) #1

declare dso_local i32 @cost_agg(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32*, i32, double, i32, i32, i32, i32) #1

declare dso_local i32 @cost_sort(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32, i32, i32, double, i64, double) #1

declare dso_local i32 @cost_group(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, double, i32, i32, i32, i32) #1

declare dso_local i64 @compare_fractional_path_costs(%struct.TYPE_16__*, %struct.TYPE_16__*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
