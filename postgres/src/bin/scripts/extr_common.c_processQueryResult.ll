; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_processQueryResult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_processQueryResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@PG_DIAG_SQLSTATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"processing of database \22%s\22 failed: %s\00", align 1
@ERRCODE_UNDEFINED_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processQueryResult(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @PQresultStatus(i32* %7)
  %9 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @PG_DIAG_SQLSTATE, align 4
  %14 = call i8* @PQresultErrorField(i32* %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @PQdb(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @PQerrorMessage(i32* %17)
  %19 = call i32 @pg_log_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %11
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @ERRCODE_UNDEFINED_TABLE, align 4
  %25 = call i64 @strcmp(i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @PQclear(i32* %28)
  store i32 0, i32* %3, align 4
  br label %34

30:                                               ; preds = %22, %11
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @PQclear(i32* %32)
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i8* @PQresultErrorField(i32*, i32) #1

declare dso_local i32 @pg_log_error(i8*, i32, i32) #1

declare dso_local i32 @PQdb(i32*) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
