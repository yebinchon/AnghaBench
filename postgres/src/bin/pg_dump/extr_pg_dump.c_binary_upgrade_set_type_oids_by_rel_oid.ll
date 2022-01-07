; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_binary_upgrade_set_type_oids_by_rel_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_binary_upgrade_set_type_oids_by_rel_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [192 x i8] c"SELECT c.reltype AS crel, t.reltype AS trel FROM pg_catalog.pg_class c LEFT JOIN pg_catalog.pg_class t ON   (c.reltoastrelid = t.oid AND c.relkind <> '%c') WHERE c.oid = '%u'::pg_catalog.oid;\00", align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"crel\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"trel\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\0A-- For binary upgrade, must preserve pg_type toast oid\0A\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"SELECT pg_catalog.binary_upgrade_set_next_toast_pg_type_oid('%u'::pg_catalog.oid);\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32)* @binary_upgrade_set_type_oids_by_rel_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binary_upgrade_set_type_oids_by_rel_oid(i32* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call %struct.TYPE_8__* (...) @createPQExpBuffer()
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = load i32, i32* @RELKIND_PARTITIONED_TABLE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_8__* %13, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @ExecuteSqlQueryForSingleRow(i32* %17, i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @PQfnumber(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @PQgetvalue(i32* %22, i32 0, i32 %24)
  %26 = call i32 @atooid(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @binary_upgrade_set_type_oids_by_type_oid(i32* %27, %struct.TYPE_8__* %28, i32 %29, i32 0)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @PQfnumber(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @PQgetisnull(i32* %31, i32 0, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %3
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @PQfnumber(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @PQgetvalue(i32* %37, i32 0, i32 %39)
  %41 = call i32 @atooid(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_8__* %44, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %36, %3
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @PQclear(i32* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = call i32 @destroyPQExpBuffer(%struct.TYPE_8__* %50)
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_8__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_8__*, i8*, i32, ...) #1

declare dso_local i32* @ExecuteSqlQueryForSingleRow(i32*, i32) #1

declare dso_local i32 @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i32 @binary_upgrade_set_type_oids_by_type_oid(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
