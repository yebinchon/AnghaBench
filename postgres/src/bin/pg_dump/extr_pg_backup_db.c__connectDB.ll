; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_db.c__connectDB.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_db.c__connectDB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i64, i32 }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [41 x i8] c"connecting to database \22%s\22 as user \22%s\22\00", align 1
@TRI_YES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dbname=\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"fallback_application_name\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"could not reconnect to database\00", align 1
@CONNECTION_BAD = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"could not reconnect to database: %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"Password incorrect\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Connecting to %s as %s\0A\00", align 1
@TRI_NO = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"connection needs password\00", align 1
@notice_processor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i8*, i8*)* @_connectDB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_connectDB(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [100 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca [7 x i8*], align 16
  %15 = alloca [7 x i8*], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @PQdb(i32 %21)
  store i8* %22, i8** %9, align 8
  br label %25

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %9, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %25
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @PQuser(i32 %35)
  store i8* %36, i8** %10, align 8
  br label %39

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %10, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @pg_log_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TRI_YES, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load i8*, i8** %11, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %56 = call i32 @simple_prompt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %55, i32 100, i32 0)
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  store i8* %57, i8** %11, align 8
  br label %58

58:                                               ; preds = %54, %51, %39
  %59 = call i32 @initPQExpBuffer(%struct.TYPE_9__* %7)
  %60 = call i32 @appendPQExpBufferStr(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @appendConnStrVal(%struct.TYPE_9__* %7, i8* %61)
  br label %63

63:                                               ; preds = %137, %58
  %64 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %64, align 16
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @PQhost(i32 %67)
  %69 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 0
  store i8* %68, i8** %69, align 16
  %70 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i64 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @PQport(i32 %73)
  %75 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 1
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i64 0, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %76, align 16
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 2
  store i8* %77, i8** %78, align 16
  %79 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %79, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 3
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i64 0, i64 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %82, align 16
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 4
  store i8* %84, i8** %85, align 16
  %86 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i64 0, i64 5
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8** %86, align 8
  %87 = load i8*, i8** @progname, align 8
  %88 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 5
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i64 0, i64 6
  store i8* null, i8** %89, align 16
  %90 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 6
  store i8* null, i8** %90, align 16
  store i32 0, i32* %13, align 4
  %91 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i64 0, i64 0
  %92 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 0
  %93 = call i32* @PQconnectdbParams(i8** %91, i8** %92, i32 1)
  store i32* %93, i32** %8, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %63
  %97 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %63
  %99 = load i32*, i32** %8, align 8
  %100 = call i64 @PQstatus(i32* %99)
  %101 = load i64, i64* @CONNECTION_BAD, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %98
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @PQconnectionNeedsPassword(i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @PQerrorMessage(i32* %108)
  %110 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @PQfinish(i32* %112)
  %114 = load i8*, i8** %11, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i32, i32* @stderr, align 4
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %121, i8* %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TRI_NO, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %131 = call i32 @simple_prompt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %130, i32 100, i32 0)
  %132 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  store i8* %132, i8** %11, align 8
  br label %135

133:                                              ; preds = %119
  %134 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129
  store i32 1, i32* %13, align 4
  br label %136

136:                                              ; preds = %135, %98
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %63, label %140

140:                                              ; preds = %137
  %141 = load i32*, i32** %8, align 8
  %142 = call i64 @PQconnectionUsedPassword(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %140
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @free(i8* %152)
  br label %154

154:                                              ; preds = %149, %144
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @PQpass(i32* %155)
  %157 = call i8* @pg_strdup(i32 %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %154, %140
  %161 = call i32 @termPQExpBuffer(%struct.TYPE_9__* %7)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = call i32 @_check_database_version(%struct.TYPE_10__* %162)
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* @notice_processor, align 4
  %166 = call i32 @PQsetNoticeProcessor(i32* %164, i32 %165, i32* null)
  %167 = load i32*, i32** %8, align 8
  ret i32* %167
}

declare dso_local i8* @PQdb(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @PQuser(i32) #1

declare dso_local i32 @pg_log_info(i8*, i8*, i8*) #1

declare dso_local i32 @simple_prompt(i8*, i8*, i32, i32) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @appendConnStrVal(%struct.TYPE_9__*, i8*) #1

declare dso_local i8* @PQhost(i32) #1

declare dso_local i8* @PQport(i32) #1

declare dso_local i32* @PQconnectdbParams(i8**, i8**, i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i32 @PQconnectionNeedsPassword(i32*) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @PQconnectionUsedPassword(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @PQpass(i32*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @_check_database_version(%struct.TYPE_10__*) #1

declare dso_local i32 @PQsetNoticeProcessor(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
