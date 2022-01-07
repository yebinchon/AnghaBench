; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getAggregates.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getAggregates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_29__, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_29__ = type { i32, i8*, i32, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i8*, i8* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"p.proacl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"p.proowner\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"'f'\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"p.prokind = 'a'\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"p.proisagg\00", align 1
@.str.5 = private unnamed_addr constant [462 x i8] c"SELECT p.tableoid, p.oid, p.proname AS aggname, p.pronamespace AS aggnamespace, p.pronargs, p.proargtypes, (%s p.proowner) AS rolname, %s AS aggacl, %s AS raggacl, %s AS initaggacl, %s AS initraggacl FROM pg_proc p LEFT JOIN pg_init_privs pip ON (p.oid = pip.objoid AND pip.classoid = 'pg_proc'::regclass AND pip.objsubid = 0) WHERE %s AND (p.pronamespace != (SELECT oid FROM pg_namespace WHERE nspname = 'pg_catalog') OR p.proacl IS DISTINCT FROM pip.initprivs\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [150 x i8] c" OR EXISTS(SELECT 1 FROM pg_depend WHERE classid = 'pg_proc'::regclass AND objid = p.oid AND refclassid = 'pg_extension'::regclass AND deptype = 'e')\00", align 1
@.str.7 = private unnamed_addr constant [307 x i8] c"SELECT tableoid, oid, proname AS aggname, pronamespace AS aggnamespace, pronargs, proargtypes, (%s proowner) AS rolname, proacl AS aggacl, NULL AS raggacl, NULL AS initaggacl, NULL AS initraggacl FROM pg_proc p WHERE proisagg AND (pronamespace != (SELECT oid FROM pg_namespace WHERE nspname = 'pg_catalog')\00", align 1
@.str.8 = private unnamed_addr constant [391 x i8] c"SELECT tableoid, oid, proname AS aggname, pronamespace AS aggnamespace, CASE WHEN proargtypes[0] = 'pg_catalog.\22any\22'::pg_catalog.regtype THEN 0 ELSE 1 END AS pronargs, proargtypes, (%s proowner) AS rolname, proacl AS aggacl, NULL AS raggacl, NULL AS initaggacl, NULL AS initraggacl FROM pg_proc WHERE proisagg AND pronamespace != (SELECT oid FROM pg_namespace WHERE nspname = 'pg_catalog')\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"aggname\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"aggnamespace\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"pronargs\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"proargtypes\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"aggacl\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"raggacl\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"initaggacl\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"initraggacl\00", align 1
@DO_AGG = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [55 x i8] c"owner of aggregate function \22%s\22 appears to be invalid\00", align 1
@InvalidOid = common dso_local global i8* null, align 8
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_28__* @getAggregates(%struct.TYPE_27__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca %struct.TYPE_25__*, align 8
  %24 = alloca %struct.TYPE_25__*, align 8
  %25 = alloca %struct.TYPE_25__*, align 8
  %26 = alloca i8*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store i32* %1, i32** %4, align 8
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  store %struct.TYPE_26__* %29, %struct.TYPE_26__** %5, align 8
  %30 = call %struct.TYPE_25__* (...) @createPQExpBuffer()
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %9, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %33, 90600
  br i1 %34, label %35, label %88

35:                                               ; preds = %2
  %36 = call %struct.TYPE_25__* (...) @createPQExpBuffer()
  store %struct.TYPE_25__* %36, %struct.TYPE_25__** %22, align 8
  %37 = call %struct.TYPE_25__* (...) @createPQExpBuffer()
  store %struct.TYPE_25__* %37, %struct.TYPE_25__** %23, align 8
  %38 = call %struct.TYPE_25__* (...) @createPQExpBuffer()
  store %struct.TYPE_25__* %38, %struct.TYPE_25__** %24, align 8
  %39 = call %struct.TYPE_25__* (...) @createPQExpBuffer()
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %25, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @buildACLQueries(%struct.TYPE_25__* %40, %struct.TYPE_25__* %41, %struct.TYPE_25__* %42, %struct.TYPE_25__* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 110000
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  store i8* %53, i8** %26, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %55 = load i32, i32* @username_subquery, align 4
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %26, align 8
  %69 = call i32 (%struct.TYPE_25__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_25__* %54, i8* getelementptr inbounds ([462 x i8], [462 x i8]* @.str.5, i64 0, i64 0), i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, i8* %68)
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %35
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %76 = call i32 @appendPQExpBufferStr(%struct.TYPE_25__* %75, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %35
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %79 = call i32 @appendPQExpBufferChar(%struct.TYPE_25__* %78, i8 signext 41)
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %81 = call i32 @destroyPQExpBuffer(%struct.TYPE_25__* %80)
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %83 = call i32 @destroyPQExpBuffer(%struct.TYPE_25__* %82)
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %85 = call i32 @destroyPQExpBuffer(%struct.TYPE_25__* %84)
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %87 = call i32 @destroyPQExpBuffer(%struct.TYPE_25__* %86)
  br label %117

88:                                               ; preds = %2
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %91, 80200
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %95 = load i32, i32* @username_subquery, align 4
  %96 = call i32 (%struct.TYPE_25__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_25__* %94, i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %93
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp sge i32 %104, 90100
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %108 = call i32 @appendPQExpBufferStr(%struct.TYPE_25__* %107, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %101, %93
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %111 = call i32 @appendPQExpBufferChar(%struct.TYPE_25__* %110, i8 signext 41)
  br label %116

112:                                              ; preds = %88
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %114 = load i32, i32* @username_subquery, align 4
  %115 = call i32 (%struct.TYPE_25__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_25__* %113, i8* getelementptr inbounds ([391 x i8], [391 x i8]* @.str.8, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %109
  br label %117

117:                                              ; preds = %116, %77
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %123 = call i32* @ExecuteSqlQuery(%struct.TYPE_27__* %118, i32 %121, i32 %122)
  store i32* %123, i32** %6, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @PQntuples(i32* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32*, i32** %4, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 120
  %131 = trunc i64 %130 to i32
  %132 = call i64 @pg_malloc(i32 %131)
  %133 = inttoptr i64 %132 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %133, %struct.TYPE_28__** %10, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @PQfnumber(i32* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32 %135, i32* %11, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @PQfnumber(i32* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i32 %137, i32* %12, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @PQfnumber(i32* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i32 %139, i32* %13, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @PQfnumber(i32* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i32 %141, i32* %14, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @PQfnumber(i32* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  store i32 %143, i32* %15, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @PQfnumber(i32* %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i32 %145, i32* %16, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @PQfnumber(i32* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  store i32 %147, i32* %17, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @PQfnumber(i32* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  store i32 %149, i32* %18, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @PQfnumber(i32* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  store i32 %151, i32* %19, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @PQfnumber(i32* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  store i32 %153, i32* %20, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @PQfnumber(i32* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  store i32 %155, i32* %21, align 4
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %426, %117
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %429

160:                                              ; preds = %156
  %161 = load i32, i32* @DO_AGG, align 4
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 4
  store i32 %161, i32* %168, align 8
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @PQgetvalue(i32* %169, i32 %170, i32 %171)
  %173 = call i8* @atooid(i32 %172)
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 1
  store i8* %173, i8** %181, align 8
  %182 = load i32*, i32** %6, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @PQgetvalue(i32* %182, i32 %183, i32 %184)
  %186 = call i8* @atooid(i32 %185)
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 0
  store i8* %186, i8** %194, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 1
  %201 = call i32 @AssignDumpId(%struct.TYPE_29__* %200)
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @PQgetvalue(i32* %202, i32 %203, i32 %204)
  %206 = call i8* @pg_strdup(i32 %205)
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 1
  store i8* %206, i8** %213, align 8
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %215 = load i32*, i32** %6, align 8
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @PQgetvalue(i32* %215, i32 %216, i32 %217)
  %219 = call i8* @atooid(i32 %218)
  %220 = call i32 @findNamespace(%struct.TYPE_27__* %214, i8* %219)
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 2
  store i32 %220, i32* %227, align 8
  %228 = load i32*, i32** %6, align 8
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %17, align 4
  %231 = call i32 @PQgetvalue(i32* %228, i32 %229, i32 %230)
  %232 = call i8* @pg_strdup(i32 %231)
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 9
  store i8* %232, i8** %238, align 8
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 9
  %245 = load i8*, i8** %244, align 8
  %246 = call i64 @strlen(i8* %245)
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %160
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @pg_log_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.20, i64 0, i64 0), i8* %256)
  br label %258

258:                                              ; preds = %248, %160
  %259 = load i8*, i8** @InvalidOid, align 8
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 8
  store i8* %259, i8** %265, align 8
  %266 = load i8*, i8** @InvalidOid, align 8
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 7
  store i8* %266, i8** %272, align 8
  %273 = load i32*, i32** %6, align 8
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %18, align 4
  %276 = call i32 @PQgetvalue(i32* %273, i32 %274, i32 %275)
  %277 = call i8* @pg_strdup(i32 %276)
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 6
  store i8* %277, i8** %283, align 8
  %284 = load i32*, i32** %6, align 8
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* %19, align 4
  %287 = call i32 @PQgetvalue(i32* %284, i32 %285, i32 %286)
  %288 = call i8* @pg_strdup(i32 %287)
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 5
  store i8* %288, i8** %294, align 8
  %295 = load i32*, i32** %6, align 8
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* %20, align 4
  %298 = call i32 @PQgetvalue(i32* %295, i32 %296, i32 %297)
  %299 = call i8* @pg_strdup(i32 %298)
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 4
  store i8* %299, i8** %305, align 8
  %306 = load i32*, i32** %6, align 8
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* %21, align 4
  %309 = call i32 @PQgetvalue(i32* %306, i32 %307, i32 %308)
  %310 = call i8* @pg_strdup(i32 %309)
  %311 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 3
  store i8* %310, i8** %316, align 8
  %317 = load i32*, i32** %6, align 8
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %15, align 4
  %320 = call i32 @PQgetvalue(i32* %317, i32 %318, i32 %319)
  %321 = call i32 @atoi(i32 %320)
  %322 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 0
  store i32 %321, i32* %327, align 8
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %329 = load i32, i32* %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %258
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %338 = load i32, i32* %8, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 2
  store i32* null, i32** %342, align 8
  br label %381

343:                                              ; preds = %258
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %345 = load i32, i32* %8, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = sext i32 %350 to i64
  %352 = mul i64 %351, 4
  %353 = trunc i64 %352 to i32
  %354 = call i64 @pg_malloc(i32 %353)
  %355 = inttoptr i64 %354 to i32*
  %356 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %360, i32 0, i32 2
  store i32* %355, i32** %361, align 8
  %362 = load i32*, i32** %6, align 8
  %363 = load i32, i32* %8, align 4
  %364 = load i32, i32* %16, align 4
  %365 = call i32 @PQgetvalue(i32* %362, i32 %363, i32 %364)
  %366 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %367 = load i32, i32* %8, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 2
  %372 = load i32*, i32** %371, align 8
  %373 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %374 = load i32, i32* %8, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @parseOidArray(i32 %365, i32* %372, i32 %379)
  br label %381

381:                                              ; preds = %343, %336
  %382 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %386, i32 0, i32 1
  %388 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %389 = call i32 @selectDumpableObject(%struct.TYPE_29__* %387, %struct.TYPE_27__* %388)
  %390 = load i32*, i32** %6, align 8
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* %18, align 4
  %393 = call i64 @PQgetisnull(i32* %390, i32 %391, i32 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %425

395:                                              ; preds = %381
  %396 = load i32*, i32** %6, align 8
  %397 = load i32, i32* %8, align 4
  %398 = load i32, i32* %19, align 4
  %399 = call i64 @PQgetisnull(i32* %396, i32 %397, i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %425

401:                                              ; preds = %395
  %402 = load i32*, i32** %6, align 8
  %403 = load i32, i32* %8, align 4
  %404 = load i32, i32* %20, align 4
  %405 = call i64 @PQgetisnull(i32* %402, i32 %403, i32 %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %425

407:                                              ; preds = %401
  %408 = load i32*, i32** %6, align 8
  %409 = load i32, i32* %8, align 4
  %410 = load i32, i32* %21, align 4
  %411 = call i64 @PQgetisnull(i32* %408, i32 %409, i32 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %425

413:                                              ; preds = %407
  %414 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %415 = xor i32 %414, -1
  %416 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %417 = load i32, i32* %8, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = and i32 %423, %415
  store i32 %424, i32* %422, align 8
  br label %425

425:                                              ; preds = %413, %407, %401, %395, %381
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %8, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %8, align 4
  br label %156

429:                                              ; preds = %156
  %430 = load i32*, i32** %6, align 8
  %431 = call i32 @PQclear(i32* %430)
  %432 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %433 = call i32 @destroyPQExpBuffer(%struct.TYPE_25__* %432)
  %434 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  ret %struct.TYPE_28__* %434
}

declare dso_local %struct.TYPE_25__* @createPQExpBuffer(...) #1

declare dso_local i32 @buildACLQueries(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i8*, i8*, i8*, i64) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_25__*, i8*, i32, ...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_25__*, i8 signext) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_25__*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_29__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @findNamespace(%struct.TYPE_27__*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pg_log_warning(i8*, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @parseOidArray(i32, i32*, i32) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_29__*, %struct.TYPE_27__*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
