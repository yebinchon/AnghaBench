; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseSelectSql.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseSelectSql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"SELECT \00", align 1
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**, %struct.TYPE_12__*)* @deparseSelectSql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deparseSelectSql(i32* %0, i32 %1, i32** %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %10, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @appendStringInfoString(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = call i32 @deparseSubqueryTargetList(%struct.TYPE_12__* %33)
  br label %74

35:                                               ; preds = %4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = call i64 @IS_JOIN_REL(%struct.TYPE_13__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = call i64 @IS_UPPER_REL(%struct.TYPE_13__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %35
  %44 = load i32*, i32** %5, align 8
  %45 = load i32**, i32*** %7, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = call i32 @deparseExplicitTargetList(i32* %44, i32 0, i32** %45, %struct.TYPE_12__* %46)
  br label %73

48:                                               ; preds = %39
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call %struct.TYPE_14__* @planner_rt_fetch(i32 %51, i32* %52)
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %13, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NoLock, align 4
  %58 = call i32 @table_open(i32 %56, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32**, i32*** %7, align 8
  %69 = call i32 @deparseTargetList(i32 %59, %struct.TYPE_14__* %60, i32 %63, i32 %64, i32 0, i32 %67, i32 0, i32** %68)
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @NoLock, align 4
  %72 = call i32 @table_close(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %48, %43
  br label %74

74:                                               ; preds = %73, %32
  ret void
}

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @deparseSubqueryTargetList(%struct.TYPE_12__*) #1

declare dso_local i64 @IS_JOIN_REL(%struct.TYPE_13__*) #1

declare dso_local i64 @IS_UPPER_REL(%struct.TYPE_13__*) #1

declare dso_local i32 @deparseExplicitTargetList(i32*, i32, i32**, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_14__* @planner_rt_fetch(i32, i32*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @deparseTargetList(i32, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
