; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listLanguages.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listLanguages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32 }

@pset = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"SELECT l.lanname AS \22%s\22,\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"       pg_catalog.pg_get_userbyid(l.lanowner) as \22%s\22,\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"       l.lanpltrusted AS \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Trusted\00", align 1
@.str.6 = private unnamed_addr constant [153 x i8] c",\0A       NOT l.lanispl AS \22%s\22,\0A       l.lanplcallfoid::pg_catalog.regprocedure AS \22%s\22,\0A       l.lanvalidator::pg_catalog.regprocedure AS \22%s\22,\0A       \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Internal language\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Call handler\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Validator\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"l.laninline::pg_catalog.regprocedure AS \22%s\22,\0A       \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Inline handler\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"l.lanacl\00", align 1
@.str.13 = private unnamed_addr constant [171 x i8] c",\0A       d.description AS \22%s\22\0AFROM pg_catalog.pg_language l\0ALEFT JOIN pg_catalog.pg_description d\0A  ON d.classoid = l.tableoid AND d.objoid = l.oid\0A  AND d.objsubid = 0\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"l.lanname\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"WHERE l.lanplcallfoid != 0\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"ORDER BY 1;\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"List of languages\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listLanguages(i8* %0, i32 %1, i32 %2) #0 {
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
  %13 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %16 = icmp sge i32 %15, 80300
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = call i32 @gettext_noop(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 @gettext_noop(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %28 = call i32 @gettext_noop(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %29 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.6, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %31 = icmp sge i32 %30, 90000
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = call i32 @gettext_noop(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %34 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %25
  %36 = call i32 @printACLColumn(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %20
  %38 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %39 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.13, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 3), align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @processSQLNamePattern(i32 %43, %struct.TYPE_13__* %8, i8* %44, i32 0, i32 0, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32* null, i32* null)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49, %46
  %55 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @PSQLexec(i32 %57)
  store i32* %58, i32** %9, align 8
  %59 = call i32 @termPQExpBuffer(%struct.TYPE_13__* %8)
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %74

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 2), align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 1), align 4
  %71 = call i32 @printQuery(i32* %68, %struct.TYPE_12__* %10, i32 %69, i32 0, i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @PQclear(i32* %72)
  store i32 1, i32* %4, align 4
  br label %74

74:                                               ; preds = %63, %62
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_13__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_13__*, i8*, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_13__*, i8*, i32, ...) #2

declare dso_local i32 @printACLColumn(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_13__*, i8*, i32, i32, i32*, i8*, i32*, i32*) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_13__*, i8*) #2

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
