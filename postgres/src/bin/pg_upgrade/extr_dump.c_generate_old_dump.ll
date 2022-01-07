; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_dump.c_generate_old_dump.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_dump.c_generate_old_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Creating dump of global objects\00", align 1
@UTILITY_LOG_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"\22%s/pg_dumpall\22 %s --globals-only --quote-all-identifiers --binary-upgrade %s -f %s\00", align 1
@new_cluster = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@old_cluster = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@log_opts = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GLOBALS_DUMP_FILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Creating dump of database schemas\0A\00", align 1
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"dbname=\00", align 1
@PG_STATUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DB_DUMP_FILE_MASK = common dso_local global i8* null, align 8
@DB_DUMP_LOG_FILE_MASK = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [105 x i8] c"\22%s/pg_dump\22 %s --schema-only --quote-all-identifiers --binary-upgrade --format=custom %s --file=\22%s\22 %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_old_dump() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca %struct.TYPE_14__, align 4
  %8 = call i32 @prep_status(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @UTILITY_LOG_FILE, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @new_cluster, i32 0, i32 0), align 4
  %11 = call i32 @cluster_conn_opts(%struct.TYPE_16__* @old_cluster)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @log_opts, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %16 = load i32, i32* @GLOBALS_DUMP_FILE, align 4
  %17 = call i32 @exec_prog(i32 %9, i32* null, i32 1, i32 1, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %11, i8* %15, i32 %16)
  %18 = call i32 (...) @check_ok()
  %19 = call i32 @prep_status(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %75, %0
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @old_cluster, i32 0, i32 0, i32 0), align 8
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %20
  %25 = load i32, i32* @MAXPGPATH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %2, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %3, align 8
  %29 = load i32, i32* @MAXPGPATH, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %4, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @old_cluster, i32 0, i32 0, i32 1), align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i64 %34
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %5, align 8
  %36 = call i32 @initPQExpBuffer(%struct.TYPE_14__* %6)
  %37 = call i32 @appendPQExpBufferStr(%struct.TYPE_14__* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @appendConnStrVal(%struct.TYPE_14__* %6, i32 %40)
  %42 = call i32 @initPQExpBuffer(%struct.TYPE_14__* %7)
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @appendShellString(%struct.TYPE_14__* %7, i32 %44)
  %46 = call i32 @termPQExpBuffer(%struct.TYPE_14__* %6)
  %47 = load i32, i32* @PG_STATUS, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pg_log(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  %52 = trunc i64 %26 to i32
  %53 = load i8*, i8** @DB_DUMP_FILE_MASK, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snprintf(i8* %28, i32 %52, i8* %53, i32 %56)
  %58 = trunc i64 %30 to i32
  %59 = load i8*, i8** @DB_DUMP_LOG_FILE_MASK, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snprintf(i8* %31, i32 %58, i8* %59, i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @new_cluster, i32 0, i32 0), align 4
  %65 = call i32 @cluster_conn_opts(%struct.TYPE_16__* @old_cluster)
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @log_opts, i32 0, i32 0), align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @parallel_exec_prog(i8* %31, i32* null, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.7, i64 0, i64 0), i32 %64, i32 %65, i8* %69, i8* %28, i32 %71)
  %73 = call i32 @termPQExpBuffer(%struct.TYPE_14__* %7)
  %74 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %74)
  br label %75

75:                                               ; preds = %24
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %20

78:                                               ; preds = %20
  br label %79

79:                                               ; preds = %82, %78
  %80 = call i32 @reap_child(i32 1)
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %79

83:                                               ; preds = %79
  %84 = call i32 (...) @end_progress_output()
  %85 = call i32 (...) @check_ok()
  ret void
}

declare dso_local i32 @prep_status(i8*) #1

declare dso_local i32 @exec_prog(i32, i32*, i32, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @cluster_conn_opts(%struct.TYPE_16__*) #1

declare dso_local i32 @check_ok(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_14__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @appendConnStrVal(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @appendShellString(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_14__*) #1

declare dso_local i32 @pg_log(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @parallel_exec_prog(i8*, i32*, i8*, i32, i32, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @reap_child(i32) #1

declare dso_local i32 @end_progress_output(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
