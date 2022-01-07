; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_HandleEndOfCopyStream.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_HandleEndOfCopyStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@still_sending = common dso_local global i32 0, align 4
@PGRES_COPY_IN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"could not send copy-end packet: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32, i32*)* @HandleEndOfCopyStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @HandleEndOfCopyStream(i32* %0, i32* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @PQgetResult(i32* %13)
  store i32* %14, i32** %12, align 8
  %15 = load i32, i32* @still_sending, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @close_walfile(i32* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @PQclear(i32* %23)
  store i32* null, i32** %6, align 8
  br label %58

25:                                               ; preds = %17
  %26 = load i32*, i32** %12, align 8
  %27 = call i64 @PQresultStatus(i32* %26)
  %28 = load i64, i64* @PGRES_COPY_IN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = call i64 @PQputCopyEnd(i32* %31, i32* null)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @PQflush(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34, %30
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @PQerrorMessage(i32* %39)
  %41 = call i32 @pg_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @PQclear(i32* %42)
  store i32* null, i32** %6, align 8
  br label %58

44:                                               ; preds = %34
  %45 = load i32*, i32** %7, align 8
  %46 = call i32* @PQgetResult(i32* %45)
  store i32* %46, i32** %12, align 8
  br label %47

47:                                               ; preds = %44, %25
  store i32 0, i32* @still_sending, align 4
  br label %48

48:                                               ; preds = %47, %5
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @PQfreemem(i8* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %12, align 8
  store i32* %57, i32** %6, align 8
  br label %58

58:                                               ; preds = %54, %38, %22
  %59 = load i32*, i32** %6, align 8
  ret i32* %59
}

declare dso_local i32* @PQgetResult(i32*) #1

declare dso_local i32 @close_walfile(i32*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i64 @PQputCopyEnd(i32*, i32*) #1

declare dso_local i64 @PQflush(i32*) #1

declare dso_local i32 @pg_log_error(i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @PQfreemem(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
