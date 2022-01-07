; ModuleID = '/home/carl/AnghaBench/postgres/src/test/examples/extr_testlo64.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/examples/extr_testlo64.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Usage: %s database_name in_filename out_filename out_filename2\0A\00", align 1
@CONNECTION_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Connection to database failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"SELECT pg_catalog.set_config('search_path', '', false)\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"SET failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"importing file \22%s\22 ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\09as large object %u.\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"picking out bytes 4294967000-4294968000 of the large object\0A\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"overwriting bytes 4294967000-4294968000 of the large object with X's\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"exporting large object to file \22%s\22 ...\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"truncating to 3294968000 bytes\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"exporting truncated large object to file \22%s\22 ...\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 5
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %9, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 3
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 4
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32* @PQsetdb(i32* null, i32* null, i32* null, i32* null, i8* %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i64 @PQstatus(i32* %37)
  %39 = load i64, i64* @CONNECTION_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i8* @PQerrorMessage(i32* %43)
  %45 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @exit_nicely(i32* %46)
  br label %48

48:                                               ; preds = %41, %22
  %49 = load i32*, i32** %11, align 8
  %50 = call i32* @PQexec(i32* %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i64 @PQresultStatus(i32* %51)
  %53 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i8* @PQerrorMessage(i32* %57)
  %59 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @PQclear(i32* %60)
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @exit_nicely(i32* %62)
  br label %64

64:                                               ; preds = %55, %48
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @PQclear(i32* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = call i32* @PQexec(i32* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @PQclear(i32* %69)
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @lo_import(i32* %73, i8* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %64
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = call i8* @PQerrorMessage(i32* %80)
  %82 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %81)
  br label %124

83:                                               ; preds = %64
  %84 = load i32, i32* %10, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @pickout(i32* %87, i32 %88, i32 -296, i32 1000)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @overwrite(i32* %91, i32 %92, i32 -296, i32 1000)
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %94)
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = call i64 @lo_export(i32* %96, i32 %97, i8* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %83
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = call i8* @PQerrorMessage(i32* %103)
  %105 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %101, %83
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @my_truncate(i32* %108, i32 %109, i32 -999999296)
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i8* %111)
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i8*, i8** %8, align 8
  %116 = call i64 @lo_export(i32* %113, i32 %114, i8* %115)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %106
  %119 = load i32, i32* @stderr, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = call i8* @PQerrorMessage(i32* %120)
  %122 = call i32 @fprintf(i32 %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %118, %106
  br label %124

124:                                              ; preds = %123, %78
  %125 = load i32*, i32** %11, align 8
  %126 = call i32* @PQexec(i32* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  store i32* %126, i32** %12, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = call i32 @PQclear(i32* %127)
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @PQfinish(i32* %129)
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

declare dso_local i32 @my_truncate(i32*, i32, i32) #1

declare dso_local i32 @PQfinish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
