; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_streamutil.c_RetrieveDataDirCreatePerm.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_streamutil.c_RetrieveDataDirCreatePerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINIMUM_VERSION_FOR_GROUP_ACCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"SHOW data_directory_mode\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"could not send replication command \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [101 x i8] c"could not fetch group access flag: got %d rows and %d fields, expected %d rows and %d or more fields\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"group access flag could not be parsed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @RetrieveDataDirCreatePerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RetrieveDataDirCreatePerm(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @PQserverVersion(i32* %10)
  %12 = load i64, i64* @MINIMUM_VERSION_FOR_GROUP_ACCESS, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @PQexec(i32* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @PQresultStatus(i32* %18)
  %20 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @PQerrorMessage(i32* %23)
  %25 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @PQclear(i32* %26)
  store i32 0, i32* %2, align 4
  br label %60

28:                                               ; preds = %15
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @PQntuples(i32* %29)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @PQnfields(i32* %33)
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %44

36:                                               ; preds = %32, %28
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @PQntuples(i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @PQnfields(i32* %39)
  %41 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %40, i32 1, i32 1)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @PQclear(i32* %42)
  store i32 0, i32* %2, align 4
  br label %60

44:                                               ; preds = %32
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @PQgetvalue(i32* %45, i32 0, i32 0)
  %47 = call i32 @sscanf(i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @PQgetvalue(i32* %50, i32 0, i32 0)
  %52 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @PQclear(i32* %53)
  store i32 0, i32* %2, align 4
  br label %60

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @SetDataDirectoryCreatePerm(i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @PQclear(i32* %58)
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %49, %36, %22, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PQserverVersion(i32*) #1

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @SetDataDirectoryCreatePerm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
