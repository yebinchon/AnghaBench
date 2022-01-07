; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__selectOutputSchema.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c__selectOutputSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"SET search_path = %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"pg_catalog\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c", pg_catalog\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"could not set search_path to \22%s\22: %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s;\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i8*)* @_selectOutputSchema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_selectOutputSchema(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %99

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strcmp(i8* %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %16, %13
  br label %99

34:                                               ; preds = %26, %21
  %35 = call %struct.TYPE_13__* (...) @createPQExpBuffer()
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %5, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @fmtId(i8* %37)
  %39 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = call i32 @appendPQExpBufferStr(%struct.TYPE_13__* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %34
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = call i64 @RestoringToDB(%struct.TYPE_14__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @PQexec(i32 %53, i32 %56)
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @PQresultStatus(i32* %61)
  %63 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60, %50
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PQerrorMessage(i32 %70)
  %72 = call i32 @warn_or_exit_horribly(%struct.TYPE_14__* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %67, i32 %71)
  br label %73

73:                                               ; preds = %65, %60
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @PQclear(i32* %74)
  br label %82

76:                                               ; preds = %46
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ahprintf(%struct.TYPE_14__* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i8*, i8** %4, align 8
  %94 = call i8* @pg_strdup(i8* %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = call i32 @destroyPQExpBuffer(%struct.TYPE_13__* %97)
  br label %99

99:                                               ; preds = %92, %33, %12
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_13__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @fmtId(i8*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @RestoringToDB(%struct.TYPE_14__*) #1

declare dso_local i32* @PQexec(i32, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @warn_or_exit_horribly(%struct.TYPE_14__*, i8*, i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ahprintf(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
