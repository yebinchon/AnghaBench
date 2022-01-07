; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listExtensions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }

@pset = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [53 x i8] c"The server (version %s) does not support extensions.\00", align 1
@.str.1 = private unnamed_addr constant [305 x i8] c"SELECT e.extname AS \22%s\22, e.extversion AS \22%s\22, n.nspname AS \22%s\22, c.description AS \22%s\22\0AFROM pg_catalog.pg_extension e LEFT JOIN pg_catalog.pg_namespace n ON n.oid = e.extnamespace LEFT JOIN pg_catalog.pg_description c ON c.objoid = e.oid AND c.classoid = 'pg_catalog.pg_extension'::pg_catalog.regclass\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Schema\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"e.extname\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ORDER BY 1;\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"List of installed extensions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listExtensions(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  %8 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 4) to i8*), i64 16, i1 false)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 0), align 8
  %10 = icmp slt i32 %9, 90100
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 0), align 8
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %14 = call i32 @formatPGVersionNumber(i32 %12, i32 0, i8* %13, i32 32)
  %15 = call i32 @pg_log_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 1, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %4)
  %18 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 @printfPQExpBuffer(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 3), align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @processSQLNamePattern(i32 %23, %struct.TYPE_11__* %4, i8* %24, i32 0, i32 0, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null)
  %26 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @PSQLexec(i32 %28)
  store i32* %29, i32** %5, align 8
  %30 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %4)
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %45

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 2), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 1), align 4
  %42 = call i32 @printQuery(i32* %39, %struct.TYPE_10__* %6, i32 %40, i32 0, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @PQclear(i32* %43)
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %34, %33, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pg_log_error(i8*, i32) #2

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_11__*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_11__*, i8*, i32, i32, i32*, i8*, i32*, i32*) #2

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
