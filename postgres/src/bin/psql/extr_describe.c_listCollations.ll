; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listCollations.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listCollations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32*, i32, i32, i32* }
%struct.TYPE_12__ = type { i32 }

@pset = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@listCollations.translate_columns = internal constant [7 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0], align 16
@.str = private unnamed_addr constant [53 x i8] c"The server (version %s) does not support collations.\00", align 1
@.str.1 = private unnamed_addr constant [110 x i8] c"SELECT n.nspname AS \22%s\22,\0A       c.collname AS \22%s\22,\0A       c.collcollate AS \22%s\22,\0A       c.collctype AS \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Schema\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Collate\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Ctype\00", align 1
@.str.6 = private unnamed_addr constant [106 x i8] c",\0A       CASE c.collprovider WHEN 'd' THEN 'default' WHEN 'c' THEN 'libc' WHEN 'i' THEN 'icu' END AS \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Provider\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c",\0A       'libc' AS \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c",\0A       CASE WHEN c.collisdeterministic THEN '%s' ELSE '%s' END AS \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Deterministic?\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c",\0A       '%s' AS \22%s\22\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c",\0A       pg_catalog.obj_description(c.oid, 'pg_collation') AS \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.16 = private unnamed_addr constant [90 x i8] c"\0AFROM pg_catalog.pg_collation c, pg_catalog.pg_namespace n\0AWHERE n.oid = c.collnamespace\0A\00", align 1
@.str.17 = private unnamed_addr constant [81 x i8] c"      AND n.nspname <> 'pg_catalog'\0A      AND n.nspname <> 'information_schema'\0A\00", align 1
@.str.18 = private unnamed_addr constant [100 x i8] c"      AND c.collencoding IN (-1, pg_catalog.pg_char_to_encoding(pg_catalog.getdatabaseencoding()))\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"c.collname\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"pg_catalog.pg_collation_is_visible(c.oid)\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"ORDER BY 1, 2;\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"List of collations\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listCollations(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca [32 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 4) to i8*), i64 32, i1 false)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %14 = icmp slt i32 %13, 90100
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %18 = call i32 @formatPGVersionNumber(i32 %16, i32 0, i8* %17, i32 32)
  %19 = call i32 @pg_log_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 1, i32* %4, align 4
  br label %89

20:                                               ; preds = %3
  %21 = call i32 @initPQExpBuffer(%struct.TYPE_12__* %8)
  %22 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %25 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %26 = call i32 @printfPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %28 = icmp sge i32 %27, 100000
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %31 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.6, i64 0, i64 0), i32 %30)
  br label %35

32:                                               ; preds = %20
  %33 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %34 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %37 = icmp sge i32 %36, 120000
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = call i32 @gettext_noop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %40 = call i32 @gettext_noop(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %41 = call i32 @gettext_noop(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %42 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  br label %47

43:                                               ; preds = %35
  %44 = call i32 @gettext_noop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %45 = call i32 @gettext_noop(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %46 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %52 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.16, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.17, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57, %53
  %63 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.18, i64 0, i64 0))
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 3), align 4
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @processSQLNamePattern(i32 %64, %struct.TYPE_12__* %8, i8* %65, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0))
  %67 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @PSQLexec(i32 %69)
  store i32* %70, i32** %9, align 8
  %71 = call i32 @termPQExpBuffer(%struct.TYPE_12__* %8)
  %72 = load i32*, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %89

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  store i32* null, i32** %76, align 8
  %77 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @listCollations.translate_columns, i64 0, i64 0), i32** %80, align 8
  %81 = call i32 @lengthof(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @listCollations.translate_columns, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32 %81, i32* %82, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 2), align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 1), align 4
  %86 = call i32 @printQuery(i32* %83, %struct.TYPE_11__* %10, i32 %84, i32 0, i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @PQclear(i32* %87)
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %75, %74, %15
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pg_log_error(i8*, i32) #2

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_12__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_12__*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_12__*, i8*, i32, ...) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_12__*, i8*, i32, i32, i8*, i8*, i32*, i8*) #2

declare dso_local i32* @PSQLexec(i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_12__*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @lengthof(i32*) #2

declare dso_local i32 @printQuery(i32*, %struct.TYPE_11__*, i32, i32, i32) #2

declare dso_local i32 @PQclear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
