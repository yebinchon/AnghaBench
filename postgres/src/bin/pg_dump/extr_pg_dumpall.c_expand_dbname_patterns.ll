; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_expand_dbname_patterns.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_expand_dbname_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"SELECT datname FROM pg_catalog.pg_database n\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"datname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, %struct.TYPE_13__*)* @expand_dbname_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_dbname_patterns(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %64

16:                                               ; preds = %3
  %17 = call %struct.TYPE_14__* (...) @createPQExpBuffer()
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %9, align 8
  br label %21

21:                                               ; preds = %57, %16
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %21
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = call i32 @appendPQExpBufferStr(%struct.TYPE_14__* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @processSQLNamePattern(i32* %27, %struct.TYPE_14__* %28, i32 %31, i32 0, i32 0, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @executeQuery(i32* %33, i32 %36)
  store i32* %37, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %49, %24
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @PQntuples(i32* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @PQgetvalue(i32* %45, i32 %46, i32 0)
  %48 = call i32 @simple_string_list_append(%struct.TYPE_13__* %44, i32 %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %38

52:                                               ; preds = %38
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @PQclear(i32* %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = call i32 @resetPQExpBuffer(%struct.TYPE_14__* %55)
  br label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %9, align 8
  br label %21

61:                                               ; preds = %21
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = call i32 @destroyPQExpBuffer(%struct.TYPE_14__* %62)
  br label %64

64:                                               ; preds = %61, %15
  ret void
}

declare dso_local %struct.TYPE_14__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @processSQLNamePattern(i32*, %struct.TYPE_14__*, i32, i32, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @executeQuery(i32*, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @simple_string_list_append(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_14__*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
