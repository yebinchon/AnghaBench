; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_binary_upgrade_set_pg_class_oids.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_binary_upgrade_set_pg_class_oids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [183 x i8] c"SELECT c.reltoastrelid, i.indexrelid FROM pg_catalog.pg_class c LEFT JOIN pg_catalog.pg_index i ON (c.reltoastrelid = i.indrelid AND i.indisvalid) WHERE c.oid = '%u'::pg_catalog.oid;\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"reltoastrelid\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"indexrelid\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"\0A-- For binary upgrade, must preserve pg_class oids\0A\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"SELECT pg_catalog.binary_upgrade_set_next_heap_pg_class_oid('%u'::pg_catalog.oid);\0A\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"SELECT pg_catalog.binary_upgrade_set_next_toast_pg_class_oid('%u'::pg_catalog.oid);\0A\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"SELECT pg_catalog.binary_upgrade_set_next_index_pg_class_oid('%u'::pg_catalog.oid);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32, i32)* @binary_upgrade_set_pg_class_oids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binary_upgrade_set_pg_class_oids(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = call %struct.TYPE_8__* (...) @createPQExpBuffer()
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @appendPQExpBuffer(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @ExecuteSqlQueryForSingleRow(i32* %17, i32 %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @PQfnumber(i32* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @PQgetvalue(i32* %22, i32 0, i32 %24)
  %26 = call i32 @atooid(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @PQfnumber(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @PQgetvalue(i32* %27, i32 0, i32 %29)
  %31 = call i32 @atooid(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @appendPQExpBuffer(%struct.TYPE_8__* %37, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @OidIsValid(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @appendPQExpBuffer(%struct.TYPE_8__* %44, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @appendPQExpBuffer(%struct.TYPE_8__* %47, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %36
  br label %55

51:                                               ; preds = %4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @appendPQExpBuffer(%struct.TYPE_8__* %52, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = call i32 @appendPQExpBufferChar(%struct.TYPE_8__* %56, i8 signext 10)
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @PQclear(i32* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = call i32 @destroyPQExpBuffer(%struct.TYPE_8__* %60)
  ret void
}

declare dso_local %struct.TYPE_8__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQueryForSingleRow(i32*, i32) #1

declare dso_local i32 @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
