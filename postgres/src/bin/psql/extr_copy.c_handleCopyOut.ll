; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_copy.c_handleCopyOut.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_copy.c_handleCopyOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"could not write COPY data: %m\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"COPY data transfer failed: %s\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handleCopyOut(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32 1, i32* %7, align 4
  br label %10

10:                                               ; preds = %37, %3
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @PQgetCopyData(i32* %11, i8** %8, i32 0)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %38

16:                                               ; preds = %10
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @fwrite(i8* %26, i32 1, i32 %27, i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %25, %22, %19
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @PQfreemem(i8* %35)
  br label %37

37:                                               ; preds = %34, %16
  br label %10

38:                                               ; preds = %15
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @fflush(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %44, %41, %38
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, -2
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @PQerrorMessage(i32* %54)
  %56 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32*, i32** %4, align 8
  %59 = call i32* @PQgetResult(i32* %58)
  %60 = load i32**, i32*** %6, align 8
  store i32* %59, i32** %60, align 8
  %61 = load i32**, i32*** %6, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @PQresultStatus(i32* %62)
  %64 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @PQerrorMessage(i32* %67)
  %69 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %57
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @PQgetCopyData(i32*, i8**, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32* @PQgetResult(i32*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
