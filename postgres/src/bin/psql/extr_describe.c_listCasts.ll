; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listCasts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listCasts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32*, i32, i32, i32* }
%struct.TYPE_12__ = type { i32 }

@pset = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@listCasts.translate_columns = internal constant [5 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0], align 16
@.str = private unnamed_addr constant [115 x i8] c"SELECT pg_catalog.format_type(castsource, NULL) AS \22%s\22,\0A       pg_catalog.format_type(casttarget, NULL) AS \22%s\22,\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Source type\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Target type\00", align 1
@.str.3 = private unnamed_addr constant [168 x i8] c"       CASE WHEN c.castmethod = '%c' THEN '(binary coercible)'\0A            WHEN c.castmethod = '%c' THEN '(with inout)'\0A            ELSE p.proname\0A       END AS \22%s\22,\0A\00", align 1
@COERCION_METHOD_BINARY = common dso_local global i32 0, align 4
@COERCION_METHOD_INOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"       CASE WHEN c.castfunc = 0 THEN '(binary coercible)'\0A            ELSE p.proname\0A       END AS \22%s\22,\0A\00", align 1
@.str.6 = private unnamed_addr constant [137 x i8] c"       CASE WHEN c.castcontext = '%c' THEN '%s'\0A            WHEN c.castcontext = '%c' THEN '%s'\0A            ELSE '%s'\0A       END AS \22%s\22\00", align 1
@COERCION_CODE_EXPLICIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@COERCION_CODE_ASSIGNMENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"in assignment\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Implicit?\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c",\0A       d.description AS \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.13 = private unnamed_addr constant [370 x i8] c"\0AFROM pg_catalog.pg_cast c LEFT JOIN pg_catalog.pg_proc p\0A     ON c.castfunc = p.oid\0A     LEFT JOIN pg_catalog.pg_type ts\0A     ON c.castsource = ts.oid\0A     LEFT JOIN pg_catalog.pg_namespace ns\0A     ON ns.oid = ts.typnamespace\0A     LEFT JOIN pg_catalog.pg_type tt\0A     ON c.casttarget = tt.oid\0A     LEFT JOIN pg_catalog.pg_namespace nt\0A     ON nt.oid = tt.typnamespace\0A\00", align 1
@.str.14 = private unnamed_addr constant [116 x i8] c"     LEFT JOIN pg_catalog.pg_description d\0A     ON d.classoid = c.tableoid AND d.objoid = c.oid AND d.objsubid = 0\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"WHERE ( (true\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ns.nspname\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"ts.typname\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"pg_catalog.format_type(ts.oid, NULL)\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"pg_catalog.pg_type_is_visible(ts.oid)\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c") OR (true\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"nt.nspname\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"tt.typname\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"pg_catalog.format_type(tt.oid, NULL)\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"pg_catalog.pg_type_is_visible(tt.oid)\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c") )\0AORDER BY 1, 2;\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"List of casts\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listCasts(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 4) to i8*), i64 32, i1 false)
  %10 = call i32 @initPQExpBuffer(%struct.TYPE_12__* %6)
  %11 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @printfPQExpBuffer(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %15 = icmp sge i32 %14, 80400
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @COERCION_METHOD_BINARY, align 4
  %18 = load i32, i32* @COERCION_METHOD_INOUT, align 4
  %19 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.3, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  br label %24

21:                                               ; preds = %2
  %22 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %23 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* @COERCION_CODE_EXPLICIT, align 4
  %26 = call i32 @gettext_noop(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %27 = load i32, i32* @COERCION_CODE_ASSIGNMENT, align 4
  %28 = call i32 @gettext_noop(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %29 = call i32 @gettext_noop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %30 = call i32 @gettext_noop(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %31 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.6, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %36 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %24
  %38 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([370 x i8], [370 x i8]* @.str.13, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.14, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 3), align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @processSQLNamePattern(i32 %45, %struct.TYPE_12__* %6, i8* %46, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  %48 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 3), align 4
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @processSQLNamePattern(i32 %49, %struct.TYPE_12__* %6, i8* %50, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0))
  %52 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @PSQLexec(i32 %54)
  store i32* %55, i32** %7, align 8
  %56 = call i32 @termPQExpBuffer(%struct.TYPE_12__* %6)
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %74

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  store i32* null, i32** %61, align 8
  %62 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @listCasts.translate_columns, i64 0, i64 0), i32** %65, align 8
  %66 = call i32 @lengthof(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @listCasts.translate_columns, i64 0, i64 0))
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 2), align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 1), align 4
  %71 = call i32 @printQuery(i32* %68, %struct.TYPE_11__* %8, i32 %69, i32 0, i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @PQclear(i32* %72)
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %60, %59
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_12__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_12__*, i8*, i32, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_12__*, i8*, i32, ...) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_12__*, i8*, i32, i32, i8*, i8*, i8*, i8*) #2

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
