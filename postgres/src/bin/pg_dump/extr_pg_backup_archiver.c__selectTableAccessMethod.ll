; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__selectTableAccessMethod.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__selectTableAccessMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"SET default_table_access_method = %s;\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"could not set default_table_access_method: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i8*)* @_selectTableAccessMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_selectTableAccessMethod(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %72

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strcmp(i8* %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %72

25:                                               ; preds = %19, %16
  %26 = call %struct.TYPE_10__* (...) @createPQExpBuffer()
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %5, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @fmtId(i8* %28)
  %30 = call i32 @appendPQExpBuffer(%struct.TYPE_10__* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = call i64 @RestoringToDB(%struct.TYPE_11__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %25
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @PQexec(i32 %37, i32 %40)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @PQresultStatus(i32* %45)
  %47 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44, %34
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PQerrorMessage(i32 %53)
  %55 = call i32 @warn_or_exit_horribly(%struct.TYPE_11__* %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %49, %44
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @PQclear(i32* %57)
  br label %65

59:                                               ; preds = %25
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ahprintf(%struct.TYPE_11__* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = call i32 @destroyPQExpBuffer(%struct.TYPE_10__* %66)
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @pg_strdup(i8* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %65, %24, %15
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @fmtId(i8*) #1

declare dso_local i64 @RestoringToDB(%struct.TYPE_11__*) #1

declare dso_local i32* @PQexec(i32, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @warn_or_exit_horribly(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ahprintf(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_10__*) #1

declare dso_local i8* @pg_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
