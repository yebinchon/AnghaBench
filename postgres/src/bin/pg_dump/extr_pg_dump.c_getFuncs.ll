; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getFuncs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getFuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_27__, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_27__ = type { i8*, i32, i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i8*, i8* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_23__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"p.proacl\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"p.proowner\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"'f'\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"p.prokind <> 'a'\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"NOT p.proisagg\00", align 1
@.str.5 = private unnamed_addr constant [775 x i8] c"SELECT p.tableoid, p.oid, p.proname, p.prolang, p.pronargs, p.proargtypes, p.prorettype, %s AS proacl, %s AS rproacl, %s AS initproacl, %s AS initrproacl, p.pronamespace, (%s p.proowner) AS rolname FROM pg_proc p LEFT JOIN pg_init_privs pip ON (p.oid = pip.objoid AND pip.classoid = 'pg_proc'::regclass AND pip.objsubid = 0) WHERE %s\0A  AND NOT EXISTS (SELECT 1 FROM pg_depend WHERE classid = 'pg_proc'::regclass AND objid = p.oid AND deptype = 'i')\0A  AND (\0A  pronamespace != (SELECT oid FROM pg_namespace WHERE nspname = 'pg_catalog')\0A  OR EXISTS (SELECT 1 FROM pg_cast\0A  WHERE pg_cast.oid > %u \0A  AND p.oid = pg_cast.castfunc)\0A  OR EXISTS (SELECT 1 FROM pg_transform\0A  WHERE pg_transform.oid > %u AND \0A  (p.oid = pg_transform.trffromsql\0A  OR p.oid = pg_transform.trftosql))\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@g_last_builtin_oid = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [152 x i8] c"\0A  OR EXISTS(SELECT 1 FROM pg_depend WHERE classid = 'pg_proc'::regclass AND objid = p.oid AND refclassid = 'pg_extension'::regclass AND deptype = 'e')\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\0A  OR p.proacl IS DISTINCT FROM pip.initprivs\00", align 1
@.str.8 = private unnamed_addr constant [214 x i8] c"SELECT tableoid, oid, proname, prolang, pronargs, proargtypes, prorettype, proacl, NULL as rproacl, NULL as initproacl, NULL AS initrproacl, pronamespace, (%s proowner) AS rolname FROM pg_proc p WHERE NOT proisagg\00", align 1
@.str.9 = private unnamed_addr constant [116 x i8] c"\0A  AND NOT EXISTS (SELECT 1 FROM pg_depend WHERE classid = 'pg_proc'::regclass AND objid = p.oid AND deptype = 'i')\00", align 1
@.str.10 = private unnamed_addr constant [186 x i8] c"\0A  AND (\0A  pronamespace != (SELECT oid FROM pg_namespace WHERE nspname = 'pg_catalog')\0A  OR EXISTS (SELECT 1 FROM pg_cast\0A  WHERE pg_cast.oid > '%u'::oid\0A  AND p.oid = pg_cast.castfunc)\00", align 1
@.str.11 = private unnamed_addr constant [154 x i8] c"\0A  OR EXISTS (SELECT 1 FROM pg_transform\0A  WHERE pg_transform.oid > '%u'::oid\0A  AND (p.oid = pg_transform.trffromsql\0A  OR p.oid = pg_transform.trftosql))\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"proname\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"pronamespace\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"prolang\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"pronargs\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"proargtypes\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"prorettype\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"proacl\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"rproacl\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"initproacl\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"initrproacl\00", align 1
@DO_FUNC = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [45 x i8] c"owner of function \22%s\22 appears to be invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @getFuncs(%struct.TYPE_26__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_23__*, align 8
  %25 = alloca %struct.TYPE_23__*, align 8
  %26 = alloca %struct.TYPE_23__*, align 8
  %27 = alloca %struct.TYPE_23__*, align 8
  %28 = alloca i8*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i32* %1, i32** %4, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  store %struct.TYPE_25__* %31, %struct.TYPE_25__** %5, align 8
  %32 = call %struct.TYPE_23__* (...) @createPQExpBuffer()
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %9, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 90600
  br i1 %36, label %37, label %94

37:                                               ; preds = %2
  %38 = call %struct.TYPE_23__* (...) @createPQExpBuffer()
  store %struct.TYPE_23__* %38, %struct.TYPE_23__** %24, align 8
  %39 = call %struct.TYPE_23__* (...) @createPQExpBuffer()
  store %struct.TYPE_23__* %39, %struct.TYPE_23__** %25, align 8
  %40 = call %struct.TYPE_23__* (...) @createPQExpBuffer()
  store %struct.TYPE_23__* %40, %struct.TYPE_23__** %26, align 8
  %41 = call %struct.TYPE_23__* (...) @createPQExpBuffer()
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %27, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @buildACLQueries(%struct.TYPE_23__* %42, %struct.TYPE_23__* %43, %struct.TYPE_23__* %44, %struct.TYPE_23__* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %52, 110000
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)
  store i8* %55, i8** %28, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @username_subquery, align 4
  %70 = load i8*, i8** %28, align 8
  %71 = load i32, i32* @g_last_builtin_oid, align 4
  %72 = load i32, i32* @g_last_builtin_oid, align 4
  %73 = call i32 (%struct.TYPE_23__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_23__* %56, i8* getelementptr inbounds ([775 x i8], [775 x i8]* @.str.5, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %68, i32 %69, i8* %70, i32 %71, i32 %72)
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %37
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %80 = call i32 @appendPQExpBufferStr(%struct.TYPE_23__* %79, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.6, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %37
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %83 = call i32 @appendPQExpBufferStr(%struct.TYPE_23__* %82, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %85 = call i32 @appendPQExpBufferChar(%struct.TYPE_23__* %84, i8 signext 41)
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %87 = call i32 @destroyPQExpBuffer(%struct.TYPE_23__* %86)
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %89 = call i32 @destroyPQExpBuffer(%struct.TYPE_23__* %88)
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %91 = call i32 @destroyPQExpBuffer(%struct.TYPE_23__* %90)
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %93 = call i32 @destroyPQExpBuffer(%struct.TYPE_23__* %92)
  br label %133

94:                                               ; preds = %2
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %96 = load i32, i32* @username_subquery, align 4
  %97 = call i32 (%struct.TYPE_23__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_23__* %95, i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %100, 90200
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %104 = call i32 @appendPQExpBufferStr(%struct.TYPE_23__* %103, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.9, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %94
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %107 = load i32, i32* @g_last_builtin_oid, align 4
  %108 = call i32 (%struct.TYPE_23__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_23__* %106, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.10, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %111, 90500
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %115 = load i32, i32* @g_last_builtin_oid, align 4
  %116 = call i32 (%struct.TYPE_23__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_23__* %114, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.11, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %113, %105
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %125, 90100
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %129 = call i32 @appendPQExpBufferStr(%struct.TYPE_23__* %128, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.6, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %122, %117
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %132 = call i32 @appendPQExpBufferChar(%struct.TYPE_23__* %131, i8 signext 41)
  br label %133

133:                                              ; preds = %130, %81
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %139 = call i32* @ExecuteSqlQuery(%struct.TYPE_26__* %134, i32 %137, i32 %138)
  store i32* %139, i32** %6, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @PQntuples(i32* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32*, i32** %4, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 112
  %147 = trunc i64 %146 to i32
  %148 = call i64 @pg_malloc0(i32 %147)
  %149 = inttoptr i64 %148 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %149, %struct.TYPE_24__** %10, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @PQfnumber(i32* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i32 %151, i32* %11, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @PQfnumber(i32* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  store i32 %153, i32* %12, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @PQfnumber(i32* %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  store i32 %155, i32* %13, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @PQfnumber(i32* %156, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  store i32 %157, i32* %14, align 4
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @PQfnumber(i32* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  store i32 %159, i32* %15, align 4
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @PQfnumber(i32* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  store i32 %161, i32* %16, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = call i32 @PQfnumber(i32* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  store i32 %163, i32* %17, align 4
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @PQfnumber(i32* %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  store i32 %165, i32* %18, align 4
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 @PQfnumber(i32* %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  store i32 %167, i32* %19, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @PQfnumber(i32* %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  store i32 %169, i32* %20, align 4
  %170 = load i32*, i32** %6, align 8
  %171 = call i32 @PQfnumber(i32* %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  store i32 %171, i32* %21, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @PQfnumber(i32* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  store i32 %173, i32* %22, align 4
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @PQfnumber(i32* %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  store i32 %175, i32* %23, align 4
  store i32 0, i32* %8, align 4
  br label %176

176:                                              ; preds = %430, %133
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %433

180:                                              ; preds = %176
  %181 = load i32, i32* @DO_FUNC, align 4
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 4
  store i32 %181, i32* %187, align 8
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @PQgetvalue(i32* %188, i32 %189, i32 %190)
  %192 = call i8* @atooid(i32 %191)
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  store i8* %192, i8** %199, align 8
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @PQgetvalue(i32* %200, i32 %201, i32 %202)
  %204 = call i8* @atooid(i32 %203)
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  store i8* %204, i8** %211, align 8
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 1
  %217 = call i32 @AssignDumpId(%struct.TYPE_27__* %216)
  %218 = load i32*, i32** %6, align 8
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @PQgetvalue(i32* %218, i32 %219, i32 %220)
  %222 = call i8* @pg_strdup(i32 %221)
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 0
  store i8* %222, i8** %228, align 8
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %14, align 4
  %233 = call i32 @PQgetvalue(i32* %230, i32 %231, i32 %232)
  %234 = call i8* @atooid(i32 %233)
  %235 = call i32 @findNamespace(%struct.TYPE_26__* %229, i8* %234)
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 2
  store i32 %235, i32* %241, align 4
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @PQgetvalue(i32* %242, i32 %243, i32 %244)
  %246 = call i8* @pg_strdup(i32 %245)
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 2
  store i8* %246, i8** %251, align 8
  %252 = load i32*, i32** %6, align 8
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %16, align 4
  %255 = call i32 @PQgetvalue(i32* %252, i32 %253, i32 %254)
  %256 = call i8* @atooid(i32 %255)
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 9
  store i8* %256, i8** %261, align 8
  %262 = load i32*, i32** %6, align 8
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* %19, align 4
  %265 = call i32 @PQgetvalue(i32* %262, i32 %263, i32 %264)
  %266 = call i8* @atooid(i32 %265)
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 8
  store i8* %266, i8** %271, align 8
  %272 = load i32*, i32** %6, align 8
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* %20, align 4
  %275 = call i32 @PQgetvalue(i32* %272, i32 %273, i32 %274)
  %276 = call i8* @pg_strdup(i32 %275)
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 7
  store i8* %276, i8** %281, align 8
  %282 = load i32*, i32** %6, align 8
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* %21, align 4
  %285 = call i32 @PQgetvalue(i32* %282, i32 %283, i32 %284)
  %286 = call i8* @pg_strdup(i32 %285)
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 6
  store i8* %286, i8** %291, align 8
  %292 = load i32*, i32** %6, align 8
  %293 = load i32, i32* %8, align 4
  %294 = load i32, i32* %22, align 4
  %295 = call i32 @PQgetvalue(i32* %292, i32 %293, i32 %294)
  %296 = call i8* @pg_strdup(i32 %295)
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 5
  store i8* %296, i8** %301, align 8
  %302 = load i32*, i32** %6, align 8
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* %23, align 4
  %305 = call i32 @PQgetvalue(i32* %302, i32 %303, i32 %304)
  %306 = call i8* @pg_strdup(i32 %305)
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 4
  store i8* %306, i8** %311, align 8
  %312 = load i32*, i32** %6, align 8
  %313 = load i32, i32* %8, align 4
  %314 = load i32, i32* %17, align 4
  %315 = call i32 @PQgetvalue(i32* %312, i32 %313, i32 %314)
  %316 = call i32 @atoi(i32 %315)
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 0
  store i32 %316, i32* %321, align 8
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %180
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %331 = load i32, i32* %8, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %333, i32 0, i32 3
  store i32* null, i32** %334, align 8
  br label %369

335:                                              ; preds = %180
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = sext i32 %341 to i64
  %343 = mul i64 %342, 4
  %344 = trunc i64 %343 to i32
  %345 = call i64 @pg_malloc(i32 %344)
  %346 = inttoptr i64 %345 to i32*
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %348 = load i32, i32* %8, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 3
  store i32* %346, i32** %351, align 8
  %352 = load i32*, i32** %6, align 8
  %353 = load i32, i32* %8, align 4
  %354 = load i32, i32* %18, align 4
  %355 = call i32 @PQgetvalue(i32* %352, i32 %353, i32 %354)
  %356 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 3
  %361 = load i32*, i32** %360, align 8
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %363 = load i32, i32* %8, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = call i32 @parseOidArray(i32 %355, i32* %361, i32 %367)
  br label %369

369:                                              ; preds = %335, %329
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %371 = load i32, i32* %8, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %373, i32 0, i32 1
  %375 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %376 = call i32 @selectDumpableObject(%struct.TYPE_27__* %374, %struct.TYPE_26__* %375)
  %377 = load i32*, i32** %6, align 8
  %378 = load i32, i32* %8, align 4
  %379 = load i32, i32* %20, align 4
  %380 = call i64 @PQgetisnull(i32* %377, i32 %378, i32 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %411

382:                                              ; preds = %369
  %383 = load i32*, i32** %6, align 8
  %384 = load i32, i32* %8, align 4
  %385 = load i32, i32* %21, align 4
  %386 = call i64 @PQgetisnull(i32* %383, i32 %384, i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %411

388:                                              ; preds = %382
  %389 = load i32*, i32** %6, align 8
  %390 = load i32, i32* %8, align 4
  %391 = load i32, i32* %22, align 4
  %392 = call i64 @PQgetisnull(i32* %389, i32 %390, i32 %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %411

394:                                              ; preds = %388
  %395 = load i32*, i32** %6, align 8
  %396 = load i32, i32* %8, align 4
  %397 = load i32, i32* %23, align 4
  %398 = call i64 @PQgetisnull(i32* %395, i32 %396, i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %411

400:                                              ; preds = %394
  %401 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %402 = xor i32 %401, -1
  %403 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %404 = load i32, i32* %8, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = and i32 %409, %402
  store i32 %410, i32* %408, align 8
  br label %411

411:                                              ; preds = %400, %394, %388, %382, %369
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %413 = load i32, i32* %8, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %415, i32 0, i32 2
  %417 = load i8*, i8** %416, align 8
  %418 = call i64 @strlen(i8* %417)
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %420, label %429

420:                                              ; preds = %411
  %421 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %422 = load i32, i32* %8, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %425, i32 0, i32 0
  %427 = load i8*, i8** %426, align 8
  %428 = call i32 @pg_log_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i8* %427)
  br label %429

429:                                              ; preds = %420, %411
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %8, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %8, align 4
  br label %176

433:                                              ; preds = %176
  %434 = load i32*, i32** %6, align 8
  %435 = call i32 @PQclear(i32* %434)
  %436 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %437 = call i32 @destroyPQExpBuffer(%struct.TYPE_23__* %436)
  %438 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  ret %struct.TYPE_24__* %438
}

declare dso_local %struct.TYPE_23__* @createPQExpBuffer(...) #1

declare dso_local i32 @buildACLQueries(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i8*, i8*, i8*, i64) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_23__*, i8*, i32, ...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_23__*, i8 signext) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_23__*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc0(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_27__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @findNamespace(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @parseOidArray(i32, i32*, i32) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

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
