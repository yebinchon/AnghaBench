; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_libpqProcessFileList.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_libpqProcessFileList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [752 x i8] c"WITH RECURSIVE files (path, filename, size, isdir) AS (\0A  SELECT '' AS path, filename, size, isdir FROM\0A  (SELECT pg_ls_dir('.', true, false) AS filename) AS fn,\0A        pg_stat_file(fn.filename, true) AS this\0A  UNION ALL\0A  SELECT parent.path || parent.filename || '/' AS path,\0A         fn, this.size, this.isdir\0A  FROM files AS parent,\0A       pg_ls_dir(parent.path || parent.filename, true, false) AS fn,\0A       pg_stat_file(parent.path || parent.filename || '/' || fn, true) AS this\0A       WHERE parent.isdir = 't'\0A)\0ASELECT path || filename, size, isdir,\0A       pg_tablespace_location(pg_tablespace.oid) AS link_target\0AFROM files\0ALEFT OUTER JOIN pg_tablespace ON files.path = 'pg_tblspc/'\0A                             AND oid::text = files.filename\0A\00", align 1
@conn = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"could not fetch file list: %s\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"unexpected result set while fetching file list\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@FILE_TYPE_SYMLINK = common dso_local global i32 0, align 4
@FILE_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_TYPE_REGULAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libpqProcessFileList() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* getelementptr inbounds ([752 x i8], [752 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %9 = load i32, i32* @conn, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32* @PQexec(i32 %9, i8* %10)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = call i64 @PQresultStatus(i32* %12)
  %14 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @PQresultErrorMessage(i32* %17)
  %19 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %0
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @PQnfields(i32* %21)
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %74, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @PQntuples(i32* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %27
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i8* @PQgetvalue(i32* %33, i32 %34, i32 0)
  store i8* %35, i8** %4, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i8* @PQgetvalue(i32* %36, i32 %37, i32 1)
  %39 = call i32 @atol(i8* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i8* @PQgetvalue(i32* %40, i32 %41, i32 2)
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load i32*, i32** %1, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i8* @PQgetvalue(i32* %46, i32 %47, i32 3)
  store i8* %48, i8** %7, align 8
  %49 = load i32*, i32** %1, align 8
  %50 = call i64 @PQgetisnull(i32* %49, i32 0, i32 1)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %74

53:                                               ; preds = %32
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @FILE_TYPE_SYMLINK, align 4
  store i32 %59, i32* %8, align 4
  br label %68

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  store i32 %64, i32* %8, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @FILE_TYPE_REGULAR, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %63
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @process_source_file(i8* %69, i32 %70, i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %68, %52
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %27

77:                                               ; preds = %27
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @PQclear(i32* %78)
  ret void
}

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_fatal(i8*, ...) #1

declare dso_local i32 @PQresultErrorMessage(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @process_source_file(i8*, i32, i32, i8*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
