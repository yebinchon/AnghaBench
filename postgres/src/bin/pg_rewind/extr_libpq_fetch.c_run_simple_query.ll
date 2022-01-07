; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_run_simple_query.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_run_simple_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conn = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"error running query (%s) in source server: %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unexpected result set from query\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @run_simple_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @run_simple_query(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @conn, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @PQexec(i32 %5, i8* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @PQresultStatus(i32* %8)
  %10 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @PQresultErrorMessage(i32* %14)
  %16 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @PQnfields(i32* %18)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @PQntuples(i32* %22)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @PQgetisnull(i32* %26, i32 0, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21, %17
  %30 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @PQgetvalue(i32* %32, i32 0, i32 0)
  %34 = call i8* @pg_strdup(i32 %33)
  store i8* %34, i8** %4, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @PQclear(i32* %35)
  %37 = load i8*, i8** %4, align 8
  ret i8* %37
}

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_fatal(i8*, ...) #1

declare dso_local i32 @PQresultErrorMessage(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
