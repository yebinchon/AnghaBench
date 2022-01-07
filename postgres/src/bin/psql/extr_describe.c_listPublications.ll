; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listPublications.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listPublications.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32*, i32, i32, i32* }
%struct.TYPE_12__ = type { i32 }

@pset = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@listPublications.translate_columns = internal constant [7 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [55 x i8] c"The server (version %s) does not support publications.\00", align 1
@.str.1 = private unnamed_addr constant [158 x i8] c"SELECT pubname AS \22%s\22,\0A  pg_catalog.pg_get_userbyid(pubowner) AS \22%s\22,\0A  puballtables AS \22%s\22,\0A  pubinsert AS \22%s\22,\0A  pubupdate AS \22%s\22,\0A  pubdelete AS \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"All tables\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Inserts\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Updates\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Deletes\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c",\0A  pubtruncate AS \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Truncates\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\0AFROM pg_catalog.pg_publication\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"pubname\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"ORDER BY 1;\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"List of publications\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listPublications(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  %8 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 4) to i8*), i64 32, i1 false)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %10 = icmp slt i32 %9, 100000
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %14 = call i32 @formatPGVersionNumber(i32 %12, i32 0, i8* %13, i32 32)
  %15 = call i32 @pg_log_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 1, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = call i32 @initPQExpBuffer(%struct.TYPE_12__* %4)
  %18 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @gettext_noop(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %23 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %24 = call i32 @printfPQExpBuffer(%struct.TYPE_12__* %4, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %26 = icmp sge i32 %25, 110000
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = call i32 @gettext_noop(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %29 = call i32 @appendPQExpBuffer(%struct.TYPE_12__* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %16
  %31 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 3), align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @processSQLNamePattern(i32 %32, %struct.TYPE_12__* %4, i8* %33, i32 0, i32 0, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32* null, i32* null)
  %35 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @PSQLexec(i32 %37)
  store i32* %38, i32** %5, align 8
  %39 = call i32 @termPQExpBuffer(%struct.TYPE_12__* %4)
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %57

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 4
  store i32* null, i32** %44, align 8
  %45 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @listPublications.translate_columns, i64 0, i64 0), i32** %48, align 8
  %49 = call i32 @lengthof(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @listPublications.translate_columns, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 2), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 1), align 4
  %54 = call i32 @printQuery(i32* %51, %struct.TYPE_11__* %6, i32 %52, i32 0, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @PQclear(i32* %55)
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %43, %42, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pg_log_error(i8*, i32) #2

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_12__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_12__*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_12__*, i8*, i32, i32, i32*, i8*, i32*, i32*) #2

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
