; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getFormattedTypeName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getFormattedTypeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@zeroAsOpaque = common dso_local global i32 0, align 4
@g_opaque_type = common dso_local global i8* null, align 8
@zeroAsAny = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"'any'\00", align 1
@zeroAsStar = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@zeroAsNone = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"SELECT pg_catalog.format_type('%u'::pg_catalog.oid, NULL)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i32)* @getFormattedTypeName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getFormattedTypeName(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @zeroAsOpaque, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** @g_opaque_type, align 8
  %20 = call i8* @pg_strdup(i8* %19)
  store i8* %20, i8** %4, align 8
  br label %64

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @zeroAsAny, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i8* @pg_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %4, align 8
  br label %64

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @zeroAsStar, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i8* @pg_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %4, align 8
  br label %64

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @zeroAsNone, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i8* @pg_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %41, i8** %4, align 8
  br label %64

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45, %3
  %47 = call %struct.TYPE_5__* (...) @createPQExpBuffer()
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %9, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @appendPQExpBuffer(%struct.TYPE_5__* %48, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @ExecuteSqlQueryForSingleRow(i32* %51, i32 %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i8* @PQgetvalue(i32* %56, i32 0, i32 0)
  %58 = call i8* @pg_strdup(i8* %57)
  store i8* %58, i8** %8, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @PQclear(i32* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = call i32 @destroyPQExpBuffer(%struct.TYPE_5__* %61)
  %63 = load i8*, i8** %8, align 8
  store i8* %63, i8** %4, align 8
  br label %64

64:                                               ; preds = %46, %40, %33, %26, %18
  %65 = load i8*, i8** %4, align 8
  ret i8* %65
}

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local %struct.TYPE_5__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQueryForSingleRow(i32*, i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
