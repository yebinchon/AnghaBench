; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listDomains.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listDomains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32 }

@pset = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [120 x i8] c"SELECT n.nspname as \22%s\22,\0A       t.typname as \22%s\22,\0A       pg_catalog.format_type(t.typbasetype, t.typtypmod) as \22%s\22,\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Schema\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.4 = private unnamed_addr constant [193 x i8] c"       (SELECT c.collname FROM pg_catalog.pg_collation c, pg_catalog.pg_type bt\0A        WHERE c.oid = t.typcollation AND bt.oid = t.typbasetype AND t.typcollation <> bt.typcollation) as \22%s\22,\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Collation\00", align 1
@.str.6 = private unnamed_addr constant [270 x i8] c"       CASE WHEN t.typnotnull THEN 'not null' END as \22%s\22,\0A       t.typdefault as \22%s\22,\0A       pg_catalog.array_to_string(ARRAY(\0A         SELECT pg_catalog.pg_get_constraintdef(r.oid, true) FROM pg_catalog.pg_constraint r WHERE t.oid = r.contypid\0A       ), ' ') as \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Nullable\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Check\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c",\0A  \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"t.typacl\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c",\0A       d.description as \22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.14 = private unnamed_addr constant [95 x i8] c"\0AFROM pg_catalog.pg_type t\0A     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = t.typnamespace\0A\00", align 1
@.str.15 = private unnamed_addr constant [111 x i8] c"     LEFT JOIN pg_catalog.pg_description d ON d.classoid = t.tableoid AND d.objoid = t.oid AND d.objsubid = 0\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"WHERE t.typtype = 'd'\0A\00", align 1
@.str.17 = private unnamed_addr constant [81 x i8] c"      AND n.nspname <> 'pg_catalog'\0A      AND n.nspname <> 'information_schema'\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"t.typname\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"pg_catalog.pg_type_is_visible(t.oid)\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"ORDER BY 1, 2;\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"List of domains\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listDomains(i8* %0, i32 %1, i32 %2) #0 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 4) to i8*), i64 16, i1 false)
  %12 = call i32 @initPQExpBuffer(%struct.TYPE_13__* %8)
  %13 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %18 = icmp sge i32 %17, 90100
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = call i32 @gettext_noop(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %24 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %25 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %26 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([270 x i8], [270 x i8]* @.str.6, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %31 = icmp sge i32 %30, 90200
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %34 = call i32 @printACLColumn(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  %36 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %37 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %22
  %39 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.14, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.15, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.17, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48, %44
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 3), align 4
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @processSQLNamePattern(i32 %54, %struct.TYPE_13__* %8, i8* %55, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  %57 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @PSQLexec(i32 %59)
  store i32* %60, i32** %9, align 8
  %61 = call i32 @termPQExpBuffer(%struct.TYPE_13__* %8)
  %62 = load i32*, i32** %9, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %76

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 2), align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 1), align 4
  %73 = call i32 @printQuery(i32* %70, %struct.TYPE_12__* %10, i32 %71, i32 0, i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @PQclear(i32* %74)
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %65, %64
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_13__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_13__*, i8*, i32, i32, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_13__*, i8*, i32, ...) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @printACLColumn(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_13__*, i8*, i32, i32, i8*, i8*, i32*, i8*) #2

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
