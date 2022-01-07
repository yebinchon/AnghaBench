; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_pg_plan_query.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_pg_plan_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@CMD_UTILITY = common dso_local global i64 0, align 8
@log_planner_stats = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"PLANNER STATISTICS\00", align 1
@Debug_print_plan = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"plan\00", align 1
@Debug_pretty_print = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pg_plan_query(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CMD_UTILITY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %43

15:                                               ; preds = %3
  %16 = call i32 (...) @ActiveSnapshotSet()
  %17 = call i32 @Assert(i32 %16)
  %18 = call i32 (...) @TRACE_POSTGRESQL_QUERY_PLAN_START()
  %19 = load i64, i64* @log_planner_stats, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 (...) @ResetUsage()
  br label %23

23:                                               ; preds = %21, %15
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32* @planner(%struct.TYPE_4__* %24, i32 %25, i32 %26)
  store i32* %27, i32** %8, align 8
  %28 = load i64, i64* @log_planner_stats, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @ShowUsage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i64, i64* @Debug_print_plan, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @LOG, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @Debug_pretty_print, align 4
  %39 = call i32 @elog_node_display(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = call i32 (...) @TRACE_POSTGRESQL_QUERY_PLAN_DONE()
  %42 = load i32*, i32** %8, align 8
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %40, %14
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ActiveSnapshotSet(...) #1

declare dso_local i32 @TRACE_POSTGRESQL_QUERY_PLAN_START(...) #1

declare dso_local i32 @ResetUsage(...) #1

declare dso_local i32* @planner(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ShowUsage(i8*) #1

declare dso_local i32 @elog_node_display(i32, i8*, i32*, i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_QUERY_PLAN_DONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
