; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listForeignDataWrappers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listForeignDataWrappers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32 }

@pset = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [64 x i8] c"The server (version %s) does not support foreign-data wrappers.\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"SELECT fdw.fdwname AS \22%s\22,\0A  pg_catalog.pg_get_userbyid(fdw.fdwowner) AS \22%s\22,\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"  fdw.fdwhandler::pg_catalog.regproc AS \22%s\22,\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Handler\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"  fdw.fdwvalidator::pg_catalog.regproc AS \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Validator\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c",\0A  \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"fdwacl\00", align 1
@.str.10 = private unnamed_addr constant [265 x i8] c",\0A CASE WHEN fdwoptions IS NULL THEN '' ELSE   '(' || pg_catalog.array_to_string(ARRAY(SELECT   pg_catalog.quote_ident(option_name) ||  ' ' ||   pg_catalog.quote_literal(option_value)  FROM   pg_catalog.pg_options_to_table(fdwoptions)),  ', ') || ')'   END AS \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"FDW options\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c",\0A  d.description AS \22%s\22 \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"\0AFROM pg_catalog.pg_foreign_data_wrapper fdw\0A\00", align 1
@.str.15 = private unnamed_addr constant [117 x i8] c"LEFT JOIN pg_catalog.pg_description d\0A       ON d.classoid = fdw.tableoid AND d.objoid = fdw.oid AND d.objsubid = 0\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"fdwname\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"ORDER BY 1;\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"List of foreign-data wrappers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listForeignDataWrappers(i8* %0, i32 %1) #0 {
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
  %12 = icmp slt i32 %11, 80400
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %16 = call i32 @formatPGVersionNumber(i32 %14, i32 0, i8* %15, i32 32)
  %17 = call i32 @pg_log_error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 1, i32* %3, align 4
  br label %76

18:                                               ; preds = %2
  %19 = call i32 @initPQExpBuffer(%struct.TYPE_13__* %6)
  %20 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %24 = icmp sge i32 %23, 90100
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = call i32 @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %27 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = call i32 @gettext_noop(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %30 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %35 = call i32 @printACLColumn(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %36 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %37 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([265 x i8], [265 x i8]* @.str.10, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %39 = icmp sge i32 %38, 90100
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = call i32 @gettext_noop(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %42 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %28
  %45 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 0), align 8
  %50 = icmp sge i32 %49, 90100
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.15, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48, %44
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 3), align 4
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @processSQLNamePattern(i32 %54, %struct.TYPE_13__* %6, i8* %55, i32 0, i32 0, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32* null, i32* null)
  %57 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @PSQLexec(i32 %59)
  store i32* %60, i32** %7, align 8
  %61 = call i32 @termPQExpBuffer(%struct.TYPE_13__* %6)
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %76

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 2), align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @pset, i32 0, i32 1), align 4
  %73 = call i32 @printQuery(i32* %70, %struct.TYPE_12__* %8, i32 %71, i32 0, i32 %72)
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @PQclear(i32* %74)
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %65, %64, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pg_log_error(i8*, i32) #2

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_13__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_13__*, i8*, i32, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_13__*, i8*, i32) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @printACLColumn(%struct.TYPE_13__*, i8*) #2

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
