; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeAggregates.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeAggregates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_12__ = type { i32 }

@pset = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [102 x i8] c"SELECT n.nspname as \22%s\22,\0A  p.proname AS \22%s\22,\0A  pg_catalog.format_type(p.prorettype, NULL) AS \22%s\22,\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Schema\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Result data type\00", align 1
@.str.4 = private unnamed_addr constant [134 x i8] c"  CASE WHEN p.pronargs = 0\0A    THEN CAST('*' AS pg_catalog.text)\0A    ELSE pg_catalog.pg_get_function_arguments(p.oid)\0A  END AS \22%s\22,\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Argument data types\00", align 1
@.str.6 = private unnamed_addr constant [310 x i8] c"  CASE WHEN p.pronargs = 0\0A    THEN CAST('*' AS pg_catalog.text)\0A    ELSE\0A    pg_catalog.array_to_string(ARRAY(\0A      SELECT\0A        pg_catalog.format_type(p.proargtypes[s.i], NULL)\0A      FROM\0A        pg_catalog.generate_series(0, pg_catalog.array_upper(p.proargtypes, 1)) AS s(i)\0A    ), ', ')\0A  END AS \22%s\22,\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"  pg_catalog.format_type(p.proargtypes[0], NULL) AS \22%s\22,\0A\00", align 1
@.str.8 = private unnamed_addr constant [171 x i8] c"  pg_catalog.obj_description(p.oid, 'pg_proc') as \22%s\22\0AFROM pg_catalog.pg_proc p\0A     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.pronamespace\0AWHERE p.prokind = 'a'\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.10 = private unnamed_addr constant [166 x i8] c"  pg_catalog.obj_description(p.oid, 'pg_proc') as \22%s\22\0AFROM pg_catalog.pg_proc p\0A     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.pronamespace\0AWHERE p.proisagg\0A\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"      AND n.nspname <> 'pg_catalog'\0A      AND n.nspname <> 'information_schema'\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"p.proname\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"pg_catalog.pg_function_is_visible(p.oid)\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"ORDER BY 1, 2, 4;\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"List of aggregate functions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @describeAggregates(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 4) to i8*), i64 16, i1 false)
  %12 = call i32 @initPQExpBuffer(%struct.TYPE_12__* %8)
  %13 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @gettext_noop(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @printfPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %18 = icmp sge i32 %17, 80400
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = call i32 @gettext_noop(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  br label %32

22:                                               ; preds = %3
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %24 = icmp sge i32 %23, 80200
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 @gettext_noop(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %27 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([310 x i8], [310 x i8]* @.str.6, i64 0, i64 0), i32 %26)
  br label %31

28:                                               ; preds = %22
  %29 = call i32 @gettext_noop(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %19
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %34 = icmp sge i32 %33, 110000
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %37 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.8, i64 0, i64 0), i32 %36)
  br label %41

38:                                               ; preds = %32
  %39 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %40 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.10, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.11, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44, %41
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 3), align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @processSQLNamePattern(i32 %50, %struct.TYPE_12__* %8, i8* %51, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %53 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @PSQLexec(i32 %55)
  store i32* %56, i32** %9, align 8
  %57 = call i32 @termPQExpBuffer(%struct.TYPE_12__* %8)
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %72

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 2), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 1), align 4
  %69 = call i32 @printQuery(i32* %66, %struct.TYPE_11__* %10, i32 %67, i32 0, i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @PQclear(i32* %70)
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %61, %60
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_12__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_12__*, i8*, i32, i32, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_12__*, i8*, i32, i32, i8*, i8*, i32*, i8*) #2

declare dso_local i32* @PSQLexec(i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_12__*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @printQuery(i32*, %struct.TYPE_11__*, i32, i32, i32) #2

declare dso_local i32 @PQclear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
