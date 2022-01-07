; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_tablespace.c_get_tablespace_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_tablespace.c_get_tablespace_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8** }
%struct.stat = type { i32 }

@old_cluster = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"template1\00", align 1
@QUERY_ALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"SELECT\09%s FROM\09pg_catalog.pg_tablespace WHERE\09spcname != 'pg_default' AND \09\09spcname != 'pg_global'\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"spclocation\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"pg_catalog.pg_tablespace_location(oid) AS spclocation\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@os_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@PG_FATAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"tablespace directory \22%s\22 does not exist\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"could not stat tablespace directory \22%s\22: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"tablespace path \22%s\22 is not a directory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_tablespace_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_tablespace_paths() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 4
  %8 = call i32* @connectToServer(%struct.TYPE_5__* @old_cluster, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %1, align 8
  %9 = load i32, i32* @QUERY_ALLOC, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = trunc i64 %10 to i32
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @old_cluster, i32 0, i32 0), align 4
  %15 = call i32 @GET_MAJOR_VERSION(i32 %14)
  %16 = icmp sle i32 %15, 901
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0)
  %19 = call i32 @snprintf(i8* %12, i32 %13, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32* @executeQueryOrDie(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %12)
  store i32* %21, i32** %2, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @PQntuples(i32* %22)
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 0), align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %0
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 0), align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @pg_malloc(i32 %29)
  %31 = inttoptr i64 %30 to i8**
  store i8** %31, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 1), align 8
  br label %33

32:                                               ; preds = %0
  store i8** null, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 1), align 8
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @PQfnumber(i32* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %94, %33
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 0), align 8
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %36
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @PQgetvalue(i32* %41, i32 %42, i32 %43)
  %45 = call i8* @pg_strdup(i32 %44)
  %46 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 1), align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %45, i8** %49, align 8
  %50 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 1), align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @stat(i8* %54, %struct.stat* %7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %40
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @ENOENT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32, i32* @PG_FATAL, align 4
  %63 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 1), align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i32, i8*, i8*, ...) @report_status(i32 %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  br label %79

69:                                               ; preds = %57
  %70 = load i32, i32* @PG_FATAL, align 4
  %71 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 1), align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* @errno, align 8
  %77 = call i32 @strerror(i64 %76)
  %78 = call i32 (i32, i8*, i8*, ...) @report_status(i32 %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %75, i32 %77)
  br label %79

79:                                               ; preds = %69, %61
  br label %80

80:                                               ; preds = %79, %40
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @S_ISDIR(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @PG_FATAL, align 4
  %87 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @os_info, i32 0, i32 1), align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32, i8*, i8*, ...) @report_status(i32 %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %85, %80
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %36

97:                                               ; preds = %36
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @PQclear(i32* %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @PQfinish(i32* %100)
  %102 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

declare dso_local i32* @connectToServer(%struct.TYPE_5__*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32* @executeQueryOrDie(i32*, i8*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @report_status(i32, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
