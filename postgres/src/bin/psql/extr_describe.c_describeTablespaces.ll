; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeTablespaces.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeTablespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32 }

@pset = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [54 x i8] c"The server (version %s) does not support tablespaces.\00", align 1
@.str.1 = private unnamed_addr constant [121 x i8] c"SELECT spcname AS \22%s\22,\0A  pg_catalog.pg_get_userbyid(spcowner) AS \22%s\22,\0A  pg_catalog.pg_tablespace_location(oid) AS \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.5 = private unnamed_addr constant [94 x i8] c"SELECT spcname AS \22%s\22,\0A  pg_catalog.pg_get_userbyid(spcowner) AS \22%s\22,\0A  spclocation AS \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c",\0A  \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"spcacl\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c",\0A  spcoptions AS \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c",\0A  pg_catalog.pg_size_pretty(pg_catalog.pg_tablespace_size(oid)) AS \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c",\0A  pg_catalog.shobj_description(oid, 'pg_tablespace') AS \22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\0AFROM pg_catalog.pg_tablespace\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"spcname\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"ORDER BY 1;\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"List of tablespaces\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @describeTablespaces(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca [32 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 4) to i8*), i64 16, i1 false)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %12 = icmp slt i32 %11, 80000
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %16 = call i32 @formatPGVersionNumber(i32 %14, i32 0, i8* %15, i32 32)
  %17 = call i32 @pg_log_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 1, i32* %3, align 4
  br label %89

18:                                               ; preds = %2
  %19 = call i32 @initPQExpBuffer(%struct.TYPE_13__* %6)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %21 = icmp sge i32 %20, 90200
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  br label %32

27:                                               ; preds = %18
  %28 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %31 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.5, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %37 = call i32 @printACLColumn(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %43 = icmp sge i32 %42, 90000
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %46 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %41, %38
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %52 = icmp sge i32 %51, 90200
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %55 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.10, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %50, %47
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %61 = icmp sge i32 %60, 80200
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %64 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %59, %56
  %66 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 3), align 4
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @processSQLNamePattern(i32 %67, %struct.TYPE_13__* %6, i8* %68, i32 0, i32 0, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32* null, i32* null)
  %70 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @PSQLexec(i32 %72)
  store i32* %73, i32** %7, align 8
  %74 = call i32 @termPQExpBuffer(%struct.TYPE_13__* %6)
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %89

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 2), align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 1), align 4
  %86 = call i32 @printQuery(i32* %83, %struct.TYPE_12__* %8, i32 %84, i32 0, i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @PQclear(i32* %87)
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %78, %77, %13
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pg_log_info(i8*, i32) #2

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_13__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_13__*, i8*, i32, i32, i32) #2

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
