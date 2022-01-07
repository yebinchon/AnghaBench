; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_receiveFileChunks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_receiveFileChunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not send query: %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"getting file chunks\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"could not set libpq connection to single row mode\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"unexpected result while fetching remote files: %s\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"unexpected result set size while fetching remote files\00", align 1
@TEXTOID = common dso_local global i64 0, align 8
@INT8OID = common dso_local global i64 0, align 8
@BYTEAOID = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [74 x i8] c"unexpected data types in result set while fetching remote files: %u %u %u\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"unexpected result format while fetching remote files\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"unexpected null values in result while fetching remote files\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"unexpected result length while fetching remote files\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"received null value for chunk for file \22%s\22, file has been deleted\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"received chunk for file \22%s\22, offset %lld, size %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @receiveFileChunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receiveFileChunks(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @conn, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @PQsendQueryParams(i32 %9, i8* %10, i32 0, i32* null, i32* null, i32* null, i32* null, i32 1)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @conn, align 4
  %15 = call i32 @PQerrorMessage(i32 %14)
  %16 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = call i32 (i8*, ...) @pg_log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @conn, align 4
  %20 = call i32 @PQsetSingleRowMode(i32 %19)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  br label %25

25:                                               ; preds = %140, %131, %33, %24
  %26 = load i32, i32* @conn, align 4
  %27 = call i32* @PQgetResult(i32 %26)
  store i32* %27, i32** %3, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %156

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @PQresultStatus(i32* %30)
  switch i32 %31, label %36 [
    i32 129, label %32
    i32 128, label %33
  ]

32:                                               ; preds = %29
  br label %40

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @PQclear(i32* %34)
  br label %25

36:                                               ; preds = %29
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @PQresultErrorMessage(i32* %37)
  %39 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @PQnfields(i32* %41)
  %43 = icmp ne i32 %42, 3
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @PQntuples(i32* %45)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40
  %49 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @PQftype(i32* %51, i32 0)
  %53 = load i64, i64* @TEXTOID, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @PQftype(i32* %56, i32 1)
  %58 = load i64, i64* @INT8OID, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @PQftype(i32* %61, i32 2)
  %63 = load i64, i64* @BYTEAOID, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60, %55, %50
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @PQftype(i32* %66, i32 0)
  %68 = load i32*, i32** %3, align 8
  %69 = call i64 @PQftype(i32* %68, i32 1)
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @PQftype(i32* %70, i32 2)
  %72 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i64 %67, i64 %69, i64 %71)
  br label %73

73:                                               ; preds = %65, %60
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @PQfformat(i32* %74, i32 0)
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @PQfformat(i32* %78, i32 1)
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @PQfformat(i32* %82, i32 2)
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81, %77, %73
  %88 = load i32*, i32** %3, align 8
  %89 = call i64 @PQgetisnull(i32* %88, i32 0, i32 0)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %3, align 8
  %93 = call i64 @PQgetisnull(i32* %92, i32 0, i32 1)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %87
  %96 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %91
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @PQgetlength(i32* %98, i32 0, i32 1)
  %100 = sext i32 %99 to i64
  %101 = icmp ne i64 %100, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i32*, i32** %3, align 8
  %106 = call i8* @PQgetvalue(i32* %105, i32 0, i32 1)
  %107 = call i32 @memcpy(i8* %6, i8* %106, i32 1)
  %108 = load i8, i8* %6, align 1
  %109 = call signext i8 @pg_ntoh64(i8 signext %108)
  store i8 %109, i8* %6, align 1
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @PQgetlength(i32* %110, i32 0, i32 2)
  store i32 %111, i32* %7, align 4
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @PQgetlength(i32* %112, i32 0, i32 0)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  %116 = call i8* @pg_malloc(i32 %115)
  store i8* %116, i8** %4, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = load i32*, i32** %3, align 8
  %119 = call i8* @PQgetvalue(i32* %118, i32 0, i32 0)
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @memcpy(i8* %117, i8* %119, i32 %120)
  %122 = load i8*, i8** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  store i8 0, i8* %125, align 1
  %126 = load i32*, i32** %3, align 8
  %127 = call i8* @PQgetvalue(i32* %126, i32 0, i32 2)
  store i8* %127, i8** %8, align 8
  %128 = load i32*, i32** %3, align 8
  %129 = call i64 @PQgetisnull(i32* %128, i32 0, i32 2)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %104
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 (i8*, ...) @pg_log_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i8* %132)
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 @remove_target_file(i8* %134, i32 1)
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 @pg_free(i8* %136)
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @PQclear(i32* %138)
  br label %25

140:                                              ; preds = %104
  %141 = load i8*, i8** %4, align 8
  %142 = load i8, i8* %6, align 1
  %143 = sext i8 %142 to i64
  %144 = load i32, i32* %7, align 4
  %145 = call i32 (i8*, ...) @pg_log_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i8* %141, i64 %143, i32 %144)
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 @open_target_file(i8* %146, i32 0)
  %148 = load i8*, i8** %8, align 8
  %149 = load i8, i8* %6, align 1
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @write_target_range(i8* %148, i8 signext %149, i32 %150)
  %152 = load i8*, i8** %4, align 8
  %153 = call i32 @pg_free(i8* %152)
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @PQclear(i32* %154)
  br label %25

156:                                              ; preds = %25
  ret void
}

declare dso_local i32 @PQsendQueryParams(i32, i8*, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @pg_fatal(i8*, ...) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @pg_log_debug(i8*, ...) #1

declare dso_local i32 @PQsetSingleRowMode(i32) #1

declare dso_local i32* @PQgetResult(i32) #1

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQresultErrorMessage(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @PQftype(i32*, i32) #1

declare dso_local i32 @PQfformat(i32*, i32) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @PQgetlength(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local signext i8 @pg_ntoh64(i8 signext) #1

declare dso_local i8* @pg_malloc(i32) #1

declare dso_local i32 @remove_target_file(i8*, i32) #1

declare dso_local i32 @pg_free(i8*) #1

declare dso_local i32 @open_target_file(i8*, i32) #1

declare dso_local i32 @write_target_range(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
