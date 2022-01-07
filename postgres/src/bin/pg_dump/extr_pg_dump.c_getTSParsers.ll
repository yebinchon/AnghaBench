; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTSParsers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTSParsers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_19__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [140 x i8] c"SELECT tableoid, oid, prsname, prsnamespace, prsstart::oid, prstoken::oid, prsend::oid, prsheadline::oid, prslextype::oid FROM pg_ts_parser\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"prsname\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"prsnamespace\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"prsstart\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"prstoken\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"prsend\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"prsheadline\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"prslextype\00", align 1
@DO_TSPARSER = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @getTSParsers(%struct.TYPE_18__* %0, i32* %1) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 80300
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  store i32 0, i32* %25, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %206

26:                                               ; preds = %2
  %27 = call %struct.TYPE_17__* (...) @createPQExpBuffer()
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %9, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = call i32 @appendPQExpBufferStr(%struct.TYPE_17__* %28, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %35 = call i32* @ExecuteSqlQuery(%struct.TYPE_18__* %30, i32 %33, i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @PQntuples(i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 80
  %43 = trunc i64 %42 to i32
  %44 = call i64 @pg_malloc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %10, align 8
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
  %53 = call i32 @PQfnumber(i32* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %53, i32* %14, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @PQfnumber(i32* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %55, i32* %15, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @PQfnumber(i32* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %57, i32* %16, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @PQfnumber(i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 %59, i32* %17, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @PQfnumber(i32* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i32 %61, i32* %18, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @PQfnumber(i32* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i32 %63, i32* %19, align 4
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %197, %26
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %200

68:                                               ; preds = %64
  %69 = load i32, i32* @DO_TSPARSER, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 4
  store i32 %69, i32* %75, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @PQgetvalue(i32* %76, i32 %77, i32 %78)
  %80 = call i8* @atooid(i32 %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  store i8* %80, i8** %87, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @PQgetvalue(i32* %88, i32 %89, i32 %90)
  %92 = call i8* @atooid(i32 %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i8* %92, i8** %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = call i32 @AssignDumpId(%struct.TYPE_19__* %104)
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @PQgetvalue(i32* %106, i32 %107, i32 %108)
  %110 = call i32 @pg_strdup(i32 %109)
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  store i32 %110, i32* %116, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @PQgetvalue(i32* %118, i32 %119, i32 %120)
  %122 = call i8* @atooid(i32 %121)
  %123 = call i32 @findNamespace(%struct.TYPE_18__* %117, i8* %122)
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  store i32 %123, i32* %129, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @PQgetvalue(i32* %130, i32 %131, i32 %132)
  %134 = call i8* @atooid(i32 %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 5
  store i8* %134, i8** %139, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %16, align 4
  %143 = call i32 @PQgetvalue(i32* %140, i32 %141, i32 %142)
  %144 = call i8* @atooid(i32 %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 4
  store i8* %144, i8** %149, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %17, align 4
  %153 = call i32 @PQgetvalue(i32* %150, i32 %151, i32 %152)
  %154 = call i8* @atooid(i32 %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 3
  store i8* %154, i8** %159, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %18, align 4
  %163 = call i32 @PQgetvalue(i32* %160, i32 %161, i32 %162)
  %164 = call i8* @atooid(i32 %163)
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 2
  store i8* %164, i8** %169, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %19, align 4
  %173 = call i32 @PQgetvalue(i32* %170, i32 %171, i32 %172)
  %174 = call i8* @atooid(i32 %173)
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  store i8* %174, i8** %179, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %186 = call i32 @selectDumpableObject(%struct.TYPE_19__* %184, %struct.TYPE_18__* %185)
  %187 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %188 = xor i32 %187, -1
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %188
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %68
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %64

200:                                              ; preds = %64
  %201 = load i32*, i32** %6, align 8
  %202 = call i32 @PQclear(i32* %201)
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %204 = call i32 @destroyPQExpBuffer(%struct.TYPE_17__* %203)
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %205, %struct.TYPE_16__** %3, align 8
  br label %206

206:                                              ; preds = %200, %24
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %207
}

declare dso_local %struct.TYPE_17__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_17__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_19__*) #1

declare dso_local i32 @pg_strdup(i32) #1

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
