; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_libpq_executeFileMap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_libpq_executeFileMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [69 x i8] c"CREATE TEMPORARY TABLE fetchchunks(path text, begin int8, len int4);\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"COPY fetchchunks FROM STDIN\00", align 1
@conn = common dso_local global i32 0, align 4
@PGRES_COPY_IN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"could not send file list: %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not send end-of-COPY: %s\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"unexpected result while sending file list: %s\00", align 1
@.str.5 = private unnamed_addr constant [93 x i8] c"SELECT path, begin,\0A  pg_read_binary_file(path, begin, len, true) AS chunk\0AFROM fetchchunks\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libpq_executeFileMap(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @run_simple_command(i8* %7)
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %9 = load i32, i32* @conn, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @PQexec(i32 %9, i8* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @PQresultStatus(i32* %12)
  %14 = load i64, i64* @PGRES_COPY_IN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @PQresultErrorMessage(i32* %17)
  %19 = call i32 @pg_fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @PQclear(i32* %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %85, %20
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %88

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %3, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @execute_pagemap(i32* %38, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %84 [
    i32 130, label %46
    i32 133, label %47
    i32 128, label %59
    i32 132, label %67
    i32 129, label %78
    i32 131, label %81
  ]

46:                                               ; preds = %29
  br label %84

47:                                               ; preds = %29
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @open_target_file(i32 %50, i32 1)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fetch_file_range(i32 %54, i32 0, i32 %57)
  br label %84

59:                                               ; preds = %29
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @truncate_target_file(i32 %62, i32 %65)
  br label %84

67:                                               ; preds = %29
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @fetch_file_range(i32 %70, i32 %73, i32 %76)
  br label %84

78:                                               ; preds = %29
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = call i32 @remove_target(%struct.TYPE_7__* %79)
  br label %84

81:                                               ; preds = %29
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = call i32 @create_target(%struct.TYPE_7__* %82)
  br label %84

84:                                               ; preds = %29, %81, %78, %67, %59, %47, %46
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %23

88:                                               ; preds = %23
  %89 = load i32, i32* @conn, align 4
  %90 = call i32 @PQputCopyEnd(i32 %89, i32* null)
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* @conn, align 4
  %94 = call i32 @PQerrorMessage(i32 %93)
  %95 = call i32 @pg_fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %110, %96
  %98 = load i32, i32* @conn, align 4
  %99 = call i32* @PQgetResult(i32 %98)
  store i32* %99, i32** %5, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i32*, i32** %5, align 8
  %103 = call i64 @PQresultStatus(i32* %102)
  %104 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @PQresultErrorMessage(i32* %107)
  %109 = call i32 @pg_fatal(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @PQclear(i32* %111)
  br label %97

113:                                              ; preds = %97
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 @receiveFileChunks(i8* %114)
  ret void
}

declare dso_local i32 @run_simple_command(i8*) #1

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_fatal(i8*, i32) #1

declare dso_local i32 @PQresultErrorMessage(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @execute_pagemap(i32*, i32) #1

declare dso_local i32 @open_target_file(i32, i32) #1

declare dso_local i32 @fetch_file_range(i32, i32, i32) #1

declare dso_local i32 @truncate_target_file(i32, i32) #1

declare dso_local i32 @remove_target(%struct.TYPE_7__*) #1

declare dso_local i32 @create_target(%struct.TYPE_7__*) #1

declare dso_local i32 @PQputCopyEnd(i32, i32*) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32* @PQgetResult(i32) #1

declare dso_local i32 @receiveFileChunks(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
