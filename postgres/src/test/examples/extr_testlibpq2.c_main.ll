; ModuleID = '/home/carl/AnghaBench/postgres/src/test/examples/extr_testlibpq2.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/examples/extr_testlibpq2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"dbname = postgres\00", align 1
@CONNECTION_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Connection to database failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"SELECT pg_catalog.set_config('search_path', '', false)\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"SET failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"LISTEN TBL2\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"LISTEN command failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"select() failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"ASYNC NOTIFY of '%s' received from backend PID %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @exit_nicely(i32* %32)
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @PQexec(i32* %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @PQresultStatus(i32* %37)
  %39 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i8* @PQerrorMessage(i32* %43)
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @PQclear(i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @exit_nicely(i32* %48)
  br label %50

50:                                               ; preds = %41, %34
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @PQclear(i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32* @PQexec(i32* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @PQresultStatus(i32* %55)
  %57 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i8* @PQerrorMessage(i32* %61)
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @PQclear(i32* %64)
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @exit_nicely(i32* %66)
  br label %68

68:                                               ; preds = %59, %50
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @PQclear(i32* %69)
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %117, %68
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %118

74:                                               ; preds = %71
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @PQsocket(i32* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %118

80:                                               ; preds = %74
  %81 = call i32 @FD_ZERO(i32* %12)
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @FD_SET(i32 %82, i32* %12)
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i64 @select(i32 %85, i32* %12, i32* null, i32* null, i32* null)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* @errno, align 4
  %91 = call i8* @strerror(i32 %90)
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @exit_nicely(i32* %93)
  br label %95

95:                                               ; preds = %88, %80
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @PQconsumeInput(i32* %96)
  br label %98

98:                                               ; preds = %102, %95
  %99 = load i32*, i32** %7, align 8
  %100 = call %struct.TYPE_4__* @PQnotifies(i32* %99)
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %9, align 8
  %101 = icmp ne %struct.TYPE_4__* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load i32, i32* @stderr, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i8* %106, i32 %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %112 = call i32 @PQfreemem(%struct.TYPE_4__* %111)
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @PQconsumeInput(i32* %115)
  br label %98

117:                                              ; preds = %98
  br label %71

118:                                              ; preds = %79, %71
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @PQfinish(i32* %121)
  ret i32 0
}

declare dso_local i32* @PQconnectdb(i8*) #1

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i32 @exit_nicely(i32*) #1

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQsocket(i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @PQconsumeInput(i32*) #1

declare dso_local %struct.TYPE_4__* @PQnotifies(i32*) #1

declare dso_local i32 @PQfreemem(%struct.TYPE_4__*) #1

declare dso_local i32 @PQfinish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
