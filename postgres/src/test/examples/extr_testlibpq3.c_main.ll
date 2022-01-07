; ModuleID = '/home/carl/AnghaBench/postgres/src/test/examples/extr_testlibpq3.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/examples/extr_testlibpq3.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"dbname = postgres\00", align 1
@CONNECTION_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Connection to database failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"SET search_path = testlibpq3\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"SET failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"joe's place\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"SELECT * FROM test1 WHERE t = $1\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"SELECT failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"SELECT * FROM test1 WHERE i = $1::int4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [1 x i8*], align 8
  %10 = alloca [1 x i32], align 4
  %11 = alloca [1 x i32], align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  br label %20

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i8*, i8** %6, align 8
  %22 = call i32* @PQconnectdb(i8* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @PQstatus(i32* %23)
  %25 = load i64, i64* @CONNECTION_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @PQerrorMessage(i32* %29)
  %31 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @exit_nicely(i32* %32)
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @PQexec(i32* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @PQresultStatus(i32* %37)
  %39 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i8* @PQerrorMessage(i32* %43)
  %45 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @PQclear(i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @exit_nicely(i32* %48)
  br label %50

50:                                               ; preds = %41, %34
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @PQclear(i32* %51)
  %53 = getelementptr inbounds [1 x i8*], [1 x i8*]* %9, i64 0, i64 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %53, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds [1 x i8*], [1 x i8*]* %9, i64 0, i64 0
  %56 = call i32* @PQexecParams(i32* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 1, i32* null, i8** %55, i32* null, i32* null, i32 1)
  store i32* %56, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i64 @PQresultStatus(i32* %57)
  %59 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i8* @PQerrorMessage(i32* %63)
  %65 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %64)
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @PQclear(i32* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @exit_nicely(i32* %68)
  br label %70

70:                                               ; preds = %61, %50
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @show_binary_results(i32* %71)
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @PQclear(i32* %73)
  %75 = call i32 @htonl(i32 2)
  store i32 %75, i32* %12, align 4
  %76 = bitcast i32* %12 to i8*
  %77 = getelementptr inbounds [1 x i8*], [1 x i8*]* %9, i64 0, i64 0
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 4, i32* %78, align 4
  %79 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  store i32 1, i32* %79, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds [1 x i8*], [1 x i8*]* %9, i64 0, i64 0
  %82 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %83 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %84 = call i32* @PQexecParams(i32* %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 1, i32* null, i8** %81, i32* %82, i32* %83, i32 1)
  store i32* %84, i32** %8, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i64 @PQresultStatus(i32* %85)
  %87 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %70
  %90 = load i32, i32* @stderr, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = call i8* @PQerrorMessage(i32* %91)
  %93 = call i32 @fprintf(i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %92)
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @PQclear(i32* %94)
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @exit_nicely(i32* %96)
  br label %98

98:                                               ; preds = %89, %70
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @show_binary_results(i32* %99)
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @PQclear(i32* %101)
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @PQfinish(i32* %103)
  ret i32 0
}

declare dso_local i32* @PQconnectdb(i8*) #1

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i32 @exit_nicely(i32*) #1

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32* @PQexecParams(i32*, i8*, i32, i32*, i8**, i32*, i32*, i32) #1

declare dso_local i32 @show_binary_results(i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @PQfinish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
