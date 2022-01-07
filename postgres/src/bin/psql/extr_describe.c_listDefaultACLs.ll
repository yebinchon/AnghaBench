; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listDefaultACLs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listDefaultACLs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32*, i32, i32, i32* }
%struct.TYPE_12__ = type { i32 }

@pset = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@listDefaultACLs.translate_columns = internal constant [4 x i32] [i32 0, i32 0, i32 1, i32 0], align 16
@.str = private unnamed_addr constant [70 x i8] c"The server (version %s) does not support altering default privileges.\00", align 1
@.str.1 = private unnamed_addr constant [217 x i8] c"SELECT pg_catalog.pg_get_userbyid(d.defaclrole) AS \22%s\22,\0A  n.nspname AS \22%s\22,\0A  CASE d.defaclobjtype WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' END AS \22%s\22,\0A  \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Schema\00", align 1
@DEFACLOBJ_RELATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@DEFACLOBJ_SEQUENCE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@DEFACLOBJ_FUNCTION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@DEFACLOBJ_TYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@DEFACLOBJ_NAMESPACE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"d.defaclacl\00", align 1
@.str.11 = private unnamed_addr constant [105 x i8] c"\0AFROM pg_catalog.pg_default_acl d\0A     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = d.defaclnamespace\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"n.nspname\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"pg_catalog.pg_get_userbyid(d.defaclrole)\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"ORDER BY 1, 2, 3;\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Default access privileges\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listDefaultACLs(i8* %0) #0 {
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
  %10 = icmp slt i32 %9, 90000
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %14 = call i32 @formatPGVersionNumber(i32 %12, i32 0, i8* %13, i32 32)
  %15 = call i32 @pg_log_error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 1, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = call i32 @initPQExpBuffer(%struct.TYPE_12__* %4)
  %18 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32, i32* @DEFACLOBJ_RELATION, align 4
  %21 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32, i32* @DEFACLOBJ_SEQUENCE, align 4
  %23 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %24 = load i32, i32* @DEFACLOBJ_FUNCTION, align 4
  %25 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %26 = load i32, i32* @DEFACLOBJ_TYPE, align 4
  %27 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %28 = load i32, i32* @DEFACLOBJ_NAMESPACE, align 4
  %29 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %30 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %31 = call i32 (%struct.TYPE_12__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_12__* %4, i8* getelementptr inbounds ([217 x i8], [217 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = call i32 @printACLColumn(%struct.TYPE_12__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %33 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %4, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.11, i64 0, i64 0))
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 3), align 4
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @processSQLNamePattern(i32 %34, %struct.TYPE_12__* %4, i8* %35, i32 0, i32 0, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32* null)
  %37 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @PSQLexec(i32 %39)
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %16
  %44 = call i32 @termPQExpBuffer(%struct.TYPE_12__* %4)
  store i32 0, i32* %2, align 4
  br label %65

45:                                               ; preds = %16
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 4
  store i32* null, i32** %46, align 8
  %47 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (%struct.TYPE_12__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_12__* %4, i8* %49)
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @listDefaultACLs.translate_columns, i64 0, i64 0), i32** %55, align 8
  %56 = call i32 @lengthof(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @listDefaultACLs.translate_columns, i64 0, i64 0))
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 2), align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 1), align 4
  %61 = call i32 @printQuery(i32* %58, %struct.TYPE_11__* %6, i32 %59, i32 0, i32 %60)
  %62 = call i32 @termPQExpBuffer(%struct.TYPE_12__* %4)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @PQclear(i32* %63)
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %45, %43, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pg_log_error(i8*, i32) #2

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_12__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_12__*, i8*, ...) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @printACLColumn(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_12__*, i8*, i32, i32, i32*, i8*, i8*, i32*) #2

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
