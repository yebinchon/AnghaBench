; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listDbRoleSettings.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_listDbRoleSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }

@pset = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [69 x i8] c"The server (version %s) does not support per-database role settings.\00", align 1
@.str.1 = private unnamed_addr constant [241 x i8] c"SELECT rolname AS \22%s\22, datname AS \22%s\22,\0Apg_catalog.array_to_string(setconfig, E'\\n') AS \22%s\22\0AFROM pg_catalog.pg_db_role_setting s\0ALEFT JOIN pg_catalog.pg_database d ON d.oid = setdatabase\0ALEFT JOIN pg_catalog.pg_roles r ON r.oid = setrole\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Role\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Database\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Settings\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"r.rolname\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"d.datname\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ORDER BY 1, 2;\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Did not find any settings for role \22%s\22 and database \22%s\22.\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Did not find any settings for role \22%s\22.\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Did not find any settings.\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"List of settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @listDbRoleSettings(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 5) to i8*), i64 16, i1 false)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 0), align 8
  %13 = icmp slt i32 %12, 90000
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 0), align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %17 = call i32 @formatPGVersionNumber(i32 %15, i32 0, i8* %16, i32 32)
  %18 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 1, i32* %3, align 4
  br label %79

19:                                               ; preds = %2
  %20 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %6)
  %21 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @gettext_noop(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @printfPQExpBuffer(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 4), align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @processSQLNamePattern(i32 %25, %struct.TYPE_11__* %6, i8* %26, i32 0, i32 0, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 4), align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @processSQLNamePattern(i32 %28, %struct.TYPE_11__* %6, i8* %29, i32 %30, i32 0, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null)
  %32 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @PSQLexec(i32 %34)
  store i32* %35, i32** %7, align 8
  %36 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %6)
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %79

40:                                               ; preds = %19
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @PQntuples(i32* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 3), align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i8* %54, i8* %55)
  br label %66

57:                                               ; preds = %50, %47
  %58 = load i8*, i8** %4, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %61)
  br label %65

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  br label %66

66:                                               ; preds = %65, %53
  br label %76

67:                                               ; preds = %44, %40
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32* null, i32** %68, align 8
  %69 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 2), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 1), align 4
  %75 = call i32 @printQuery(i32* %72, %struct.TYPE_10__* %8, i32 %73, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %67, %66
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @PQclear(i32* %77)
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %39, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pg_log_error(i8*, ...) #2

declare dso_local i32 @formatPGVersionNumber(i32, i32, i8*, i32) #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_11__*, i8*, i32, i32, i32) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32 @processSQLNamePattern(i32, %struct.TYPE_11__*, i8*, i32, i32, i32*, i8*, i32*, i32*) #2

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_11__*, i8*) #2

declare dso_local i32* @PSQLexec(i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_11__*) #2

declare dso_local i64 @PQntuples(i32*) #2

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
