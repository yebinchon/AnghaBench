; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_collectComments.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_collectComments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [114 x i8] c"SELECT description, classoid, objoid, objsubid FROM pg_catalog.pg_description ORDER BY classoid, objoid, objsubid\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"classoid\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"objoid\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"objsubid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__**)* @collectComments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collectComments(i32* %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %4, align 8
  %14 = call %struct.TYPE_7__* (...) @createPQExpBuffer()
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %22 = call i32* @ExecuteSqlQuery(i32* %17, i32 %20, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @PQfnumber(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @PQfnumber(i32* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @PQfnumber(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @PQfnumber(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @PQntuples(i32* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 32
  %36 = trunc i64 %35 to i32
  %37 = call i64 @pg_malloc(i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %13, align 8
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %83, %2
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @PQgetvalue(i32* %44, i32 %45, i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  store i32 %47, i32* %52, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @PQgetvalue(i32* %53, i32 %54, i32 %55)
  %57 = call i8* @atooid(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i8* %57, i8** %62, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @PQgetvalue(i32* %63, i32 %64, i32 %65)
  %67 = call i8* @atooid(i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i8* %67, i8** %72, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @PQgetvalue(i32* %73, i32 %74, i32 %75)
  %77 = call i32 @atoi(i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 8
  br label %83

83:                                               ; preds = %43
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %39

86:                                               ; preds = %39
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = call i32 @destroyPQExpBuffer(%struct.TYPE_7__* %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %90 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %90, align 8
  %91 = load i32, i32* %11, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_7__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_7__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(i32*, i32, i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
