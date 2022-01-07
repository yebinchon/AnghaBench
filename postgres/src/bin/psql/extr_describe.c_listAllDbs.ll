; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listAllDbs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listAllDbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32 }

@pset = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [139 x i8] c"SELECT d.datname as \22%s\22,\0A       pg_catalog.pg_get_userbyid(d.datdba) as \22%s\22,\0A       pg_catalog.pg_encoding_to_char(d.encoding) as \22%s\22,\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"       d.datcollate as \22%s\22,\0A       d.datctype as \22%s\22,\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Collate\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Ctype\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"d.datacl\00", align 1
@.str.9 = private unnamed_addr constant [206 x i8] c",\0A       CASE WHEN pg_catalog.has_database_privilege(d.datname, 'CONNECT')\0A            THEN pg_catalog.pg_size_pretty(pg_catalog.pg_database_size(d.datname))\0A            ELSE 'No Access'\0A       END as \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c",\0A       t.spcname as \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Tablespace\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c",\0A       pg_catalog.shobj_description(d.oid, 'pg_database') as \22%s\22\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\0AFROM pg_catalog.pg_database d\0A\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"  JOIN pg_catalog.pg_tablespace t on d.dattablespace = t.oid\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"d.datname\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"ORDER BY 1;\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"List of databases\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listAllDbs(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 4) to i8*), i64 16, i1 false)
  %10 = call i32 @initPQExpBuffer(%struct.TYPE_13__* %7)
  %11 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %7, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %16 = icmp sge i32 %15, 80400
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %19 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %20 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %23 = call i32 @printACLColumn(%struct.TYPE_13__* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %28 = icmp sge i32 %27, 80200
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %31 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %7, i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.9, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %26, %21
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %37 = icmp sge i32 %36, 80000
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = call i32 @gettext_noop(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %40 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %35, %32
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %46 = icmp sge i32 %45, 80200
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %49 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %7, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %44, %41
  %51 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %56 = icmp sge i32 %55, 80000
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %7, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54, %50
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 3), align 4
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @processSQLNamePattern(i32 %63, %struct.TYPE_13__* %7, i8* %64, i32 0, i32 0, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32* null, i32* null)
  br label %66

66:                                               ; preds = %62, %59
  %67 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @PSQLexec(i32 %69)
  store i32* %70, i32** %6, align 8
  %71 = call i32 @termPQExpBuffer(%struct.TYPE_13__* %7)
  %72 = load i32*, i32** %6, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %86

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i32* null, i32** %76, align 8
  %77 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 2), align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 1), align 4
  %83 = call i32 @printQuery(i32* %80, %struct.TYPE_12__* %8, i32 %81, i32 0, i32 %82)
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @PQclear(i32* %84)
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %75, %74
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_13__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_13__*, i8*, i32, i32, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_13__*, i8*, i32, ...) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @printACLColumn(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_13__*, i8*, i32, i32, i32*, i8*, i32*, i32*) #2

declare dso_local i32* @PSQLexec(i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_13__*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @printQuery(i32*, %struct.TYPE_12__*, i32, i32, i32) #2

declare dso_local i32 @PQclear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
