; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getAccessMethods.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getAccessMethods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__, i32, i8* }
%struct.TYPE_14__ = type { i32, i32*, i8*, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [92 x i8] c"SELECT tableoid, oid, amname, amtype, amhandler::pg_catalog.regproc AS amhandler FROM pg_am\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"amname\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"amhandler\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"amtype\00", align 1
@DO_ACCESS_METHOD = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @getAccessMethods(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 90600
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  store i32 0, i32* %21, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %156

22:                                               ; preds = %2
  %23 = call %struct.TYPE_16__* (...) @createPQExpBuffer()
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %9, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = call i32 @appendPQExpBufferStr(%struct.TYPE_16__* %24, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %31 = call i32* @ExecuteSqlQuery(%struct.TYPE_17__* %26, i32 %29, i32 %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @PQntuples(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 64
  %39 = trunc i64 %38 to i32
  %40 = call i64 @pg_malloc(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %10, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @PQfnumber(i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @PQfnumber(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @PQfnumber(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @PQfnumber(i32* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %49, i32* %14, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @PQfnumber(i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %51, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %147, %22
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %150

56:                                               ; preds = %52
  %57 = load i32, i32* @DO_ACCESS_METHOD, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 4
  store i32 %57, i32* %63, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32* @PQgetvalue(i32* %64, i32 %65, i32 %66)
  %68 = call i8* @atooid(i32* %67)
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  store i8* %68, i8** %75, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32* @PQgetvalue(i32* %76, i32 %77, i32 %78)
  %80 = call i8* @atooid(i32* %79)
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i8* %80, i8** %87, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = call i32 @AssignDumpId(%struct.TYPE_14__* %92)
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32* @PQgetvalue(i32* %94, i32 %95, i32 %96)
  %98 = call i8* @pg_strdup(i32* %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  store i8* %98, i8** %104, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  store i32* null, i32** %110, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32* @PQgetvalue(i32* %111, i32 %112, i32 %113)
  %115 = call i8* @pg_strdup(i32* %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  store i8* %115, i8** %120, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %15, align 4
  %124 = call i32* @PQgetvalue(i32* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  store i32 %125, i32* %130, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i64 %133
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %136 = call i32 @selectDumpableAccessMethod(%struct.TYPE_18__* %134, %struct.TYPE_17__* %135)
  %137 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, %138
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %56
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %52

150:                                              ; preds = %52
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @PQclear(i32* %151)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %154 = call i32 @destroyPQExpBuffer(%struct.TYPE_16__* %153)
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %155, %struct.TYPE_18__** %3, align 8
  br label %156

156:                                              ; preds = %150, %20
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %157
}

declare dso_local %struct.TYPE_16__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_16__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32*) #1

declare dso_local i32* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_14__*) #1

declare dso_local i8* @pg_strdup(i32*) #1

declare dso_local i32 @selectDumpableAccessMethod(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
