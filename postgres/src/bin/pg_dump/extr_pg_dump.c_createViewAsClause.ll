; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_createViewAsClause.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_createViewAsClause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"SELECT pg_catalog.pg_get_viewdef('%u'::pg_catalog.oid) AS viewdef\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"query to obtain definition of view \22%s\22 returned no data\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"query to obtain definition of view \22%s\22 returned more than one definition\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"definition of view \22%s\22 appears to be empty (length zero)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, %struct.TYPE_13__*)* @createViewAsClause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @createViewAsClause(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %9 = call %struct.TYPE_14__* (...) @createPQExpBuffer()
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %5, align 8
  %10 = call %struct.TYPE_14__* (...) @createPQExpBuffer()
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @appendPQExpBuffer(%struct.TYPE_14__* %11, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %23 = call i32* @ExecuteSqlQuery(i32* %18, i32 %21, i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @PQntuples(i32* %24)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @PQntuples(i32* %28)
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fatal(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %43

37:                                               ; preds = %27
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fatal(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @PQgetlength(i32* %45, i32 0, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @fatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32*, i32** %7, align 8
  %57 = call i8* @PQgetvalue(i32* %56, i32 0, i32 0)
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 59
  %65 = zext i1 %64 to i32
  %66 = call i32 @Assert(i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i8* @PQgetvalue(i32* %68, i32 0, i32 0)
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 1
  %72 = call i32 @appendBinaryPQExpBuffer(%struct.TYPE_14__* %67, i8* %69, i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @PQclear(i32* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = call i32 @destroyPQExpBuffer(%struct.TYPE_14__* %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  ret %struct.TYPE_14__* %77
}

declare dso_local %struct.TYPE_14__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(i32*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @PQgetlength(i32*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @appendBinaryPQExpBuffer(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
