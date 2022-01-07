; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getNamespaces.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getNamespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_20__ = type { i8*, i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"n.nspacl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"n.nspowner\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"'n'\00", align 1
@.str.3 = private unnamed_addr constant [264 x i8] c"SELECT n.tableoid, n.oid, n.nspname, (%s nspowner) AS rolname, %s as nspacl, %s as rnspacl, %s as initnspacl, %s as initrnspacl FROM pg_namespace n LEFT JOIN pg_init_privs pip ON (n.oid = pip.objoid AND pip.classoid = 'pg_namespace'::regclass AND pip.objsubid = 0\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.5 = private unnamed_addr constant [140 x i8] c"SELECT tableoid, oid, nspname, (%s nspowner) AS rolname, nspacl, NULL as rnspacl, NULL AS initnspacl, NULL as initrnspacl FROM pg_namespace\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"nspname\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"nspacl\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"rnspacl\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"initnspacl\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"initrnspacl\00", align 1
@DO_NAMESPACE = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"owner of schema \22%s\22 appears to be invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @getNamespaces(%struct.TYPE_25__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store i32* %1, i32** %4, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %5, align 8
  %26 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %9, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 90600
  br i1 %30, label %31, label %69

31:                                               ; preds = %2
  %32 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %19, align 8
  %33 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %20, align 8
  %34 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %21, align 8
  %35 = call %struct.TYPE_22__* (...) @createPQExpBuffer()
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %22, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @buildACLQueries(%struct.TYPE_22__* %36, %struct.TYPE_22__* %37, %struct.TYPE_22__* %38, %struct.TYPE_22__* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %45 = load i32, i32* @username_subquery, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_22__* %44, i8* getelementptr inbounds ([264 x i8], [264 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %48, i32 %51, i32 %54, i32 %57)
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %60 = call i32 @appendPQExpBufferStr(%struct.TYPE_22__* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %62 = call i32 @destroyPQExpBuffer(%struct.TYPE_22__* %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %64 = call i32 @destroyPQExpBuffer(%struct.TYPE_22__* %63)
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %66 = call i32 @destroyPQExpBuffer(%struct.TYPE_22__* %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %68 = call i32 @destroyPQExpBuffer(%struct.TYPE_22__* %67)
  br label %73

69:                                               ; preds = %2
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %71 = load i32, i32* @username_subquery, align 4
  %72 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_22__* %70, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %31
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %79 = call i32* @ExecuteSqlQuery(%struct.TYPE_25__* %74, i32 %77, i32 %78)
  store i32* %79, i32** %6, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @PQntuples(i32* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 80
  %85 = trunc i64 %84 to i32
  %86 = call i64 @pg_malloc(i32 %85)
  %87 = inttoptr i64 %86 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %87, %struct.TYPE_23__** %10, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @PQfnumber(i32* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %89, i32* %11, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @PQfnumber(i32* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %91, i32* %12, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @PQfnumber(i32* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %93, i32* %13, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @PQfnumber(i32* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 %95, i32* %14, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @PQfnumber(i32* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i32 %97, i32* %15, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @PQfnumber(i32* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i32 %99, i32* %16, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @PQfnumber(i32* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  store i32 %101, i32* %17, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @PQfnumber(i32* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  store i32 %103, i32* %18, align 4
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %266, %73
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %269

108:                                              ; preds = %104
  %109 = load i32, i32* @DO_NAMESPACE, align 4
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 3
  store i32 %109, i32* %115, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @PQgetvalue(i32* %116, i32 %117, i32 %118)
  %120 = call i8* @atooid(i32 %119)
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  store i8* %120, i8** %127, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @PQgetvalue(i32* %128, i32 %129, i32 %130)
  %132 = call i8* @atooid(i32 %131)
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  store i8* %132, i8** %139, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = call i32 @AssignDumpId(%struct.TYPE_20__* %144)
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @PQgetvalue(i32* %146, i32 %147, i32 %148)
  %150 = call i8* @pg_strdup(i32 %149)
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  store i8* %150, i8** %156, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @PQgetvalue(i32* %157, i32 %158, i32 %159)
  %161 = call i8* @pg_strdup(i32 %160)
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 1
  store i8* %161, i8** %166, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @PQgetvalue(i32* %167, i32 %168, i32 %169)
  %171 = call i8* @pg_strdup(i32 %170)
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 5
  store i8* %171, i8** %176, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %16, align 4
  %180 = call i32 @PQgetvalue(i32* %177, i32 %178, i32 %179)
  %181 = call i8* @pg_strdup(i32 %180)
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 4
  store i8* %181, i8** %186, align 8
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* %17, align 4
  %190 = call i32 @PQgetvalue(i32* %187, i32 %188, i32 %189)
  %191 = call i8* @pg_strdup(i32 %190)
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 3
  store i8* %191, i8** %196, align 8
  %197 = load i32*, i32** %6, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %18, align 4
  %200 = call i32 @PQgetvalue(i32* %197, i32 %198, i32 %199)
  %201 = call i8* @pg_strdup(i32 %200)
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 2
  store i8* %201, i8** %206, align 8
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i64 %209
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %212 = call i32 @selectDumpableNamespace(%struct.TYPE_23__* %210, %struct.TYPE_25__* %211)
  %213 = load i32*, i32** %6, align 8
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %15, align 4
  %216 = call i64 @PQgetisnull(i32* %213, i32 %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %247

218:                                              ; preds = %108
  %219 = load i32*, i32** %6, align 8
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %16, align 4
  %222 = call i64 @PQgetisnull(i32* %219, i32 %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %247

224:                                              ; preds = %218
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %17, align 4
  %228 = call i64 @PQgetisnull(i32* %225, i32 %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %224
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %18, align 4
  %234 = call i64 @PQgetisnull(i32* %231, i32 %232, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %230
  %237 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %238 = xor i32 %237, -1
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = and i32 %245, %238
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %236, %230, %224, %218, %108
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 1
  %253 = load i8*, i8** %252, align 8
  %254 = call i64 @strlen(i8* %253)
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %247
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @pg_log_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* %263)
  br label %265

265:                                              ; preds = %256, %247
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %8, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %8, align 4
  br label %104

269:                                              ; preds = %104
  %270 = load i32*, i32** %6, align 8
  %271 = call i32 @PQclear(i32* %270)
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %273 = call i32 @destroyPQExpBuffer(%struct.TYPE_22__* %272)
  %274 = load i32, i32* %7, align 4
  %275 = load i32*, i32** %4, align 8
  store i32 %274, i32* %275, align 4
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  ret %struct.TYPE_23__* %276
}

declare dso_local %struct.TYPE_22__* @createPQExpBuffer(...) #1

declare dso_local i32 @buildACLQueries(%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_22__*, i8*, i32, ...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_22__*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_20__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @selectDumpableNamespace(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pg_log_warning(i8*, i8*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
