; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_libpqConnect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_libpqConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conn = common dso_local global i32 0, align 4
@CONNECTION_BAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"could not connect to server: %s\00", align 1
@showprogress = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"connected to server\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SET statement_timeout = 0\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SET lock_timeout = 0\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"SET idle_in_transaction_session_timeout = 0\00", align 1
@ALWAYS_SECURE_SEARCH_PATH_SQL = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"could not clear search_path: %s\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"SELECT pg_is_in_recovery()\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"source server must not be in recovery mode\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"SHOW full_page_writes\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"full_page_writes must be enabled in the source server\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"SET synchronous_commit = off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libpqConnect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @PQconnectdb(i8* %5)
  store i32 %6, i32* @conn, align 4
  %7 = load i32, i32* @conn, align 4
  %8 = call i64 @PQstatus(i32 %7)
  %9 = load i64, i64* @CONNECTION_BAD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @conn, align 4
  %13 = call i32 @PQerrorMessage(i32 %12)
  %14 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i64, i64* @showprogress, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @pg_log_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = call i32 @run_simple_command(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @run_simple_command(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @run_simple_command(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32, i32* @conn, align 4
  %25 = load i32, i32* @ALWAYS_SECURE_SEARCH_PATH_SQL, align 4
  %26 = call i32* @PQexec(i32 %24, i32 %25)
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @PQresultStatus(i32* %27)
  %29 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @PQresultErrorMessage(i32* %32)
  %34 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %20
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @PQclear(i32* %36)
  %38 = call i8* @run_simple_query(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @pg_free(i8* %45)
  %47 = call i8* @run_simple_query(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  store i8* %47, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @pg_free(i8* %54)
  %56 = call i32 @run_simple_command(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @PQconnectdb(i8*) #1

declare dso_local i64 @PQstatus(i32) #1

declare dso_local i32 @pg_fatal(i8*, ...) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @pg_log_info(i8*) #1

declare dso_local i32 @run_simple_command(i8*) #1

declare dso_local i32* @PQexec(i32, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQresultErrorMessage(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i8* @run_simple_query(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pg_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
