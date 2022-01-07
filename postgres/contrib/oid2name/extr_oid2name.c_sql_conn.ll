; ModuleID = '/home/carl/AnghaBench/postgres/contrib/oid2name/extr_oid2name.c_sql_conn.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/oid2name/extr_oid2name.c_sql_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"fallback_application_name\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"could not connect to database %s\00", align 1
@CONNECTION_BAD = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"could not connect to database %s: %s\00", align 1
@ALWAYS_SECURE_SEARCH_PATH_SQL = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"could not clear search_path: %s\00", align 1
@PARAMS_ARRAY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sql_conn(%struct.options* %0) #0 {
  %2 = alloca %struct.options*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [7 x i8*], align 16
  %9 = alloca [7 x i8*], align 16
  store %struct.options* %0, %struct.options** %2, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %76, %1
  %11 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11, align 16
  %12 = load %struct.options*, %struct.options** %2, align 8
  %13 = getelementptr inbounds %struct.options, %struct.options* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 0
  store i8* %14, i8** %15, align 16
  %16 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.options*, %struct.options** %2, align 8
  %18 = getelementptr inbounds %struct.options, %struct.options* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 1
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 16
  %22 = load %struct.options*, %struct.options** %2, align 8
  %23 = getelementptr inbounds %struct.options, %struct.options* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 2
  store i8* %24, i8** %25, align 16
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %10
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  br label %32

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ null, %31 ]
  %34 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 3
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %35, align 16
  %36 = load %struct.options*, %struct.options** %2, align 8
  %37 = getelementptr inbounds %struct.options, %struct.options* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 4
  store i8* %38, i8** %39, align 16
  %40 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 5
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.options*, %struct.options** %2, align 8
  %42 = getelementptr inbounds %struct.options, %struct.options* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 5
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 6
  store i8* null, i8** %45, align 16
  %46 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 6
  store i8* null, i8** %46, align 16
  store i32 0, i32* %6, align 4
  %47 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 0
  %48 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 0
  %49 = call i32* @PQconnectdbParams(i8** %47, i8** %48, i32 1)
  store i32* %49, i32** %3, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %32
  %53 = load %struct.options*, %struct.options** %2, align 8
  %54 = getelementptr inbounds %struct.options, %struct.options* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %55)
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %32
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @PQstatus(i32* %59)
  %61 = load i64, i64* @CONNECTION_BAD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i32*, i32** %3, align 8
  %65 = call i64 @PQconnectionNeedsPassword(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @PQfinish(i32* %71)
  %73 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %74 = call i32 @simple_prompt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %73, i32 100, i32 0)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %70, %67, %63, %58
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %10, label %79

79:                                               ; preds = %76
  %80 = load i32*, i32** %3, align 8
  %81 = call i64 @PQstatus(i32* %80)
  %82 = load i64, i64* @CONNECTION_BAD, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.options*, %struct.options** %2, align 8
  %86 = getelementptr inbounds %struct.options, %struct.options* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = call i8* @PQerrorMessage(i32* %88)
  %90 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %87, i8* %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @PQfinish(i32* %91)
  %93 = call i32 @exit(i32 1) #3
  unreachable

94:                                               ; preds = %79
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* @ALWAYS_SECURE_SEARCH_PATH_SQL, align 4
  %97 = call i32* @PQexec(i32* %95, i32 %96)
  store i32* %97, i32** %7, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i64 @PQresultStatus(i32* %98)
  %100 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %94
  %103 = load i32*, i32** %3, align 8
  %104 = call i8* @PQerrorMessage(i32* %103)
  %105 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %104)
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @PQclear(i32* %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @PQfinish(i32* %108)
  %110 = call i32 @exit(i32 -1) #3
  unreachable

111:                                              ; preds = %94
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @PQclear(i32* %112)
  %114 = load i32*, i32** %3, align 8
  ret i32* %114
}

declare dso_local i32* @PQconnectdbParams(i8**, i8**, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i64 @PQconnectionNeedsPassword(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @simple_prompt(i8*, i8*, i32, i32) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i32* @PQexec(i32*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
