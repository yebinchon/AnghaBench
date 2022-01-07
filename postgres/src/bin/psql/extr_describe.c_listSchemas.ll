; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listSchemas.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listSchemas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32 }

@pset = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [75 x i8] c"SELECT n.nspname AS \22%s\22,\0A  pg_catalog.pg_get_userbyid(n.nspowner) AS \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c",\0A  \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"n.nspacl\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c",\0A  pg_catalog.obj_description(n.oid, 'pg_namespace') AS \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\0AFROM pg_catalog.pg_namespace n\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"WHERE n.nspname !~ '^pg_' AND n.nspname <> 'information_schema'\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"ORDER BY 1;\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"List of schemas\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listSchemas(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.TYPE_12__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 3) to i8*), i64 16, i1 false)
  %12 = call i32 @initPQExpBuffer(%struct.TYPE_13__* %8)
  %13 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @printACLColumn(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %22 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %3
  %24 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27, %23
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 2), align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ false, %32 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @processSQLNamePattern(i32 %33, %struct.TYPE_13__* %8, i8* %34, i32 %43, i32 0, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* null, i32* null)
  %45 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @PSQLexec(i32 %47)
  store i32* %48, i32** %9, align 8
  %49 = call i32 @termPQExpBuffer(%struct.TYPE_13__* %8)
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %64

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 1), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %61 = call i32 @printQuery(i32* %58, %struct.TYPE_12__* %10, i32 %59, i32 0, i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @PQclear(i32* %62)
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %53, %52
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_13__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_13__*, i8*, i32, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @printACLColumn(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_13__*, i8*, i32) #2

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
