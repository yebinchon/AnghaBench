; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_expand_table_name_patterns.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_expand_table_name_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [225 x i8] c"SELECT c.oid\0AFROM pg_catalog.pg_class c\0A     LEFT JOIN pg_catalog.pg_namespace n\0A     ON n.oid OPERATOR(pg_catalog.=) c.relnamespace\0AWHERE c.relkind OPERATOR(pg_catalog.=) ANY\0A    (array['%c', '%c', '%c', '%c', '%c', '%c'])\0A\00", align 1
@RELKIND_RELATION = common dso_local global i32 0, align 4
@RELKIND_SEQUENCE = common dso_local global i32 0, align 4
@RELKIND_VIEW = common dso_local global i32 0, align 4
@RELKIND_MATVIEW = common dso_local global i32 0, align 4
@RELKIND_FOREIGN_TABLE = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"c.relname\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"pg_catalog.pg_table_is_visible(c.oid)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"RESET search_path\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@ALWAYS_SECURE_SEARCH_PATH_SQL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"no matching tables were found for pattern \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32*, i32)* @expand_table_name_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_table_name_patterns(i32* %0, %struct.TYPE_11__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = icmp eq %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %93

18:                                               ; preds = %4
  %19 = call %struct.TYPE_12__* (...) @createPQExpBuffer()
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %9, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %11, align 8
  br label %23

23:                                               ; preds = %86, %18
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %90

26:                                               ; preds = %23
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = load i32, i32* @RELKIND_RELATION, align 4
  %29 = load i32, i32* @RELKIND_SEQUENCE, align 4
  %30 = load i32, i32* @RELKIND_VIEW, align 4
  %31 = load i32, i32* @RELKIND_MATVIEW, align 4
  %32 = load i32, i32* @RELKIND_FOREIGN_TABLE, align 4
  %33 = load i32, i32* @RELKIND_PARTITIONED_TABLE, align 4
  %34 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %27, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @GetConnection(i32* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @processSQLNamePattern(i32 %36, %struct.TYPE_12__* %37, i32 %40, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @ExecuteSqlStatement(i32* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %49 = call i32* @ExecuteSqlQuery(i32* %44, i32 %47, i32 %48)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @ALWAYS_SECURE_SEARCH_PATH_SQL, align 4
  %52 = call i32* @ExecuteSqlQueryForSingleRow(i32* %50, i32 %51)
  %53 = call i32 @PQclear(i32* %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %26
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @PQntuples(i32* %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %56, %26
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @PQntuples(i32* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @PQgetvalue(i32* %73, i32 %74, i32 0)
  %76 = call i32 @atooid(i32 %75)
  %77 = call i32 @simple_oid_list_append(i32* %72, i32 %76)
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %66

81:                                               ; preds = %66
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @PQclear(i32* %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = call i32 @resetPQExpBuffer(%struct.TYPE_12__* %84)
  br label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %11, align 8
  br label %23

90:                                               ; preds = %23
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %92 = call i32 @destroyPQExpBuffer(%struct.TYPE_12__* %91)
  br label %93

93:                                               ; preds = %90, %17
  ret void
}

declare dso_local %struct.TYPE_12__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_12__*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_12__*, i32, i32, i32, i8*, i8*, i32*, i8*) #1

declare dso_local i32 @GetConnection(i32*) #1

declare dso_local i32 @ExecuteSqlStatement(i32*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32* @ExecuteSqlQueryForSingleRow(i32*, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @simple_oid_list_append(i32*, i32) #1

declare dso_local i32 @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_12__*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
