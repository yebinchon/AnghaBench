; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpTableData_copy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpTableData_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i8*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"dumping contents of table \22%s.%s\22\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"COPY (SELECT \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"* \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"FROM %s %s) TO stdout;\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"COPY %s %s TO stdout;\00", align 1
@PGRES_COPY_OUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"\\.\0A\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"Dumping the contents of table \22%s\22 failed: PQgetCopyData() failed.\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Error message from server: %s\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"The command was: %s\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [65 x i8] c"Dumping the contents of table \22%s\22 failed: PQgetResult() failed.\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"unexpected extra results during COPY of table \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @dumpTableData_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dumpTableData_copy(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %5, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %6, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %7, align 8
  %24 = call %struct.TYPE_19__* (...) @createPQExpBuffer()
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %8, align 8
  %25 = call %struct.TYPE_19__* (...) @createPQExpBuffer()
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %9, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @GetConnection(i32* %26)
  store i32* %27, i32** %10, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @pg_log_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %39 = call i8* @fmtCopyColumnList(%struct.TYPE_17__* %37, %struct.TYPE_19__* %38)
  store i8* %39, i8** %14, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %75

44:                                               ; preds = %2
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %46 = call i32 @appendPQExpBufferStr(%struct.TYPE_19__* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** %14, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = icmp sgt i32 %48, 2
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i32 @appendPQExpBufferStr(%struct.TYPE_19__* %51, i8* %53)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  store i8 32, i8* %63, align 1
  br label %67

64:                                               ; preds = %44
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %66 = call i32 @appendPQExpBufferStr(%struct.TYPE_19__* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %50
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %70 = call i32 @fmtQualifiedDumpable(%struct.TYPE_17__* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @appendPQExpBuffer(%struct.TYPE_19__* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %70, i8* %73)
  br label %81

75:                                               ; preds = %2
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = call i32 @fmtQualifiedDumpable(%struct.TYPE_17__* %77)
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @appendPQExpBuffer(%struct.TYPE_19__* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %78, i8* %79)
  br label %81

81:                                               ; preds = %75, %67
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @PGRES_COPY_OUT, align 4
  %87 = call i32* @ExecuteSqlQuery(i32* %82, i8* %85, i32 %86)
  store i32* %87, i32** %11, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @PQclear(i32* %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %91 = call i32 @destroyPQExpBuffer(%struct.TYPE_19__* %90)
  br label %92

92:                                               ; preds = %108, %81
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @PQgetCopyData(i32* %93, i8** %13, i32 0)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %109

98:                                               ; preds = %92
  %99 = load i8*, i8** %13, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32*, i32** %3, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @WriteData(i32* %102, i8* %103, i32 %104)
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @PQfreemem(i8* %106)
  br label %108

108:                                              ; preds = %101, %98
  br label %92

109:                                              ; preds = %97
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @archprintf(i32* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %112, -2
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @pg_log_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i8* %115)
  %117 = load i32*, i32** %10, align 8
  %118 = call i8* @PQerrorMessage(i32* %117)
  %119 = call i32 @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %118)
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @pg_log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %122)
  %124 = call i32 @exit_nicely(i32 1)
  br label %125

125:                                              ; preds = %114, %109
  %126 = load i32*, i32** %10, align 8
  %127 = call i32* @PQgetResult(i32* %126)
  store i32* %127, i32** %11, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = call i64 @PQresultStatus(i32* %128)
  %130 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %125
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @pg_log_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i8* %133)
  %135 = load i32*, i32** %10, align 8
  %136 = call i8* @PQerrorMessage(i32* %135)
  %137 = call i32 @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %136)
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @pg_log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %140)
  %142 = call i32 @exit_nicely(i32 1)
  br label %143

143:                                              ; preds = %132, %125
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @PQclear(i32* %144)
  %146 = load i32*, i32** %10, align 8
  %147 = call i32* @PQgetResult(i32* %146)
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @pg_log_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %149, %143
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %154 = call i32 @destroyPQExpBuffer(%struct.TYPE_19__* %153)
  ret i32 1
}

declare dso_local %struct.TYPE_19__* @createPQExpBuffer(...) #1

declare dso_local i32* @GetConnection(i32*) #1

declare dso_local i32 @pg_log_info(i8*, i32, i8*) #1

declare dso_local i8* @fmtCopyColumnList(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_19__*, i8*, i32, i8*) #1

declare dso_local i32 @fmtQualifiedDumpable(%struct.TYPE_17__*) #1

declare dso_local i32* @ExecuteSqlQuery(i32*, i8*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_19__*) #1

declare dso_local i32 @PQgetCopyData(i32*, i8**, i32) #1

declare dso_local i32 @WriteData(i32*, i8*, i32) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i32 @archprintf(i32*, i8*) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i32 @exit_nicely(i32) #1

declare dso_local i32* @PQgetResult(i32*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
