; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__doSetSessionAuth.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__doSetSessionAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"SET SESSION AUTHORIZATION \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"could not set session user to \22%s\22: %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i8*)* @_doSetSessionAuth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_doSetSessionAuth(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call %struct.TYPE_12__* (...) @createPQExpBuffer()
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = call i32 @appendStringLiteralAHX(%struct.TYPE_12__* %18, i8* %19, %struct.TYPE_13__* %20)
  br label %25

22:                                               ; preds = %12, %2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = call i32 @appendPQExpBufferStr(%struct.TYPE_12__* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = call i32 @appendPQExpBufferChar(%struct.TYPE_12__* %26, i8 signext 59)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = call i64 @RestoringToDB(%struct.TYPE_13__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @PQexec(i32 %34, i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @PQresultStatus(i32* %42)
  %44 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41, %31
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PQerrorMessage(i32 %50)
  %52 = call i32 @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %47, i32 %51)
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @PQclear(i32* %54)
  br label %62

56:                                               ; preds = %25
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ahprintf(%struct.TYPE_13__* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = call i32 @destroyPQExpBuffer(%struct.TYPE_12__* %63)
  ret void
}

declare dso_local %struct.TYPE_12__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @appendStringLiteralAHX(%struct.TYPE_12__*, i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i64 @RestoringToDB(%struct.TYPE_13__*) #1

declare dso_local i32* @PQexec(i32, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @fatal(i8*, i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ahprintf(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
