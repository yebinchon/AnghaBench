; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeOperators.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeOperators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_12__ = type { i32 }

@pset = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [290 x i8] c"SELECT n.nspname as \22%s\22,\0A  o.oprname AS \22%s\22,\0A  CASE WHEN o.oprkind='l' THEN NULL ELSE pg_catalog.format_type(o.oprleft, NULL) END AS \22%s\22,\0A  CASE WHEN o.oprkind='r' THEN NULL ELSE pg_catalog.format_type(o.oprright, NULL) END AS \22%s\22,\0A  pg_catalog.format_type(o.oprresult, NULL) AS \22%s\22,\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Schema\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Left arg type\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Right arg type\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Result type\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"  o.oprcode AS \22%s\22,\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.8 = private unnamed_addr constant [228 x i8] c"  coalesce(pg_catalog.obj_description(o.oid, 'pg_operator'),\0A           pg_catalog.obj_description(o.oprcode, 'pg_proc')) AS \22%s\22\0AFROM pg_catalog.pg_operator o\0A     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = o.oprnamespace\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"WHERE n.nspname <> 'pg_catalog'\0A      AND n.nspname <> 'information_schema'\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"o.oprname\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"pg_catalog.pg_operator_is_visible(o.oid)\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"ORDER BY 1, 2, 3, 4;\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"List of operators\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @describeOperators(i8* %0, i32 %1, i32 %2) #0 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 3) to i8*), i64 16, i1 false)
  %12 = call i32 @initPQExpBuffer(%struct.TYPE_12__* %8)
  %13 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @gettext_noop(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @gettext_noop(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 @printfPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %23 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %26 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.8, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29, %24
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 2), align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i1 [ false, %34 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @processSQLNamePattern(i32 %35, %struct.TYPE_12__* %8, i8* %36, i32 %45, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %47 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @PSQLexec(i32 %49)
  store i32* %50, i32** %9, align 8
  %51 = call i32 @termPQExpBuffer(%struct.TYPE_12__* %8)
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %66

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 1), align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %63 = call i32 @printQuery(i32* %60, %struct.TYPE_11__* %10, i32 %61, i32 0, i32 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @PQclear(i32* %64)
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %55, %54
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_12__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_12__*, i8*, i32, i32, i32, i32, i32) #2

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
