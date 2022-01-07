; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_worktablescan_plan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_worktablescan_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32, i64, i32 }

@RTE_CTE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bad levelsup for CTE \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"could not find param ID for CTE \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_20__*, %struct.TYPE_21__*, i32*, i32*)* @create_worktablescan_plan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @create_worktablescan_plan(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = call %struct.TYPE_19__* @planner_rt_fetch(i64 %23, %struct.TYPE_20__* %24)
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %11, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RTE_CTE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @Assert(i32 %35)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %4
  %43 = load i32, i32* @ERROR, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @elog(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %4
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %12, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %13, align 8
  br label %52

52:                                               ; preds = %68, %48
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %12, align 8
  %55 = icmp sgt i64 %53, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  store %struct.TYPE_20__* %59, %struct.TYPE_20__** %13, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %61 = icmp ne %struct.TYPE_20__* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ERROR, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @elog(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  br label %52

69:                                               ; preds = %52
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @ERROR, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @elog(i32 %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i32* @order_qual_clauses(%struct.TYPE_20__* %81, i32* %82)
  store i32* %83, i32** %8, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i32* @extract_actual_clauses(i32* %84, i32 0)
  store i32* %85, i32** %8, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = call i64 @replace_nestloop_params(%struct.TYPE_20__* %91, i32* %92)
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** %8, align 8
  br label %95

95:                                               ; preds = %90, %80
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call %struct.TYPE_18__* @make_worktablescan(i32* %96, i32* %97, i64 %98, i64 %101)
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %9, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %107 = call i32 @copy_generic_path_info(i32* %105, %struct.TYPE_21__* %106)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  ret %struct.TYPE_18__* %108
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_19__* @planner_rt_fetch(i64, %struct.TYPE_20__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @order_qual_clauses(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @extract_actual_clauses(i32*, i32) #1

declare dso_local i64 @replace_nestloop_params(%struct.TYPE_20__*, i32*) #1

declare dso_local %struct.TYPE_18__* @make_worktablescan(i32*, i32*, i64, i64) #1

declare dso_local i32 @copy_generic_path_info(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
