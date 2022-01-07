; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getExtendedStatistics.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getExtendedStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__, i32, i8* }
%struct.TYPE_18__ = type { i32, i32, i8*, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i8*, i8* }

@.str = private unnamed_addr constant [126 x i8] c"SELECT tableoid, oid, stxname, stxnamespace, (%s stxowner) AS rolname, (-1) AS stxstattarget FROM pg_catalog.pg_statistic_ext\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [118 x i8] c"SELECT tableoid, oid, stxname, stxnamespace, (%s stxowner) AS rolname, stxstattarget FROM pg_catalog.pg_statistic_ext\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"stxname\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"stxnamespace\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"stxstattarget\00", align 1
@DO_STATSEXT = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getExtendedStatistics(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 100000
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %171

19:                                               ; preds = %1
  %20 = call %struct.TYPE_16__* (...) @createPQExpBuffer()
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %3, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 130000
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = load i32, i32* @username_subquery, align 4
  %28 = call i32 @appendPQExpBuffer(%struct.TYPE_16__* %26, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = load i32, i32* @username_subquery, align 4
  %32 = call i32 @appendPQExpBuffer(%struct.TYPE_16__* %30, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %39 = call i32* @ExecuteSqlQuery(%struct.TYPE_17__* %34, i32 %37, i32 %38)
  store i32* %39, i32** %4, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @PQntuples(i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @PQfnumber(i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %43, i32* %7, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @PQfnumber(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @PQfnumber(i32* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @PQfnumber(i32* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @PQfnumber(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @PQfnumber(i32* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 56
  %57 = trunc i64 %56 to i32
  %58 = call i64 @pg_malloc(i32 %57)
  %59 = inttoptr i64 %58 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %5, align 8
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %163, %33
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %166

64:                                               ; preds = %60
  %65 = load i32, i32* @DO_STATSEXT, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 4
  store i32 %65, i32* %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @PQgetvalue(i32* %72, i32 %73, i32 %74)
  %76 = call i8* @atooid(i32 %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  store i8* %76, i8** %83, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @PQgetvalue(i32* %84, i32 %85, i32 %86)
  %88 = call i8* @atooid(i32 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  store i8* %88, i8** %95, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = call i32 @AssignDumpId(%struct.TYPE_18__* %100)
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @PQgetvalue(i32* %102, i32 %103, i32 %104)
  %106 = call i8* @pg_strdup(i32 %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 2
  store i8* %106, i8** %112, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @PQgetvalue(i32* %114, i32 %115, i32 %116)
  %118 = call i8* @atooid(i32 %117)
  %119 = call i32 @findNamespace(%struct.TYPE_17__* %113, i8* %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  store i32 %119, i32* %125, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @PQgetvalue(i32* %126, i32 %127, i32 %128)
  %130 = call i8* @pg_strdup(i32 %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  store i8* %130, i8** %135, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @PQgetvalue(i32* %136, i32 %137, i32 %138)
  %140 = call i32 @atoi(i32 %139)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  store i32 %140, i32* %145, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %152 = call i32 @selectDumpableObject(%struct.TYPE_18__* %150, %struct.TYPE_17__* %151)
  %153 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, %154
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %64
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %60

166:                                              ; preds = %60
  %167 = load i32*, i32** %4, align 8
  %168 = call i32 @PQclear(i32* %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %170 = call i32 @destroyPQExpBuffer(%struct.TYPE_16__* %169)
  br label %171

171:                                              ; preds = %166, %18
  ret void
}

declare dso_local %struct.TYPE_16__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_18__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @findNamespace(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
