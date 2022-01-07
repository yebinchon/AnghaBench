; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_orclauses.c_consider_new_or_clause.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_orclauses.c_consider_new_or_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { double, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@JOIN_INNER = common dso_local global i32 0, align 4
@T_SpecialJoinInfo = common dso_local global i32 0, align 4
@NIL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32*, %struct.TYPE_10__*)* @consider_new_or_clause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @consider_new_or_clause(i32* %0, %struct.TYPE_11__* %1, i32* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_10__* @make_restrictinfo(i32* %13, i32 1, i32 0, i32 0, i32 %16, i32* null, i32* null, i32* null)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %20 = bitcast %struct.TYPE_10__* %19 to i32*
  %21 = load i32, i32* @JOIN_INNER, align 4
  %22 = call double @clause_selectivity(i32* %18, i32* %20, i32 0, i32 %21, %struct.TYPE_9__* null)
  store double %22, double* %10, align 8
  %23 = load double, double* %10, align 8
  %24 = fcmp ogt double %23, 9.000000e-01
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %94

26:                                               ; preds = %4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = call i32 @lappend(i32 %29, %struct.TYPE_10__* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Min(i32 %36, i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load double, double* %10, align 8
  %44 = fcmp ogt double %43, 0.000000e+00
  br i1 %44, label %45, label %94

45:                                               ; preds = %26
  %46 = load i32, i32* @T_SpecialJoinInfo, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 11
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bms_difference(i32 %50, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 9
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 7
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 10
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 8
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* @JOIN_INNER, align 4
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store i32 0, i32* %71, align 4
  %72 = load i8*, i8** @NIL, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  store i8* %72, i8** %73, align 8
  %74 = load i8*, i8** @NIL, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  store i8* %74, i8** %75, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = bitcast %struct.TYPE_10__* %77 to i32*
  %79 = load i32, i32* @JOIN_INNER, align 4
  %80 = call double @clause_selectivity(i32* %76, i32* %78, i32 0, i32 %79, %struct.TYPE_9__* %12)
  store double %80, double* %11, align 8
  %81 = load double, double* %11, align 8
  %82 = load double, double* %10, align 8
  %83 = fdiv double %81, %82
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store double %83, double* %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load double, double* %87, align 8
  %89 = fcmp ogt double %88, 1.000000e+00
  br i1 %89, label %90, label %93

90:                                               ; preds = %45
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store double 1.000000e+00, double* %92, align 8
  br label %93

93:                                               ; preds = %90, %45
  br label %94

94:                                               ; preds = %25, %93, %26
  ret void
}

declare dso_local %struct.TYPE_10__* @make_restrictinfo(i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local double @clause_selectivity(i32*, i32*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @bms_difference(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
