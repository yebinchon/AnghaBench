; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_db.c_ConnectDatabase.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_db.c_ConnectDatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"already connected to a database\00", align 1
@TRI_YES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"fallback_application_name\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"could not connect to database\00", align 1
@CONNECTION_BAD = common dso_local global i64 0, align 8
@TRI_NO = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"connection to database \22%s\22 failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ALWAYS_SECURE_SEARCH_PATH_SQL = common dso_local global i32 0, align 4
@notice_processor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConnectDatabase(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [100 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca [7 x i8*], align 16
  %18 = alloca [7 x i8*], align 16
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %13, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %14, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @TRI_YES, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i8*, i8** %14, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %39 = call i32 @simple_prompt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 100, i32 0)
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  store i8* %40, i8** %14, align 8
  br label %41

41:                                               ; preds = %37, %34, %27
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %106, %41
  %46 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 16
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 0
  store i8* %47, i8** %48, align 16
  %49 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 1
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %52, align 16
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 2
  store i8* %53, i8** %54, align 16
  %55 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %55, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 3
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %58, align 16
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 4
  store i8* %59, i8** %60, align 16
  %61 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 5
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %61, align 8
  %62 = load i8*, i8** @progname, align 8
  %63 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 5
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 6
  store i8* null, i8** %64, align 16
  %65 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 6
  store i8* null, i8** %65, align 16
  store i32 0, i32* %16, align 4
  %66 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 0
  %67 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 0
  %68 = call i64 @PQconnectdbParams(i8** %66, i8** %67, i32 1)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %45
  %76 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %45
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @PQstatus(i64 %80)
  %82 = load i64, i64* @CONNECTION_BAD, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %77
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @PQconnectionNeedsPassword(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = load i8*, i8** %14, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* @TRI_NO, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @PQfinish(i64 %100)
  %102 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %103 = call i32 @simple_prompt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %102, i32 100, i32 0)
  %104 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  store i8* %104, i8** %14, align 8
  store i32 1, i32* %16, align 4
  br label %105

105:                                              ; preds = %97, %93, %90, %84, %77
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %45, label %109

109:                                              ; preds = %106
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @PQstatus(i64 %112)
  %114 = load i64, i64* @CONNECTION_BAD, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %109
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @PQdb(i64 %119)
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i8* @PQdb(i64 %125)
  br label %128

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %122
  %129 = phi i8* [ %126, %122 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %127 ]
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @PQerrorMessage(i64 %132)
  %134 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %129, i32 %133)
  br label %135

135:                                              ; preds = %128, %109
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %137 = bitcast %struct.TYPE_4__* %136 to i32*
  %138 = load i32, i32* @ALWAYS_SECURE_SEARCH_PATH_SQL, align 4
  %139 = call i32 @ExecuteSqlQueryForSingleRow(i32* %137, i32 %138)
  %140 = call i32 @PQclear(i32 %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @PQconnectionUsedPassword(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %135
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @free(i8* %154)
  br label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @PQpass(i64 %159)
  %161 = call i8* @pg_strdup(i32 %160)
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %156, %135
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %166 = call i32 @_check_database_version(%struct.TYPE_4__* %165)
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @notice_processor, align 4
  %171 = call i32 @PQsetNoticeProcessor(i64 %169, i32 %170, i32* null)
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @set_archive_cancel_info(%struct.TYPE_4__* %172, i64 %175)
  ret void
}

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @simple_prompt(i8*, i8*, i32, i32) #1

declare dso_local i64 @PQconnectdbParams(i8**, i8**, i32) #1

declare dso_local i64 @PQstatus(i64) #1

declare dso_local i64 @PQconnectionNeedsPassword(i64) #1

declare dso_local i32 @PQfinish(i64) #1

declare dso_local i8* @PQdb(i64) #1

declare dso_local i32 @PQerrorMessage(i64) #1

declare dso_local i32 @PQclear(i32) #1

declare dso_local i32 @ExecuteSqlQueryForSingleRow(i32*, i32) #1

declare dso_local i64 @PQconnectionUsedPassword(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @PQpass(i64) #1

declare dso_local i32 @_check_database_version(%struct.TYPE_4__*) #1

declare dso_local i32 @PQsetNoticeProcessor(i64, i32, i32*) #1

declare dso_local i32 @set_archive_cancel_info(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
