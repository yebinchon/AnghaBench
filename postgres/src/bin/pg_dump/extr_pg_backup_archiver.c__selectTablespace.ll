; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__selectTablespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__selectTablespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"SET default_tablespace = ''\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SET default_tablespace = %s\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"could not set default_tablespace to %s: %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s;\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i8*)* @_selectTablespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_selectTablespace(%struct.TYPE_16__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %103

19:                                               ; preds = %2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %103

27:                                               ; preds = %19
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strcmp(i8* %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %103

36:                                               ; preds = %30, %27
  %37 = call %struct.TYPE_15__* (...) @createPQExpBuffer()
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = call i32 @appendPQExpBufferStr(%struct.TYPE_15__* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @fmtId(i8* %46)
  %48 = call i32 @appendPQExpBuffer(%struct.TYPE_15__* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = call i64 @RestoringToDB(%struct.TYPE_16__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %49
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @PQexec(i32 %56, i32 %59)
  store i32* %60, i32** %9, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @PQresultStatus(i32* %64)
  %66 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %63, %53
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @fmtId(i8* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PQerrorMessage(i32 %74)
  %76 = call i32 @warn_or_exit_horribly(%struct.TYPE_16__* %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %68, %63
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @PQclear(i32* %78)
  br label %86

80:                                               ; preds = %49
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ahprintf(%struct.TYPE_16__* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %80, %77
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @free(i8* %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i8*, i8** %7, align 8
  %98 = call i8* @pg_strdup(i8* %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = call i32 @destroyPQExpBuffer(%struct.TYPE_15__* %101)
  br label %103

103:                                              ; preds = %96, %35, %26, %18
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @fmtId(i8*) #1

declare dso_local i64 @RestoringToDB(%struct.TYPE_16__*) #1

declare dso_local i32* @PQexec(i32, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @warn_or_exit_horribly(%struct.TYPE_16__*, i8*, i32, i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ahprintf(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
