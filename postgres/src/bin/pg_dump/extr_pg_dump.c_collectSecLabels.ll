; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_collectSecLabels.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_collectSecLabels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [115 x i8] c"SELECT label, provider, classoid, objoid, objsubid FROM pg_catalog.pg_seclabel ORDER BY classoid, objoid, objsubid\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"classoid\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"objoid\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"objsubid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__**)* @collectSecLabels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collectSecLabels(i32* %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %4, align 8
  %15 = call %struct.TYPE_8__* (...) @createPQExpBuffer()
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %23 = call i32* @ExecuteSqlQuery(i32* %18, i32 %21, i32 %22)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @PQfnumber(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @PQfnumber(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @PQfnumber(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @PQfnumber(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @PQfnumber(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @PQntuples(i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 40
  %39 = trunc i64 %38 to i32
  %40 = call i64 @pg_malloc(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %14, align 8
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %95, %2
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %98

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i8* @PQgetvalue(i32* %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  store i8* %50, i8** %55, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @PQgetvalue(i32* %56, i32 %57, i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  store i8* %59, i8** %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i8* @PQgetvalue(i32* %65, i32 %66, i32 %67)
  %69 = call i8* @atooid(i8* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store i8* %69, i8** %74, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i8* @PQgetvalue(i32* %75, i32 %76, i32 %77)
  %79 = call i8* @atooid(i8* %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i8* %79, i8** %84, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i8* @PQgetvalue(i32* %85, i32 %86, i32 %87)
  %89 = call i32 @atoi(i8* %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 %89, i32* %94, align 8
  br label %95

95:                                               ; preds = %46
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %42

98:                                               ; preds = %42
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = call i32 @destroyPQExpBuffer(%struct.TYPE_8__* %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %102 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %102, align 8
  %103 = load i32, i32* %12, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_8__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(i32*, i32, i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i8* @atooid(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
