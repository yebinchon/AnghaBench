; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listTSConfigs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listTSConfigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }

@pset = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [59 x i8] c"The server (version %s) does not support full text search.\00", align 1
@.str.1 = private unnamed_addr constant [206 x i8] c"SELECT\0A   n.nspname as \22%s\22,\0A   c.cfgname as \22%s\22,\0A   pg_catalog.obj_description(c.oid, 'pg_ts_config') as \22%s\22\0AFROM pg_catalog.pg_ts_config c\0ALEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.cfgnamespace\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Schema\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"c.cfgname\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"pg_catalog.pg_ts_config_is_visible(c.oid)\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ORDER BY 1, 2;\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"List of text search configurations\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listTSConfigs(i8* %0, i32 %1) #0 {
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
  br label %52

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @listTSConfigsVerbose(i8* %22)
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %18
  %25 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %6)
  %26 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @printfPQExpBuffer(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 3), align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @processSQLNamePattern(i32 %30, %struct.TYPE_11__* %6, i8* %31, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %33 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @PSQLexec(i32 %35)
  store i32* %36, i32** %7, align 8
  %37 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %6)
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %52

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 2), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 1), align 4
  %49 = call i32 @printQuery(i32* %46, %struct.TYPE_10__* %8, i32 %47, i32 0, i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @PQclear(i32* %50)
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %40, %21, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pg_log_error(i8*, i32) #2

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #2

declare dso_local i32 @listTSConfigsVerbose(i8*) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_11__*, i8*, i32, i32, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_11__*, i8*, i32, i32, i8*, i8*, i32*, i8*) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_11__*, i8*) #2

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
