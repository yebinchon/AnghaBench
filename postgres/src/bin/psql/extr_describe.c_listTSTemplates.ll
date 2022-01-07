; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listTSTemplates.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listTSTemplates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }

@pset = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [59 x i8] c"The server (version %s) does not support full text search.\00", align 1
@.str.1 = private unnamed_addr constant [199 x i8] c"SELECT\0A  n.nspname AS \22%s\22,\0A  t.tmplname AS \22%s\22,\0A  t.tmplinit::pg_catalog.regproc AS \22%s\22,\0A  t.tmpllexize::pg_catalog.regproc AS \22%s\22,\0A  pg_catalog.obj_description(t.oid, 'pg_ts_template') AS \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Schema\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Init\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Lexize\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.7 = private unnamed_addr constant [113 x i8] c"SELECT\0A  n.nspname AS \22%s\22,\0A  t.tmplname AS \22%s\22,\0A  pg_catalog.obj_description(t.oid, 'pg_ts_template') AS \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [97 x i8] c"FROM pg_catalog.pg_ts_template t\0ALEFT JOIN pg_catalog.pg_namespace n ON n.oid = t.tmplnamespace\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"t.tmplname\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"pg_catalog.pg_ts_template_is_visible(t.oid)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"ORDER BY 1, 2;\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"List of text search templates\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listTSTemplates(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca [32 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 4) to i8*), i64 16, i1 false)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 0), align 8
  %12 = icmp slt i32 %11, 80300
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 0), align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %16 = call i32 @formatPGVersionNumber(i32 %14, i32 0, i8* %15, i32 32)
  %17 = call i32 @pg_log_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 1, i32* %3, align 4
  br label %58

18:                                               ; preds = %2
  %19 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %6)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %27 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %28 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, i32, ...) @printfPQExpBuffer(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  br label %34

29:                                               ; preds = %18
  %30 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %33 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, i32, ...) @printfPQExpBuffer(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.7, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.8, i64 0, i64 0))
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 3), align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @processSQLNamePattern(i32 %36, %struct.TYPE_11__* %6, i8* %37, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %39 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @PSQLexec(i32 %41)
  store i32* %42, i32** %7, align 8
  %43 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %6)
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %58

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 2), align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 1), align 4
  %55 = call i32 @printQuery(i32* %52, %struct.TYPE_10__* %8, i32 %53, i32 0, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @PQclear(i32* %56)
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %47, %46, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pg_log_error(i8*, i32) #2

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_11__*, i8*, i32, i32, i32, ...) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_11__*, i8*, i32, i32, i8*, i8*, i32*, i8*) #2

declare dso_local i32* @PSQLexec(i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @printQuery(i32*, %struct.TYPE_10__*, i32, i32, i32) #2

declare dso_local i32 @PQclear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
