; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_libpqGetFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_libpqGetFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SELECT pg_read_binary_file($1)\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"could not fetch remote file \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"unexpected result set while fetching remote file \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"fetched file \22%s\22, length %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libpqGetFile(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x i8*], align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* @conn, align 4
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %13 = call i32* @PQexecParams(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 1, i32* null, i8** %12, i32* null, i32* null, i32 1)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @PQresultStatus(i32* %14)
  %16 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @PQresultErrorMessage(i32* %20)
  %22 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @PQntuples(i32* %24)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @PQgetisnull(i32* %28, i32 0, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @PQgetlength(i32* %35, i32 0, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i8* @pg_malloc(i32 %38)
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @PQgetvalue(i32* %41, i32 0, i32 0)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @memcpy(i8* %40, i32 %42, i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @PQclear(i32* %49)
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @pg_log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %51, i32 %52)
  %54 = load i64*, i64** %4, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %34
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64*, i64** %4, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %34
  %61 = load i8*, i8** %6, align 8
  ret i8* %61
}

declare dso_local i32* @PQexecParams(i32, i8*, i32, i32*, i8**, i32*, i32*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_fatal(i8*, i8*, ...) #1

declare dso_local i32 @PQresultErrorMessage(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @PQgetlength(i32*, i32, i32) #1

declare dso_local i8* @pg_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @pg_log_debug(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
