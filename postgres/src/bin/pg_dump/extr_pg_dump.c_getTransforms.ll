; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTransforms.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTransforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_28__, i8*, i8*, i8*, i8* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [102 x i8] c"SELECT tableoid, oid, trftype, trflang, trffromsql::oid, trftosql::oid FROM pg_transform ORDER BY 3,4\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"trftype\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"trflang\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"trffromsql\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"trftosql\00", align 1
@DO_TRANSFORM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @getTransforms(%struct.TYPE_27__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__, align 4
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 90500
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  store i32 0, i32* %25, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %195

26:                                               ; preds = %2
  %27 = call %struct.TYPE_26__* (...) @createPQExpBuffer()
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %9, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %29 = call i32 @appendPQExpBufferStr(%struct.TYPE_26__* %28, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %35 = call i32* @ExecuteSqlQuery(%struct.TYPE_27__* %30, i32 %33, i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @PQntuples(i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 64
  %43 = trunc i64 %42 to i32
  %44 = call i64 @pg_malloc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %45, %struct.TYPE_24__** %10, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @PQfnumber(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %11, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @PQfnumber(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @PQfnumber(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %51, i32* %13, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @PQfnumber(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %53, i32* %14, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @PQfnumber(i32* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 %55, i32* %15, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @PQfnumber(i32* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %57, i32* %16, align 4
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %186, %26
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %189

62:                                               ; preds = %58
  %63 = load i32, i32* @DO_TRANSFORM, align 4
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 2
  store i32 %63, i32* %69, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @PQgetvalue(i32* %70, i32 %71, i32 %72)
  %74 = call i8* @atooid(i32 %73)
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  store i8* %74, i8** %81, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @PQgetvalue(i32* %82, i32 %83, i32 %84)
  %86 = call i8* @atooid(i32 %85)
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  store i8* %86, i8** %93, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = call i32 @AssignDumpId(%struct.TYPE_28__* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @PQgetvalue(i32* %100, i32 %101, i32 %102)
  %104 = call i8* @atooid(i32 %103)
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 2
  store i8* %104, i8** %109, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @PQgetvalue(i32* %110, i32 %111, i32 %112)
  %114 = call i8* @atooid(i32 %113)
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  store i8* %114, i8** %119, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @PQgetvalue(i32* %120, i32 %121, i32 %122)
  %124 = call i8* @atooid(i32 %123)
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 4
  store i8* %124, i8** %129, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @PQgetvalue(i32* %130, i32 %131, i32 %132)
  %134 = call i8* @atooid(i32 %133)
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 3
  store i8* %134, i8** %139, align 8
  %140 = call i32 @initPQExpBuffer(%struct.TYPE_25__* %17)
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = call %struct.TYPE_23__* @findTypeByOid(i8* %146)
  store %struct.TYPE_23__* %147, %struct.TYPE_23__** %18, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @get_language_name(%struct.TYPE_27__* %148, i8* %154)
  store i8* %155, i8** %19, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %157 = icmp ne %struct.TYPE_23__* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %62
  %159 = load i8*, i8** %19, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i8*, i8** %19, align 8
  %167 = call i32 @appendPQExpBuffer(%struct.TYPE_25__* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %165, i8* %166)
  br label %168

168:                                              ; preds = %161, %158, %62
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 0
  store i32 %170, i32* %176, align 8
  %177 = load i8*, i8** %19, align 8
  %178 = call i32 @free(i8* %177)
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %185 = call i32 @selectDumpableObject(%struct.TYPE_28__* %183, %struct.TYPE_27__* %184)
  br label %186

186:                                              ; preds = %168
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %58

189:                                              ; preds = %58
  %190 = load i32*, i32** %6, align 8
  %191 = call i32 @PQclear(i32* %190)
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %193 = call i32 @destroyPQExpBuffer(%struct.TYPE_26__* %192)
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %194, %struct.TYPE_24__** %3, align 8
  br label %195

195:                                              ; preds = %189, %24
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  ret %struct.TYPE_24__* %196
}

declare dso_local %struct.TYPE_26__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_26__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_28__*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_23__* @findTypeByOid(i8*) #1

declare dso_local i8* @get_language_name(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_25__*, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
