; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getEventTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getEventTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_18__ = type { i32, i8*, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [250 x i8] c"SELECT e.tableoid, e.oid, evtname, evtenabled, evtevent, (%s evtowner) AS evtowner, array_to_string(array(select quote_literal(x)  from unnest(evttags) as t(x)), ', ') as evttags, e.evtfoid::regproc as evtfname FROM pg_event_trigger e ORDER BY e.oid\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"evtname\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"evtevent\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"evtowner\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"evttags\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"evtfname\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"evtenabled\00", align 1
@DO_EVENT_TRIGGER = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @getEventTriggers(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 90300
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  store i32 0, i32* %24, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %201

25:                                               ; preds = %2
  %26 = call %struct.TYPE_15__* (...) @createPQExpBuffer()
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %7, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = load i32, i32* @username_subquery, align 4
  %29 = call i32 @appendPQExpBuffer(%struct.TYPE_15__* %27, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %35 = call i32* @ExecuteSqlQuery(%struct.TYPE_17__* %30, i32 %33, i32 %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @PQntuples(i32* %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 88
  %43 = trunc i64 %42 to i32
  %44 = call i64 @pg_malloc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %9, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @PQfnumber(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @PQfnumber(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @PQfnumber(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %51, i32* %12, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @PQfnumber(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %53, i32* %13, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @PQfnumber(i32* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %55, i32* %14, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @PQfnumber(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %57, i32* %15, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @PQfnumber(i32* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 %59, i32* %16, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @PQfnumber(i32* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 %61, i32* %17, align 4
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %192, %25
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %195

66:                                               ; preds = %62
  %67 = load i32, i32* @DO_EVENT_TRIGGER, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 3
  store i32 %67, i32* %73, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32* @PQgetvalue(i32* %74, i32 %75, i32 %76)
  %78 = call i8* @atooid(i32* %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store i8* %78, i8** %85, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32* @PQgetvalue(i32* %86, i32 %87, i32 %88)
  %90 = call i8* @atooid(i32* %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  store i8* %90, i8** %97, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = call i32 @AssignDumpId(%struct.TYPE_18__* %102)
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32* @PQgetvalue(i32* %104, i32 %105, i32 %106)
  %108 = call i8* @pg_strdup(i32* %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  store i8* %108, i8** %114, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32* @PQgetvalue(i32* %115, i32 %116, i32 %117)
  %119 = call i8* @pg_strdup(i32* %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 6
  store i8* %119, i8** %124, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32* @PQgetvalue(i32* %125, i32 %126, i32 %127)
  %129 = call i8* @pg_strdup(i32* %128)
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 5
  store i8* %129, i8** %134, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32* @PQgetvalue(i32* %135, i32 %136, i32 %137)
  %139 = call i8* @pg_strdup(i32* %138)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 4
  store i8* %139, i8** %144, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32* @PQgetvalue(i32* %145, i32 %146, i32 %147)
  %149 = call i8* @pg_strdup(i32* %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  store i8* %149, i8** %154, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %16, align 4
  %158 = call i32* @PQgetvalue(i32* %155, i32 %156, i32 %157)
  %159 = call i8* @pg_strdup(i32* %158)
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 2
  store i8* %159, i8** %164, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %17, align 4
  %168 = call i32* @PQgetvalue(i32* %165, i32 %166, i32 %167)
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  store i32 %169, i32* %174, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %181 = call i32 @selectDumpableObject(%struct.TYPE_18__* %179, %struct.TYPE_17__* %180)
  %182 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, %183
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %66
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %62

195:                                              ; preds = %62
  %196 = load i32*, i32** %8, align 8
  %197 = call i32 @PQclear(i32* %196)
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %199 = call i32 @destroyPQExpBuffer(%struct.TYPE_15__* %198)
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %200, %struct.TYPE_16__** %3, align 8
  br label %201

201:                                              ; preds = %195, %23
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %202
}

declare dso_local %struct.TYPE_15__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32*) #1

declare dso_local i32* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_18__*) #1

declare dso_local i8* @pg_strdup(i32*) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
