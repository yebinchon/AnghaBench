; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getRules.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getRules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8, i32, i8, i32, %struct.TYPE_19__*, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [116 x i8] c"SELECT tableoid, oid, rulename, ev_class AS ruletable, ev_type, is_instead, ev_enabled FROM pg_rewrite ORDER BY oid\00", align 1
@.str.1 = private unnamed_addr constant [129 x i8] c"SELECT tableoid, oid, rulename, ev_class AS ruletable, ev_type, is_instead, 'O'::char AS ev_enabled FROM pg_rewrite ORDER BY oid\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rulename\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ruletable\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ev_type\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"is_instead\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ev_enabled\00", align 1
@DO_RULE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [88 x i8] c"failed sanity check, parent table with OID %u of pg_rewrite entry with OID %u not found\00", align 1
@RELKIND_VIEW = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @getRules(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = call %struct.TYPE_17__* (...) @createPQExpBuffer()
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %8, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 80300
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %25 = call i32 @appendPQExpBufferStr(%struct.TYPE_17__* %24, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0))
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = call i32 @appendPQExpBufferStr(%struct.TYPE_17__* %27, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %35 = call i32* @ExecuteSqlQuery(%struct.TYPE_18__* %30, i32 %33, i32 %34)
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @PQntuples(i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 64
  %43 = trunc i64 %42 to i32
  %44 = call i64 @pg_malloc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %9, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @PQfnumber(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @PQfnumber(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @PQfnumber(i32* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %51, i32* %12, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @PQfnumber(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %53, i32* %13, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @PQfnumber(i32* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %55, i32* %14, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @PQfnumber(i32* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i32 %57, i32* %15, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @PQfnumber(i32* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 %59, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %303, %29
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %306

64:                                               ; preds = %60
  %65 = load i32, i32* @DO_RULE, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 5
  store i32 %65, i32* %71, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i8* @PQgetvalue(i32* %72, i32 %73, i32 %74)
  %76 = call i8* @atooid(i8* %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  store i8* %76, i8** %83, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i8* @PQgetvalue(i32* %84, i32 %85, i32 %86)
  %88 = call i8* @atooid(i8* %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store i8* %88, i8** %95, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 5
  %101 = call i32 @AssignDumpId(%struct.TYPE_14__* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i8* @PQgetvalue(i32* %102, i32 %103, i32 %104)
  %106 = call i32 @pg_strdup(i8* %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 4
  store i32 %106, i32* %112, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i8* @PQgetvalue(i32* %113, i32 %114, i32 %115)
  %117 = call i8* @atooid(i8* %116)
  store i8* %117, i8** %17, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = call %struct.TYPE_19__* @findTableByOid(i8* %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 4
  store %struct.TYPE_19__* %119, %struct.TYPE_19__** %124, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  %131 = icmp eq %struct.TYPE_19__* %130, null
  br i1 %131, label %132, label %143

132:                                              ; preds = %64
  %133 = load i8*, i8** %17, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @fatal(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.9, i64 0, i64 0), i8* %133, i8* %141)
  br label %143

143:                                              ; preds = %132, %64
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  store i32 %152, i32* %158, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  store i32 %167, i32* %173, align 4
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i8* @PQgetvalue(i32* %174, i32 %175, i32 %176)
  %178 = load i8, i8* %177, align 1
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  store i8 %178, i8* %183, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %15, align 4
  %187 = call i8* @PQgetvalue(i32* %184, i32 %185, i32 %186)
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 116
  %191 = zext i1 %190 to i32
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  store i32 %191, i32* %196, align 4
  %197 = load i32*, i32** %5, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %16, align 4
  %200 = call i8* @PQgetvalue(i32* %197, i32 %198, i32 %199)
  %201 = load i8, i8* %200, align 1
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 2
  store i8 %201, i8* %206, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %211, align 8
  %213 = icmp ne %struct.TYPE_19__* %212, null
  br i1 %213, label %214, label %296

214:                                              ; preds = %143
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @RELKIND_VIEW, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %236, label %225

225:                                              ; preds = %214
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @RELKIND_MATVIEW, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %274

236:                                              ; preds = %225, %214
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = load i8, i8* %241, align 8
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 49
  br i1 %244, label %245, label %274

245:                                              ; preds = %236
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %274

253:                                              ; preds = %245
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %262 = load i32, i32* %7, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @addObjectDependency(%struct.TYPE_14__* %260, i32 %267)
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 3
  store i32 0, i32* %273, align 4
  br label %295

274:                                              ; preds = %245, %236, %225
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %276 = load i32, i32* %7, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 5
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 4
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @addObjectDependency(%struct.TYPE_14__* %279, i32 %288)
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 3
  store i32 1, i32* %294, align 4
  br label %295

295:                                              ; preds = %274, %253
  br label %302

296:                                              ; preds = %143
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %298 = load i32, i32* %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 3
  store i32 1, i32* %301, align 4
  br label %302

302:                                              ; preds = %296, %295
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %7, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %7, align 4
  br label %60

306:                                              ; preds = %60
  %307 = load i32*, i32** %5, align 8
  %308 = call i32 @PQclear(i32* %307)
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %310 = call i32 @destroyPQExpBuffer(%struct.TYPE_17__* %309)
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  ret %struct.TYPE_16__* %311
}

declare dso_local %struct.TYPE_17__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_17__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_14__*) #1

declare dso_local i32 @pg_strdup(i8*) #1

declare dso_local %struct.TYPE_19__* @findTableByOid(i8*) #1

declare dso_local i32 @fatal(i8*, i8*, i8*) #1

declare dso_local i32 @addObjectDependency(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
