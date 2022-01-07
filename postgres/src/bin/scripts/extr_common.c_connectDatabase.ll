; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_connectDatabase.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_connectDatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@connectDatabase.have_password = internal global i32 0, align 4
@connectDatabase.password = internal global [100 x i8] zeroinitializer, align 16
@TRI_YES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"fallback_application_name\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"could not connect to database %s: out of memory\00", align 1
@CONNECTION_BAD = common dso_local global i64 0, align 8
@TRI_NO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"could not connect to database %s: %s\00", align 1
@ALWAYS_SECURE_SEARCH_PATH_SQL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @connectDatabase(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [7 x i8*], align 16
  %23 = alloca [7 x i8*], align 16
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %24 = load i32, i32* %19, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %9
  store i32 0, i32* @connectDatabase.have_password, align 4
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i32, i32* @connectDatabase.have_password, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @TRI_YES, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @simple_prompt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @connectDatabase.password, i64 0, i64 0), i32 100, i32 0)
  store i32 1, i32* @connectDatabase.have_password, align 4
  br label %36

36:                                               ; preds = %34, %30, %27
  br label %37

37:                                               ; preds = %88, %36
  %38 = getelementptr inbounds [7 x i8*], [7 x i8*]* %22, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 16
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds [7 x i8*], [7 x i8*]* %23, i64 0, i64 0
  store i8* %39, i8** %40, align 16
  %41 = getelementptr inbounds [7 x i8*], [7 x i8*]* %22, i64 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %41, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds [7 x i8*], [7 x i8*]* %23, i64 0, i64 1
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds [7 x i8*], [7 x i8*]* %22, i64 0, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %44, align 16
  %45 = load i8*, i8** %14, align 8
  %46 = getelementptr inbounds [7 x i8*], [7 x i8*]* %23, i64 0, i64 2
  store i8* %45, i8** %46, align 16
  %47 = getelementptr inbounds [7 x i8*], [7 x i8*]* %22, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %47, align 8
  %48 = load i32, i32* @connectDatabase.have_password, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @connectDatabase.password, i64 0, i64 0), i8* null
  %52 = getelementptr inbounds [7 x i8*], [7 x i8*]* %23, i64 0, i64 3
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds [7 x i8*], [7 x i8*]* %22, i64 0, i64 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %53, align 16
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds [7 x i8*], [7 x i8*]* %23, i64 0, i64 4
  store i8* %54, i8** %55, align 16
  %56 = getelementptr inbounds [7 x i8*], [7 x i8*]* %22, i64 0, i64 5
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8** %56, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = getelementptr inbounds [7 x i8*], [7 x i8*]* %23, i64 0, i64 5
  store i8* %57, i8** %58, align 8
  %59 = getelementptr inbounds [7 x i8*], [7 x i8*]* %22, i64 0, i64 6
  store i8* null, i8** %59, align 16
  %60 = getelementptr inbounds [7 x i8*], [7 x i8*]* %23, i64 0, i64 6
  store i8* null, i8** %60, align 16
  store i32 0, i32* %21, align 4
  %61 = getelementptr inbounds [7 x i8*], [7 x i8*]* %22, i64 0, i64 0
  %62 = getelementptr inbounds [7 x i8*], [7 x i8*]* %23, i64 0, i64 0
  %63 = call i32* @PQconnectdbParams(i8** %61, i8** %62, i32 1)
  store i32* %63, i32** %20, align 8
  %64 = load i32*, i32** %20, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %37
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %67)
  %69 = call i32 @exit(i32 1) #3
  unreachable

70:                                               ; preds = %37
  %71 = load i32*, i32** %20, align 8
  %72 = call i64 @PQstatus(i32* %71)
  %73 = load i64, i64* @CONNECTION_BAD, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load i32*, i32** %20, align 8
  %77 = call i64 @PQconnectionNeedsPassword(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @TRI_NO, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32*, i32** %20, align 8
  %85 = call i32 @PQfinish(i32* %84)
  %86 = call i32 @simple_prompt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @connectDatabase.password, i64 0, i64 0), i32 100, i32 0)
  store i32 1, i32* @connectDatabase.have_password, align 4
  store i32 1, i32* %21, align 4
  br label %87

87:                                               ; preds = %83, %79, %75, %70
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %21, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %37, label %91

91:                                               ; preds = %88
  %92 = load i32*, i32** %20, align 8
  %93 = call i64 @PQstatus(i32* %92)
  %94 = load i64, i64* @CONNECTION_BAD, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** %20, align 8
  %101 = call i32 @PQfinish(i32* %100)
  store i32* null, i32** %10, align 8
  br label %115

102:                                              ; preds = %96
  %103 = load i8*, i8** %11, align 8
  %104 = load i32*, i32** %20, align 8
  %105 = call i32 @PQerrorMessage(i32* %104)
  %106 = call i32 (i8*, i8*, ...) @pg_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %103, i32 %105)
  %107 = call i32 @exit(i32 1) #3
  unreachable

108:                                              ; preds = %91
  %109 = load i32*, i32** %20, align 8
  %110 = load i32, i32* @ALWAYS_SECURE_SEARCH_PATH_SQL, align 4
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @executeQuery(i32* %109, i32 %110, i32 %111)
  %113 = call i32 @PQclear(i32 %112)
  %114 = load i32*, i32** %20, align 8
  store i32* %114, i32** %10, align 8
  br label %115

115:                                              ; preds = %108, %99
  %116 = load i32*, i32** %10, align 8
  ret i32* %116
}

declare dso_local i32 @simple_prompt(i8*, i8*, i32, i32) #1

declare dso_local i32* @PQconnectdbParams(i8**, i8**, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i64 @PQconnectionNeedsPassword(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @PQclear(i32) #1

declare dso_local i32 @executeQuery(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
