; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTSConfigurations.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTSConfigurations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_19__, i8*, i8* }
%struct.TYPE_19__ = type { i32, i32, i8*, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [99 x i8] c"SELECT tableoid, oid, cfgname, cfgnamespace, (%s cfgowner) AS rolname, cfgparser FROM pg_ts_config\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"cfgname\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"cfgnamespace\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"cfgparser\00", align 1
@DO_TSCONFIG = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @getTSConfigurations(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 80300
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  store i32 0, i32* %22, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %168

23:                                               ; preds = %2
  %24 = call %struct.TYPE_17__* (...) @createPQExpBuffer()
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %9, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = load i32, i32* @username_subquery, align 4
  %27 = call i32 @appendPQExpBuffer(%struct.TYPE_17__* %25, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %33 = call i32* @ExecuteSqlQuery(%struct.TYPE_18__* %28, i32 %31, i32 %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @PQntuples(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 56
  %41 = trunc i64 %40 to i32
  %42 = call i64 @pg_malloc(i32 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %10, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @PQfnumber(i32* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @PQfnumber(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @PQfnumber(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %49, i32* %13, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @PQfnumber(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %51, i32* %14, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @PQfnumber(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %53, i32* %15, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @PQfnumber(i32* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %55, i32* %16, align 4
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %159, %23
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %162

60:                                               ; preds = %56
  %61 = load i32, i32* @DO_TSCONFIG, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 4
  store i32 %61, i32* %67, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @PQgetvalue(i32* %68, i32 %69, i32 %70)
  %72 = call i8* @atooid(i32 %71)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  store i8* %72, i8** %79, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @PQgetvalue(i32* %80, i32 %81, i32 %82)
  %84 = call i8* @atooid(i32 %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i8* %84, i8** %91, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = call i32 @AssignDumpId(%struct.TYPE_19__* %96)
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @PQgetvalue(i32* %98, i32 %99, i32 %100)
  %102 = call i8* @pg_strdup(i32 %101)
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  store i8* %102, i8** %108, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @PQgetvalue(i32* %110, i32 %111, i32 %112)
  %114 = call i8* @atooid(i32 %113)
  %115 = call i32 @findNamespace(%struct.TYPE_18__* %109, i8* %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  store i32 %115, i32* %121, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @PQgetvalue(i32* %122, i32 %123, i32 %124)
  %126 = call i8* @pg_strdup(i32 %125)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 2
  store i8* %126, i8** %131, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @PQgetvalue(i32* %132, i32 %133, i32 %134)
  %136 = call i8* @atooid(i32 %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  store i8* %136, i8** %141, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %148 = call i32 @selectDumpableObject(%struct.TYPE_19__* %146, %struct.TYPE_18__* %147)
  %149 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %150
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %60
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %56

162:                                              ; preds = %56
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @PQclear(i32* %163)
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %166 = call i32 @destroyPQExpBuffer(%struct.TYPE_17__* %165)
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %167, %struct.TYPE_16__** %3, align 8
  br label %168

168:                                              ; preds = %162, %21
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %169
}

declare dso_local %struct.TYPE_17__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_19__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @findNamespace(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
