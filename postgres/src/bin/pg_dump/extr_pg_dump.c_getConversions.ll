; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getConversions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getConversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { i32, i32, i8*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [89 x i8] c"SELECT tableoid, oid, conname, connamespace, (%s conowner) AS rolname FROM pg_conversion\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"conname\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"connamespace\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@DO_CONVERSION = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @getConversions(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = call %struct.TYPE_11__* (...) @createPQExpBuffer()
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = load i32, i32* @username_subquery, align 4
  %18 = call i32 @appendPQExpBuffer(%struct.TYPE_11__* %16, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %24 = call i32* @ExecuteSqlQuery(i32* %19, i32 %22, i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @PQntuples(i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 48
  %32 = trunc i64 %31 to i32
  %33 = call i64 @pg_malloc(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %9, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @PQfnumber(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @PQfnumber(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @PQfnumber(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %40, i32* %12, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @PQfnumber(i32* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @PQfnumber(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %44, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %138, %2
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %141

49:                                               ; preds = %45
  %50 = load i32, i32* @DO_CONVERSION, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 4
  store i32 %50, i32* %56, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @PQgetvalue(i32* %57, i32 %58, i32 %59)
  %61 = call i8* @atooid(i32 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i8* %61, i8** %68, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @PQgetvalue(i32* %69, i32 %70, i32 %71)
  %73 = call i8* @atooid(i32 %72)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i8* %73, i8** %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = call i32 @AssignDumpId(%struct.TYPE_13__* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @PQgetvalue(i32* %87, i32 %88, i32 %89)
  %91 = call i8* @pg_strdup(i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  store i8* %91, i8** %97, align 8
  %98 = load i32*, i32** %3, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @PQgetvalue(i32* %99, i32 %100, i32 %101)
  %103 = call i8* @atooid(i32 %102)
  %104 = call i32 @findNamespace(i32* %98, i8* %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  store i32 %104, i32* %110, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @PQgetvalue(i32* %111, i32 %112, i32 %113)
  %115 = call i8* @pg_strdup(i32 %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  store i8* %115, i8** %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 @selectDumpableObject(%struct.TYPE_13__* %125, i32* %126)
  %128 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %129
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %49
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %45

141:                                              ; preds = %45
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @PQclear(i32* %142)
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %145 = call i32 @destroyPQExpBuffer(%struct.TYPE_11__* %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  ret %struct.TYPE_12__* %146
}

declare dso_local %struct.TYPE_11__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(i32*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_13__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @findNamespace(i32*, i8*) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
