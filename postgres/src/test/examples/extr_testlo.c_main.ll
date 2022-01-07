; ModuleID = '/home/carl/AnghaBench/postgres/src/test/examples/extr_testlo.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/examples/extr_testlo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Usage: %s database_name in_filename out_filename\0A\00", align 1
@CONNECTION_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Connection to database failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"SELECT pg_catalog.set_config('search_path', '', false)\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"SET failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"importing file \22%s\22 ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\09as large object %u.\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"picking out bytes 1000-2000 of the large object\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"overwriting bytes 1000-2000 of the large object with X's\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"exporting large object to file \22%s\22 ...\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %6, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32* @PQsetdb(i32* null, i32* null, i32* null, i32* null, i8* %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i64 @PQstatus(i32* %33)
  %35 = load i64, i64* @CONNECTION_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %21
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i8* @PQerrorMessage(i32* %39)
  %41 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @exit_nicely(i32* %42)
  br label %44

44:                                               ; preds = %37, %21
  %45 = load i32*, i32** %10, align 8
  %46 = call i32* @PQexec(i32* %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i64 @PQresultStatus(i32* %47)
  %49 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i8* @PQerrorMessage(i32* %53)
  %55 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @PQclear(i32* %56)
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @exit_nicely(i32* %58)
  br label %60

60:                                               ; preds = %51, %44
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @PQclear(i32* %61)
  %63 = load i32*, i32** %10, align 8
  %64 = call i32* @PQexec(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @PQclear(i32* %65)
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  %69 = load i32*, i32** %10, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @lo_import(i32* %69, i8* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = call i8* @PQerrorMessage(i32* %76)
  %78 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  br label %103

79:                                               ; preds = %60
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @pickout(i32* %83, i32 %84, i32 1000, i32 1000)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0))
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @overwrite(i32* %87, i32 %88, i32 1000, i32 1000)
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %90)
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = call i64 @lo_export(i32* %92, i32 %93, i8* %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %79
  %98 = load i32, i32* @stderr, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = call i8* @PQerrorMessage(i32* %99)
  %101 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %97, %79
  br label %103

103:                                              ; preds = %102, %74
  %104 = load i32*, i32** %10, align 8
  %105 = call i32* @PQexec(i32* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i32* %105, i32** %11, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @PQclear(i32* %106)
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @PQfinish(i32* %108)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @PQsetdb(i32*, i32*, i32*, i32*, i8*) #1

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i32 @exit_nicely(i32*) #1

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @lo_import(i32*, i8*) #1

declare dso_local i32 @pickout(i32*, i32, i32, i32) #1

declare dso_local i32 @overwrite(i32*, i32, i32, i32) #1

declare dso_local i64 @lo_export(i32*, i32, i8*) #1

declare dso_local i32 @PQfinish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
